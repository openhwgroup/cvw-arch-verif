///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sub.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.515415
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xf41e6a8d35714fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xae8abeaa18737a65 # initialize rs1
li x9, 0x66a10bf786514c74 # initialize rs2
sub x0, x6, x9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa01c722215bfcea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf83da7e2bce24218 # initialize rs1
li x25, 0x361f6abf9fb9f789 # initialize rs2
sub x1, x8, x25 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8a29585151361f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc09be5078e6086df # initialize rs1
li x24, 0xf0e57b17fa9b0175 # initialize rs2
sub x2, x16, x24 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x649f4fcdff46912c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe2cc227524d5e46a # initialize rs1
li x26, 0x6050f19ace496d6b # initialize rs2
sub x3, x8, x26 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x9f8a6c4a511cb8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2d22346dbb75376d # initialize rs1
li x23, 0x02b81fd3fa6d37e6 # initialize rs2
sub x4, x19, x23 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x46019c89efca6b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd6cfea7fc780a5e2 # initialize rs1
li x9, 0x5f1fae6933d40097 # initialize rs2
sub x5, x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa3075d7903d1f19d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xae0f179306cb0192 # initialize rs1
li x26, 0x5e262c0c0ef9184c # initialize rs2
sub x6, x28, x26 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x035b46769d5358e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe3ac756374015162 # initialize rs1
li x25, 0x6b2856b8c7183bc2 # initialize rs2
sub x7, x20, x25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3ebe13a56cbba74f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcb41771d8028e448 # initialize rs1
li x7, 0x425aec3ac4af7e4a # initialize rs2
sub x8, x15, x7 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x04c444fe99b68548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x341d40156f6b623f # initialize rs1
li x6, 0xb4d468a7c1f0dee6 # initialize rs2
sub x9, x2, x6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaacea4890a8ddbad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x06b11eae4c7bd04a # initialize rs1
li x7, 0x30e62b5aef5fe1b9 # initialize rs2
sub x10, x12, x7 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6b5d6bbda0de65a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xabf7a440509d4ad2 # initialize rs1
li x30, 0x87fff9353e480bb5 # initialize rs2
sub x11, x9, x30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xef8df6da80d8c1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5cb92a1373d424b5 # initialize rs1
li x31, 0xf6edd642a0cbfe40 # initialize rs2
sub x12, x27, x31 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x80725ccad71d3c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa1857647143d8a3f # initialize rs1
li x23, 0x3fc49ac6b3d3e6e9 # initialize rs2
sub x13, x11, x23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfa5380a906a5fcb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xebe38ceb24721a08 # initialize rs1
li x24, 0x1649bdce2995fa0c # initialize rs2
sub x14, x30, x24 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x87e254525122d730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b694d161e3514d2 # initialize rs1
li x29, 0xf42b20139864b772 # initialize rs2
sub x15, x9, x29 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x7b24b8bc6eed0a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7329f6c8311f9731 # initialize rs1
li x3, 0x3dc12392a6784005 # initialize rs2
sub x16, x28, x3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa165fb78fb4d821d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2ea8ecbcbeb78553 # initialize rs1
li x27, 0xc633ebb91bfe26fb # initialize rs2
sub x17, x25, x27 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x32a7d10cdbc7fe4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x390d2c95ec2e82d2 # initialize rs1
li x15, 0x88e0c6e68b77cde7 # initialize rs2
sub x18, x25, x15 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd73a6cbace4a6ee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4c868598afb24654 # initialize rs1
li x10, 0xef2b77679c8c0770 # initialize rs2
sub x19, x19, x10 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd2c5c82fe08eb52e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3e2f4d107f23cd26 # initialize rs1
li x30, 0xf991dd403d108314 # initialize rs2
sub x20, x12, x30 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc25a0ae70074aeed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf97ccbb29e1dfaa8 # initialize rs1
li x20, 0x94d191e8445b01c3 # initialize rs2
sub x21, x27, x20 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8ee9213881e2e931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa6ff9e862d58173e # initialize rs1
li x13, 0xbbbeff3e63e8beb8 # initialize rs2
sub x22, x20, x13 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x89ee615d8ec1ca36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xab24cacbe9da2b3a # initialize rs1
li x16, 0x729abee44b3d0666 # initialize rs2
sub x23, x9, x16 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xed9ad8ea690e176e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd336b986ca67860b # initialize rs1
li x17, 0xdaf0b91dd2448329 # initialize rs2
sub x24, x31, x17 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0bdc2ede03eb94fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa8a4403193a01c47 # initialize rs1
li x20, 0x6eb951ee32e19e4f # initialize rs2
sub x25, x28, x20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xdcd4021a6a8a50d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe0651e90e2338aed # initialize rs1
li x5, 0x4177565a17b57caa # initialize rs2
sub x26, x20, x5 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3310c2a90706077f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0548c568819b0d33 # initialize rs1
li x13, 0xa511b757c21f7f4f # initialize rs2
sub x27, x16, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf420a32751a15df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf14d09b2547cd859 # initialize rs1
li x16, 0xfbecfbf8c04100db # initialize rs2
sub x28, x23, x16 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x5467084ba6598e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfb3471ffb11142d8 # initialize rs1
li x25, 0xb90bbc2c12c96d55 # initialize rs2
sub x29, x5, x25 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf3e89238ea82c8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd5b41a82c13171c3 # initialize rs1
li x15, 0x75fbbd340d795f77 # initialize rs2
sub x30, x1, x15 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7155f6d507862971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x66c1024b4e1d64f1 # initialize rs1
li x6, 0xfb25332be7b5892a # initialize rs2
sub x31, x15, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x27, 0x3359a7e2de38512a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x365fe52d22bdd938 # initialize rs1
li x2, 0x62f30c8b38df333d # initialize rs2
sub x27, x0, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x17, 0xb64e78aa6c069079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd273d57f02a70541 # initialize rs1
li x19, 0xa55f373e404267a4 # initialize rs2
sub x17, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0x8d5544e1cd41df1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x537f5613c3c1182a # initialize rs1
li x26, 0xced771c85501bba3 # initialize rs2
sub x20, x2, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x77d984b6b53ada0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6d4e82e1368791d5 # initialize rs1
li x22, 0x66779e6700cd448c # initialize rs2
sub x6, x3, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0x3ba38945f430af7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x558db7d84af5e727 # initialize rs1
li x3, 0xf374aff6bf3a0ba6 # initialize rs2
sub x29, x4, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x28, 0x8fef129e16198331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf44980b96c9acfd6 # initialize rs1
li x10, 0x3472a07b139d91c5 # initialize rs2
sub x28, x5, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x32df49810b1c98d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc60a872ffbc25729 # initialize rs1
li x2, 0xf603fc9c1c2ba7ff # initialize rs2
sub x3, x6, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x48a2aa85d9b29d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x342378f53f508f1a # initialize rs1
li x6, 0xf62fdec5db0a5116 # initialize rs2
sub x30, x7, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x20, 0x37b6ab67bfc90cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd85529c0246973d2 # initialize rs1
li x1, 0x9224955b15729e25 # initialize rs2
sub x20, x8, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xa717bf9dd46d2b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2fe9268f450dbcd1 # initialize rs1
li x16, 0x2d1807883b1fa717 # initialize rs2
sub x8, x9, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x4a8ed250519f71f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x74f85bcbb338c404 # initialize rs1
li x15, 0x1f6e592de0fcdf7d # initialize rs2
sub x9, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0xec5e31e71375e3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd8a34a121e735c60 # initialize rs1
li x7, 0x9c21c19767429ce9 # initialize rs2
sub x29, x11, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x3b0573967f18c51c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe074b8ebcf34dd0d # initialize rs1
li x27, 0x133a678de118acf6 # initialize rs2
sub x6, x12, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0xf8f347fa95c8d73c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbb3c0536eda9ccb9 # initialize rs1
li x15, 0xff08db72e2b7a19d # initialize rs2
sub x4, x13, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x756b2ebc30660eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x296433a08f6ba4ad # initialize rs1
li x9, 0x823cdca26ff6b3b9 # initialize rs2
sub x7, x14, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xa665cc9dfa102550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x631f8a84008e64a5 # initialize rs1
li x26, 0x0757a2eaa67ac389 # initialize rs2
sub x12, x15, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x52b19cd0d2cd2940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x17a2b5c8c49c517c # initialize rs1
li x30, 0x7de88a3b397f25a4 # initialize rs2
sub x1, x16, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0x992f277fa547d8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6d4e65eadde8a066 # initialize rs1
li x11, 0x178c722408440555 # initialize rs2
sub x31, x17, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xd84acb8c50fbc0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x17322ef91b2de9da # initialize rs1
li x1, 0xca2db51798af7a66 # initialize rs2
sub x20, x18, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x5, 0xbb6ced93fe3e7adb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x91cda51be776263a # initialize rs1
li x2, 0xfeaf0140d14c1a70 # initialize rs2
sub x5, x19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x7, 0x5165432c826eb640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x757078976604b74c # initialize rs1
li x31, 0xb83d4a68d94bbf96 # initialize rs2
sub x7, x20, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0x673375a47fb2e94f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x23da607ff2fd6fed # initialize rs1
li x6, 0xae3c8e3057efe8de # initialize rs2
sub x10, x21, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x10, 0xf75654f2d0743090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbf45fc420ee52b42 # initialize rs1
li x13, 0x0b2409c3fc41dcf5 # initialize rs2
sub x10, x22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0xbc70a36a1833511c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0f917873a854f005 # initialize rs1
li x9, 0xc8536a65cd7c0abc # initialize rs2
sub x27, x23, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0xfd1eeb1b82cca493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x891b301269bc7f29 # initialize rs1
li x29, 0x914af22b98b35e6e # initialize rs2
sub x14, x24, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0xb2f87274635a8b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x68d43cc5b7b9b4b4 # initialize rs1
li x2, 0x2166d56835e5566b # initialize rs2
sub x10, x25, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x15, 0xb8cf8660e5c7525f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5428b1411e6296aa # initialize rs1
li x30, 0xdd475b6cba6ccf05 # initialize rs2
sub x15, x26, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x28, 0xd6f64a5c87462aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2e2cf6be6379b023 # initialize rs1
li x30, 0x15eb3190775aaeec # initialize rs2
sub x28, x27, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x5d0b18312639cb5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3f25fd716f84530f # initialize rs1
li x1, 0xb7abb9345c77513f # initialize rs2
sub x11, x28, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x8bb6a0fabcdc652d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa009d301ad633f21 # initialize rs1
li x25, 0xaca3ee4130c93a2b # initialize rs2
sub x16, x29, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x7f7c0d3c670a8c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x16baf57b90c98698 # initialize rs1
li x14, 0x18d4a4547d9390e3 # initialize rs2
sub x25, x30, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0x2ce707a07bdd953e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2e6654b9c02e81c2 # initialize rs1
li x29, 0x095b842af9e89640 # initialize rs2
sub x11, x31, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x16, 0xe25b3e735933f33d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf6b6b1fd69f96220 # initialize rs1
li x0, 0x91c8a0fe506ee195 # initialize rs2
sub x16, x30, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x2, 0xa303927c04be3700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8de9456ad542f088 # initialize rs1
li x1, 0x190d88bff953d473 # initialize rs2
sub x2, x29, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0xa05e73fd2b56e4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7c00f2503bced851 # initialize rs1
li x2, 0x29a9f61cfb9c23f7 # initialize rs2
sub x29, x21, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x29f9621d8159fe29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x01f36f4862d1520f # initialize rs1
li x3, 0x728d5573c544b635 # initialize rs2
sub x23, x12, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0xc401e8e78e706c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9d6f1c33df699f78 # initialize rs1
li x4, 0xbc280ceca7979a35 # initialize rs2
sub x17, x2, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x31, 0x42618d920d6a3035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x50beaeb5de6ecf22 # initialize rs1
li x5, 0x62ab70ace4981485 # initialize rs2
sub x31, x15, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0x7a55a29bf0265bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3e76c97ee9eecd3b # initialize rs1
li x6, 0xa82798a287b407d0 # initialize rs2
sub x21, x19, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x26, 0xb04f64ce208a83fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3ab39491c9d6c581 # initialize rs1
li x7, 0xe7e294d12049384d # initialize rs2
sub x26, x24, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0x8ba925fe4cbb53bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x773d433d57b62255 # initialize rs1
li x8, 0x97efe2bd05ad05e6 # initialize rs2
sub x6, x12, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0xe042d10afedcf066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x54357f00ec90ee58 # initialize rs1
li x9, 0x5e1d2667f4806d6c # initialize rs2
sub x25, x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x02cffaba2954eaa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xece632534b5eac0c # initialize rs1
li x10, 0x350c218c2ad4b9fc # initialize rs2
sub x26, x12, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x0dd141272e746a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x41a0a57aa8a0472b # initialize rs1
li x11, 0x7731f442dc487c00 # initialize rs2
sub x5, x29, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x79b92bca47e904a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x26a4fbe3ce04fe5d # initialize rs1
li x12, 0x55db076329ca13f5 # initialize rs2
sub x28, x27, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0x21a7f07793487f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x57e8799b8d895c94 # initialize rs1
li x13, 0x429484568aef66cf # initialize rs2
sub x7, x1, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x20, 0x75b4b5cce9626f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe1ff3f042c071e65 # initialize rs1
li x14, 0xad7ffa82bb1089f6 # initialize rs2
sub x20, x8, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0xdce31d8e2354a2da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9aa9f0a4ca84db4 # initialize rs1
li x15, 0xa370f8035694d20a # initialize rs2
sub x9, x1, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x1fcd0e5866156bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1669e3152e263260 # initialize rs1
li x16, 0x1d14f8e7d9eb5d02 # initialize rs2
sub x23, x30, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0xb15259d05fcc2c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9222b6b73b32dcc8 # initialize rs1
li x17, 0x9b2e7b6192d48f8c # initialize rs2
sub x18, x5, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0xb1535c821276e192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x66584bcbdcf39722 # initialize rs1
li x18, 0x54ed58e2e632c47e # initialize rs2
sub x2, x11, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0x3ffef8a2a7f240fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc5940e6ac847cc2f # initialize rs1
li x19, 0x8a2cbf9aee45632a # initialize rs2
sub x16, x31, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0x2b417b4684eaba48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2e4a8b555af95b7e # initialize rs1
li x20, 0x1a3ba9278aa2a788 # initialize rs2
sub x6, x15, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x3, 0x3d7778454087f436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7bd6e1127e2a6f99 # initialize rs1
li x21, 0xdbcfe604c9fe79af # initialize rs2
sub x3, x2, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x82783f2f30b52965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x202367cb3963e943 # initialize rs1
li x22, 0xad596700f7912395 # initialize rs2
sub x6, x19, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x28, 0xba93aaf01edeb1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb6f6c0e5f06172be # initialize rs1
li x23, 0x6176ee10d735d58a # initialize rs2
sub x28, x29, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0xc9a7bc6c72d38d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1597fd41a08169f5 # initialize rs1
li x24, 0x5a3a5ef98637e9ba # initialize rs2
sub x28, x9, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0x5f2ddffe8d949f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4ed888d0b0f8693b # initialize rs1
li x25, 0xae7ed51a287e0743 # initialize rs2
sub x20, x16, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0xcf75bd3e2fd292a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x868786c7faf25d84 # initialize rs1
li x26, 0x24ccaba47772bea0 # initialize rs2
sub x17, x30, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0x8c16cb96b9229ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2fd3959475e8827d # initialize rs1
li x27, 0x3dc48404ad00b93e # initialize rs2
sub x20, x28, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0x9061fef90724709e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7a6f491b6849ddbf # initialize rs1
li x28, 0x551887d166b1b68d # initialize rs2
sub x20, x23, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0xae1c80e1fe65b20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdb47177f0e77681f # initialize rs1
li x29, 0xa1e1ba9880412eab # initialize rs2
sub x24, x9, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x19ff265241ad4cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x82223e3c88d6399c # initialize rs1
li x30, 0xf3eb3530b9e8ce47 # initialize rs2
sub x4, x22, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0x15ff5310f8a596db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4fff647b15eeaea1 # initialize rs1
li x31, 0x3c502e705e58fc8f # initialize rs2
sub x27, x8, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x8508ffd4a675908b)
li x3, 0xfcc57de3ccbea0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfcc57de3ccbea0ae # initialize rs1
li x0, 0x92dba5f6da8d9168 # initialize rs2
sub x3, x20, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x34a4110228f5efee)
li x28, 0x34a4110228f5efee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x34a4110228f5efee # initialize rs1
li x16, 0x34a4110228f5efee # initialize rs2
sub x28, x0, x16 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe54f38c67f74e2c3)
li x26, 0x236911caef8999a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe54f38c67f74e2c3 # initialize rs1
li x24, 0xe54f38c67f74e2c3 # initialize rs2
sub x26, x8, x24 # perform operation

# Testcase cmp_gpr_hazard raw test
sub x11, x4, x23 # perform first operation
sub x7, x11, x18 # perform second operation

# Testcase cmp_gpr_hazard raw test
sub x19, x25, x21 # perform first operation
sub x28, x26, x19 # perform second operation

# Testcase cmp_gpr_hazard waw test
sub x14, x11, x4 # perform first operation
sub x14, x4, x15 # perform second operation

# Testcase cmp_gpr_hazard waw test
sub x30, x7, x10 # perform first operation
sub x30, x5, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
sub x21, x10, x11 # perform first operation
sub x10, x20, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
sub x7, x14, x17 # perform first operation
sub x17, x25, x26 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x23fc4a485c5560e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x0, 0x1bbb7607a4e80942 # initialize rs2
sub x18, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0x4f509fa99986b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sub x7, x8, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xcf7df03378c9d1bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sub x17, x12, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x390186ca2fa47f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x0, 0x9ddc95e54e21c21d # initialize rs2
sub x30, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xd9415acc766e04fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sub x19, x2, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x7dbc63bd1daa2407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sub x8, x28, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xec4b356bf9a833a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x0, 0xf3617687e558a520 # initialize rs2
sub x16, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x711a7507486a1ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sub x25, x26, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x0dcfd4fe26ec567b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sub x18, x14, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x31, 0xf43d99ecae7f52b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x0, 0x9bd7bf96f2b5dedc # initialize rs2
sub x31, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0xde789461cf0e92f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sub x12, x27, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x11, 0xac81b370fd54c407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sub x11, x29, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x16, 0x3c17a0bb3dc86dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x0, 0xd6b2547b519e071b # initialize rs2
sub x16, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x17, 0x882047f75da1028d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sub x17, x4, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x3229a5b1b40465bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sub x27, x5, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x18, 0x9e1ed71fba2300bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x0, 0xb2dab33d062a8cf8 # initialize rs2
sub x18, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0xef405e4e7c929b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sub x23, x14, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x29, 0xaf7ae7051ef252b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sub x29, x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x1, 0x18eccabaf944a7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x0, 0xff74904dd8cd7147 # initialize rs2
sub x1, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x22, 0x1e15ff1657b5eee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sub x22, x7, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x24, 0xe6947065aafce586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sub x24, x22, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0xc07d79ee054342f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x0, 0x3532560f71c6a284 # initialize rs2
sub x22, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x20, 0xaf70909a90d68e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sub x20, x26, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x27, 0xa3c7e3bead0e0aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sub x27, x1, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x25, 0x6ca6b51abd8f60b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x0, 0xa219fca53f1fc52c # initialize rs2
sub x25, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x14, 0xcfbcc4b6d89b2c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sub x14, x22, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x69c097804bf58d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sub x17, x1, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x16, 0x62224aa0c0991ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x19adae406d834133 # initialize rs2
sub x16, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x19, 0x71c1f867dd01e8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
sub x19, x7, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x19, 0x816eee3e3067af83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
sub x19, x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x9e7b2d531f847962 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x899e43190f128ea4 # initialize rs2
sub x9, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x2a1d066a0f48fcad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x18, x28, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x2, 0x22cf812170ecc6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x2, x19, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x8, 0x67bd7155acb57d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x0, 0x69d77494258faf5a # initialize rs2
sub x8, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0x5205d80e99cf0096 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sub x23, x14, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x15, 0xe30f915c3cafac6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sub x15, x28, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x427395b6075c5e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x0, 0x3bea0de426a9cf83 # initialize rs2
sub x24, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x551dd26de016e17f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sub x20, x8, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x639644da8c6a349e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sub x2, x27, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x8850387a39033d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x0, 0xae4830ec153522ef # initialize rs2
sub x29, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x8a507b4beb3dc52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sub x8, x4, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0x776aa2f14682a6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sub x23, x22, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xf9ac90752ad20fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x0, 0xb719137305240cdb # initialize rs2
sub x5, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x28, 0x7d22e38d0b0f6f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sub x28, x10, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x28, 0xf69ce6b4ffb38091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sub x28, x17, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x9, 0xa96a1c5022798ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x0, 0x25d0ee7e1f522f15 # initialize rs2
sub x9, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x15, 0x38a5000aef7afa7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sub x15, x14, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x7, 0xd6d20fb9e6ce41e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sub x7, x12, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x4, 0x3b0eec0cd1310439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x27, 0xa771b4cded3e91ab # initialize rs2
sub x4, x7, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0xad5bb5c04c6d799f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x16, 0x57cb78b99b5a96c9 # initialize rs2
sub x14, x11, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x9dea8b20429ce254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x2, 0x9f75c2c0a6a8f968 # initialize rs2
sub x19, x1, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0xc97560096d178a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x22, 0x75a98e4512e29f8f # initialize rs2
sub x13, x2, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0xd277387f80efd720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x24, 0x8243b51dc942080e # initialize rs2
sub x25, x27, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xb32b641baca895b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x29, 0x7a36fa44b2f03638 # initialize rs2
sub x8, x12, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x5647c19499af86bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x6, 0xd5e09682e4c1e297 # initialize rs2
sub x12, x28, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0x283a106a42754018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0x26a90c3326318955 # initialize rs2
sub x14, x10, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xc7e1b70cdc5df41c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x20, 0x1fbdaa3ea23da3d5 # initialize rs2
sub x14, x27, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0xf4e2371bae56fb06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x6b301bc4a5b2d948 # initialize rs2
sub x22, x18, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xb8db755202066699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x38e16d020b2e23e8 # initialize rs2
sub x7, x15, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x517bafa8dbd91c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x11, 0xe0e5feb77774466e # initialize rs2
sub x8, x6, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x885bd467e44c7193 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x097bc31508621942 # initialize rs2
sub x26, x10, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0xf7e88b5c70f7e320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x30, 0xa41f7d0d31b84aaa # initialize rs2
sub x21, x22, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x314e99b376d22a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x25, 0xf1689fe56126c8ad # initialize rs2
sub x28, x16, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x1ce2e1178d18f626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x15, 0x7ce1ab93bb1e1eab # initialize rs2
sub x24, x17, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x5b07f5b43f61e078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x18ee09dca039fd48 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sub x20, x29, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x6724279608855457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa9a96499886ca491 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sub x13, x19, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x8c211d034c9148f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x455781a82afedbf1 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sub x13, x28, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x771b2d237a1420ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe4127053e1b4e2c8 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sub x10, x12, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0xff185195893ce338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcdc4ece3c309df26 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sub x28, x23, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0xa7aa223e0b3c447f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6b9e11ffb17bd52b # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sub x18, x12, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0xc0e380594d185095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4ce0707ee3b480bd # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sub x14, x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0x71fa059d45cfcecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x211ef94a1081c523 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sub x23, x21, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x27, 0x857ec8629cf24e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7f33be6d00a8bdc3 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sub x27, x12, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x20, 0x281ea90ab1464a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x75a4209cb530cb98 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
sub x20, x19, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xe17380704886e549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2d10562f3b0e5736 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x1, x5, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x30, 0xa8676ad94b59fddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc15f86c8ed1866f1 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sub x30, x4, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0x898d113797e9813c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc101bbfa3424f379 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sub x8, x9, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0xc46852ce5d6a397f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa9ae940df83742f4 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sub x22, x16, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0xd6303d376577d788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5b9145c4e47db408 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sub x7, x15, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x59db3aecdde39502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x466d26b267d87e77 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sub x19, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x24, 0x48a58ec8cd103e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sub x24, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x908d015cf26850f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sub x15, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x2a1d5c9bde02791f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sub x10, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x9, 0x2afd61edebbc8e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sub x9, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x5d15835044e09d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sub x8, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x10, 0x6b11ffb0c4b2daf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sub x10, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x9, 0x7180c9dc900c8171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sub x9, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0x817704bc8a758077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sub x12, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0x46b284891d7ce5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sub x18, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x19, 0x59715faed9f6364b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
sub x19, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xab0cb829e8b4c77b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x14, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x11, 0x46ac3d0407961574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sub x11, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x252ab1a53f628144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sub x21, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0xfd8a7d976d7cfbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sub x28, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x8d0dcfdabfe12029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sub x7, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x14267f9aea21b632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sub x10, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x27fd86bb756ef6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sub x1, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x9abe4547a04dc587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sub x17, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x95f3b148601d4e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sub x3, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x21, 0x237736cf7154d226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sub x21, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x11, 0x7404489d88178078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sub x11, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x20, 0x882fc0b70f4629e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sub x20, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0xee6ee8bd6206089e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sub x5, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x20, 0xe2c7b3f3c43f49de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sub x20, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x26d172db29ad0cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sub x7, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x16, 0x18138c21e78a8b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
sub x16, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x029f71f6a0659671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x4, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x19, 0xa3a08d590fb251c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
sub x19, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x08b0006da5539bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sub x23, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0xce1d5a2949bbc20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sub x14, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x2a8d311e9946319d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sub x23, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x4bcd35a4f26cba86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sub x16, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x787fed3bf4ef0221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sub x24, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0xac9b4269411dc47e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sub x8, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x4, 0x11292dfbf9329071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sub x4, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x15, 0xb8418aee545785d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sub x15, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x7fc4ea71c274233c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sub x17, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x12, 0x15159fdeaa380f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sub x12, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x451ca5272ba692c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sub x30, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x22, 0xa04e24f884822404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
sub x22, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x2bbe83d21f1bba3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sub x21, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x28, 0xce4646f6898f7f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
sub x28, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xc1b62f09054f7b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x14, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x3768c19d3034f5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sub x12, x9, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0xa8714822a5d46b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sub x1, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x10, 0xa4549c5a7e645d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sub x10, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x29, 0xee4e3669b6cab626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sub x29, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x14, 0x5a775454f337175a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sub x14, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x18d368c62e0a47f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sub x16, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x24, 0x241d4292be2a34e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sub x24, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0xc82c24fa8bbc05f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sub x29, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x4, 0x9d3b55dc54525f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sub x4, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x3, 0xba5b11eaaae76c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sub x3, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x69d8e5364c891f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sub x13, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x28, 0xf7b1ad0f84d3e7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sub x28, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x13, 0xb7d9bb1611eeb864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sub x13, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x4, 0x8f176f28e3419bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sub x4, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x20, 0x99cca6146da018f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
sub x20, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7b318cafb9b0e246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x31, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x400870623874b11a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sub x28, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x22, 0x9e11941fac4e8fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sub x22, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x29, 0xf67ee91eadc77e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sub x29, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x1, 0x27a9c25171ed2dca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
sub x1, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x6df69f171424460a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sub x27, x28, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x23, 0xf3e67b7cc66a3b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sub x23, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0x9ae980cd3ab06fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sub x1, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x462cad0d8463cf9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sub x13, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x4, 0x19b3bdd4ba50b29b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sub x4, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x9c60b9e2b899a4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sub x22, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x23, 0x192d5e2a64718115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sub x23, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x32115acbff3c103f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sub x24, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x3, 0xc31ecbe27983bc50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sub x3, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8046d912d5886ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sub x15, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x9, 0x746b200625738ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
sub x9, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xe45cf7bd449ed7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x21, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0x12fd28c2ce60ab3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sub x1, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0xc4c2599d45291e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sub x20, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x16, 0x7375e486fe81aa78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sub x16, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x18, 0x2566c25583195e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sub x18, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x26, 0x2ff825904f3821e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sub x26, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x20, 0xc519cd950e14c76b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sub x20, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0xb471dd7c367bd15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sub x2, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x18, 0x403fa137f6ed71c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sub x18, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x7a9c04dbdb9bc04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sub x20, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0x3232ad35ea9e73b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sub x15, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x64248ab6a70631c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sub x10, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0xc4105b5461a0b3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sub x28, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0xe6721589171f9029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sub x9, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xefb9d33ed6c80040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
sub x15, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x15, 0x9e967f1fe9b8ce79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
sub x15, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x99ad60c0dee3f1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x28, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xe96047a9553d8248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sub x24, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x6, 0x8dfbb9a8aa31e912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sub x6, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x7, 0x1572df77aad76dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sub x7, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0xb2100ca20cd96837 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sub x8, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x29, 0x4e43a81ee07bfd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sub x29, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x777aa9ce60bc40a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sub x1, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x17, 0x73919488ca9e7e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sub x17, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x31, 0x1766d76e81262bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sub x31, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x20, 0x6340fd195f0c747a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sub x20, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0x39ceec729b55849e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sub x1, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x08d6f785e7a89e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sub x3, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0xcbf2ecae5fe274ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sub x6, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x4c4dca6a9ba4233b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sub x9, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x350d0b951251a40a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sub x10, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x25, 0x9fb8531eacc99675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
sub x25, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x9e6ae90f64a7306b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x7, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0xf18b0f6e047cdc56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sub x1, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x797d5a2ab01d856e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sub x13, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x3acb1ce73fc21c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sub x6, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x22, 0x7c5d758b79c672bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
sub x22, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x37e91eb5c542fd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sub x14, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x21, 0x1faed12481d76e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sub x21, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0x7ad7a894ecb0ae41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sub x2, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0x44f3bddc49f723cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sub x20, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x27, 0x10ce120d9713a93c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sub x27, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x7, 0xc4e793433b49e378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sub x7, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x25, 0xa3696a29a4495428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
sub x25, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x05ed98ece8d50ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sub x24, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0xed890b03439f0076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sub x2, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x6c32b84d1ad19c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sub x7, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x18, 0x9c238bb155751a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
sub x18, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x088f712a75c5d7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x29, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x16, 0xa119db0e42c4ee7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sub x16, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x19, 0xb3c9ea96a114cef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sub x19, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x24, 0x9afc58512e0c463c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sub x24, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0xc5051f0a4916460b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sub x20, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x28, 0x10c09d28c4de7de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
sub x28, x29, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x8, 0x8f7bc5bc26ab875b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sub x8, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x19, 0x96462e5699f23477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sub x19, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xaa22dd9257e2041b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sub x3, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0x27ede7c5c4ad9e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sub x28, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xc456caf2d44790a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sub x1, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xba95cb51ef17223b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sub x29, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x797f55eafd8c0e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sub x19, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x8a380d4a8783873e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sub x23, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x4e6f381efe803f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sub x19, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x25, 0x9016b60cfb6eec94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
sub x25, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xe011388721307b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x16, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x5976590e99294d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sub x31, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x5, 0x45aec2cc8b5b7450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sub x5, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x24, 0xd29bc1b74958e83b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sub x24, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x17, 0xc4af761ae9f0f25e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sub x17, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0x9f60379ebc5e57af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sub x23, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x25, 0x4c8407ae5ef6e6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sub x25, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x19, 0xd319ce2f72f0cb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sub x19, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x23, 0xe55b1fdb804cf04e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sub x23, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x21, 0x77b9bd607da6d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sub x21, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x30, 0xe99298a76ca35c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sub x30, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x31, 0xc09f5f9770fcdb63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sub x31, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x8, 0x72db0c133d04e518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sub x8, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x2, 0x59d969779407d8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
sub x2, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x30, 0xe1849ad7d9b7edb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sub x30, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x22, 0x761fe5a2321f1f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
sub x22, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xb99cc7f6ce446ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x29, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x24, 0x1a410d3989e56fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sub x24, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x17, 0x9630c60818c58397 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
sub x17, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x2, 0xea452776e61be431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sub x2, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x18, 0x558534c4fb6c4356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sub x18, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x31, 0x9a9f8ee6a635487a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sub x31, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x1, 0xd004d3dba6179dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sub x1, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x20, 0xcf1dadddf83467a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sub x20, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x9, 0x835a70775af1cbb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sub x9, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x14, 0xe6bb12262a5b50e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sub x14, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x30, 0x2eec1b9157c836e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sub x30, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x12, 0x740c9737034241a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sub x12, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xd9f284cd7b76b32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sub x18, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0x7447052ecc6bfe64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sub x15, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x21, 0x4060aef3a882802d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sub x21, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x26, 0x878026361493ee24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
sub x26, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x23e348cc4cbc0459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x19, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x12, 0xe3c7cbe1f9d3e3af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sub x12, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaf2ee4e9ba99e0db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sub x17, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x24, 0x71254261b7fd33f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sub x24, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0x16b597138179bdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
sub x21, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x15, 0x183d7a9af99c56e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sub x15, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x7096bfa39fcb0b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sub x18, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x65dcfb1e874a4c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sub x25, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0xf9c81857ae23d5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sub x29, x6, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0xd74774e4a01e20ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sub x13, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x25, 0x5be049bf5264c604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sub x25, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x15, 0xecb9090a812d89e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sub x15, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x8, 0xac6ae670071c5f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sub x8, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x7, 0xc589112ac12d004c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sub x7, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0x287ec63c3fcbe9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sub x14, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x6, 0xd6ec054fb114f86b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
sub x6, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xa301f85a25387cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x14, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x8, 0x4b65e6b021ec292d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sub x8, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x18, 0x1d96ed66dcec6e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sub x18, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x18d77c7423fac6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sub x28, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x4, 0xc2d33b32ffab50de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sub x4, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x5, 0x8aefcb3173636277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sub x5, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x722e222e60b1f7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sub x31, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x22, 0x648ec19621d11359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
sub x22, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0xb49ba45e3e62190b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sub x8, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x4689dfbcd9d152d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sub x1, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0xc64409947f2c9b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sub x23, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x5d659cea78a7332e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sub x27, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0xa8edfbd7fcfd863f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sub x20, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0xd4db370cc99100b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sub x21, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x6c6db4280970b4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sub x9, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x23, 0x2a74685cdcc951be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
sub x23, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xa0fb3d497c0e9838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x15, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x21, 0x44224ed3eb5b8bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sub x21, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0xa7b66480f1c182f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sub x10, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0x8512b089683fa5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sub x14, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x13, 0xf57f4efc0b8982f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sub x13, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x98e1313f57fcb38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sub x1, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xf74ce7165b6591d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sub x7, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x4002b57408eb8aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sub x7, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xb5698983ab8d09ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sub x5, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x16, 0x42dba9c30dc3b966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
sub x16, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x1, 0x888ed1fc06b6e783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sub x1, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x0b9cba51575940bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sub x29, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0x14c07e65911a8e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sub x2, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x21, 0x9d296c484a41b2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sub x21, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x8f79953d4fda5959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sub x1, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x25, 0x739004da00dea220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
sub x25, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x36295fcde61b1537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x4, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0xf6b815cfea5f9978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sub x8, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x40f272477bc9354b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sub x5, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0xe1e993571304a0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sub x7, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x27, 0x1da266a68df17884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sub x27, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0xc7cd4f05836f443f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sub x26, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x21, 0x4349aeb038ae9fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sub x21, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x18, 0x7893196663435d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sub x18, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x26, 0xbce3d76c2663709d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sub x26, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x6, 0xe78875a1406e461e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sub x6, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x10, 0x4549fbbe33597413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sub x10, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0xafcffd59b2dc96f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sub x25, x19, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0xf659aad3fee4123b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sub x18, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x23, 0x29dc75fbff61cbde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sub x23, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x31, 0xb9d603e97371d8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sub x31, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x19, 0x468314630e4a313c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
sub x19, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x357bd517fc8895fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x17, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x24, 0x02a03bef6d516457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sub x24, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x11, 0x81da877f90dec43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sub x11, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x30, 0x19b102327495987b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sub x30, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x18, 0xd1a2265cadcd75da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sub x18, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x268e5be73c499575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sub x10, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x31a2a3666b5dbd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sub x13, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x14, 0x68d002100ee102b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sub x14, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x02aba8ee4e0f8f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sub x9, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0xcb778fb8e60cfbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sub x29, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0xa55c9b466524d907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sub x14, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x4, 0x1108c7d6762bb367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sub x4, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x14, 0xd883639c12f57b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sub x14, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x3, 0xbb3b8124e7455f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sub x3, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x17, 0x5c49f0529ddb5b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sub x17, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x10, 0xa584190c501d5f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
sub x10, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0xcbe94ab26b9b954d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x4, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0xe460adf840c562eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sub x9, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x4, 0xfb84b8725e8e26ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sub x4, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x09f5e5b839222a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sub x20, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x1e99b97d21caabe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sub x27, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x6, 0xdc6310fbf464e778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sub x6, x18, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xdad7743ec3199894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x71f466c796a09764 # initialize rs1
li x10, 0x41847e38b1219a51 # initialize rs2
sub x0, x0, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbb1073cfe56760cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xedcb08f05aaa8c6a # initialize rs1
li x11, 0x071a3b151dc977fc # initialize rs2
sub x1, x1, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7dcc4ed2be2a9610 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc54f13c4f5c507bb # initialize rs1
li x23, 0xef36cab282b5e78c # initialize rs2
sub x2, x2, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x127749d374257c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf4253e0ff6e3622c # initialize rs1
li x9, 0x71fbd93164584812 # initialize rs2
sub x3, x3, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x26376f3b6bb42cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf13c3869b153344f # initialize rs1
li x6, 0x446981a084f3b1d9 # initialize rs2
sub x4, x4, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xf4fc3995e0af38e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x520129d9e5fafff4 # initialize rs1
li x24, 0xd144784d1e01a382 # initialize rs2
sub x5, x5, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xcea040ab95c425c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3e31c0eed6f5590a # initialize rs1
li x11, 0xea017659e625e287 # initialize rs2
sub x6, x6, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2be0056895b83a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x585653d47e849363 # initialize rs1
li x31, 0x756063d08869c3a5 # initialize rs2
sub x7, x7, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2bec1c691c1d0ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0187543c571521fc # initialize rs1
li x15, 0x1918564cb831e23d # initialize rs2
sub x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9c14903e3be8c8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb112ca4f276592af # initialize rs1
li x23, 0x427154e83c8f8da1 # initialize rs2
sub x9, x9, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2b8756fee61a5b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a5ca87f3971f169 # initialize rs1
li x28, 0x59e96170b92fa8b4 # initialize rs2
sub x10, x10, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x65a9f77984659aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b8b3816d345830b # initialize rs1
li x23, 0x7ca9a4eb0bad32a7 # initialize rs2
sub x11, x11, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3852551f2157af8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x56e83023652c0132 # initialize rs1
li x28, 0x43cd0311457dff9d # initialize rs2
sub x12, x12, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdd7b53990c9d2352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaee4b3a20d92bdfc # initialize rs1
li x8, 0xad56a33efe2c4df4 # initialize rs2
sub x13, x13, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x148eb935b56013fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5b0c8228aea3553b # initialize rs1
li x29, 0x6759dff7a542b518 # initialize rs2
sub x14, x14, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa6e4f91f39375158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a4a4e095f33dd73 # initialize rs1
li x4, 0xb488ba1ba86523f1 # initialize rs2
sub x15, x15, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2b4bdfab3b3bec4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x66f14fa7b3d4b2ee # initialize rs1
li x15, 0xf302f0779342c1bb # initialize rs2
sub x16, x16, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x727a295d9ee5c908 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf8fb2167947b4930 # initialize rs1
li x17, 0x880aabc78da5dcf6 # initialize rs2
sub x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x041fa38c82a1f098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffdc7e8acd3d1bfb # initialize rs1
li x9, 0xb9ccc700941f9516 # initialize rs2
sub x18, x18, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6e208d375cca734c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0d3f6fab14525988 # initialize rs1
li x23, 0xf85fffc4e215aa03 # initialize rs2
sub x19, x19, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc8791de025e0bc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x59d6c2fa39167612 # initialize rs1
li x12, 0x41ba294090753eb0 # initialize rs2
sub x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x46cf5d9a2d4b5f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5142dd1e9c0518da # initialize rs1
li x30, 0x83f1561fd2adda92 # initialize rs2
sub x21, x21, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6c1d175b2d722bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9248fb5f38ebaf41 # initialize rs1
li x1, 0x4342a4d34f61d015 # initialize rs2
sub x22, x22, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa136a1e041f8619c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe2901887279cde7c # initialize rs1
li x10, 0xdd630c7409390921 # initialize rs2
sub x23, x23, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x951b6d7b1b5235e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80fa0d0628ddac92 # initialize rs1
li x18, 0x62ecf7ad58453097 # initialize rs2
sub x24, x24, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x495e5550f192e339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2c6e94e7522bae8a # initialize rs1
li x7, 0x7fbbd2a4a17784bc # initialize rs2
sub x25, x25, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9a366c87429f8784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6839a775221fda73 # initialize rs1
li x10, 0x980fcf1903dc6735 # initialize rs2
sub x26, x26, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x268fe2887b2f3d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9aabf3f8ace96f14 # initialize rs1
li x23, 0xf175452ba3fc24dd # initialize rs2
sub x27, x27, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x37e4de4d0b6608f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xac6c3092b273b1e9 # initialize rs1
li x27, 0x28c1d95ddd009cd4 # initialize rs2
sub x28, x28, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9075e8365fbc154b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8146da811dd6b6b9 # initialize rs1
li x10, 0x53067d6e936361e2 # initialize rs2
sub x29, x29, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa05d5de01bd2197f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf6ed6447ff97e6fd # initialize rs1
li x2, 0x08537ccfd25e18c8 # initialize rs2
sub x30, x30, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x70dfd59eaf6b4327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa73129df92eb34a4 # initialize rs1
li x26, 0xf8bd02fb1800fc82 # initialize rs2
sub x31, x31, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5d7fe2ac4e9efb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcab4115ffcc0300c # initialize rs1
li x0, 0x19c85707b749f0e4 # initialize rs2
sub x0, x28, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x5d0b4bc9d83b8ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9ea9d0bdbc8f3bba # initialize rs1
li x1, 0x83fc7911fcf4126f # initialize rs2
sub x1, x17, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xc3f43318dc55c95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbd0fb050ed81897a # initialize rs1
li x2, 0xa716672c15305afa # initialize rs2
sub x2, x12, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x399f32b121c1ebe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6b430fa77c64ac51 # initialize rs1
li x3, 0x395753c175ada5ec # initialize rs2
sub x3, x27, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x2845c80aa35dbbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x90c55c281ab24c02 # initialize rs1
li x4, 0x44f229ef99151d3c # initialize rs2
sub x4, x27, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x556c83d24aea4744 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7db018ab58644d9d # initialize rs1
li x5, 0x61e8adc0ca7651f9 # initialize rs2
sub x5, x7, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xec6eb8e2756b1a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcef4e2a5ad4e35d5 # initialize rs1
li x6, 0xce7ed7e7a1c08a24 # initialize rs2
sub x6, x13, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xae5a4c9d40cdb3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd8da51c42afc1db0 # initialize rs1
li x7, 0x291393217e487c6b # initialize rs2
sub x7, x12, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xfc45e4a8c54d2e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3f3e66527946d12b # initialize rs1
li x8, 0xf256180b27328235 # initialize rs2
sub x8, x15, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x3e61a4967b7016bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5f2fb7edfa548c6e # initialize rs1
li x9, 0xf2da898b705eb109 # initialize rs2
sub x9, x21, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xb4f75593f69b1f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb6202819b0c2afd0 # initialize rs1
li x10, 0xa07b6be5662b807d # initialize rs2
sub x10, x20, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xea83107ecda21285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffccf9b8d83251e4 # initialize rs1
li x11, 0x89583db4a2061f0b # initialize rs2
sub x11, x8, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xeca4cc6e95fddea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf6a1fde24b64555c # initialize rs1
li x12, 0xcc13d2e27a37b684 # initialize rs2
sub x12, x29, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x69eb2560bab6a098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x84a2a9f94dd0b39f # initialize rs1
li x13, 0xb45eab20a038ae17 # initialize rs2
sub x13, x7, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xa2b7dd79acf3f2eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe4b05d9e37c186d8 # initialize rs1
li x14, 0x8a2474ca93d8322a # initialize rs2
sub x14, x23, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x67b809ed47dbf705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2c28743dee2814af # initialize rs1
li x15, 0xec7125f8e1289f37 # initialize rs2
sub x15, x16, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x8ae091dcc233dbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaa144c471db4e8ed # initialize rs1
li x16, 0xa4113a686299fa8f # initialize rs2
sub x16, x29, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x4df05dbf1f20a37e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf7c2851541de31d7 # initialize rs1
li x17, 0x6122af521fa77c44 # initialize rs2
sub x17, x19, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xa24e14ce90df2c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x28c276702c3ca593 # initialize rs1
li x18, 0x68d37f804e8a99d5 # initialize rs2
sub x18, x23, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xdd5df698d79a6e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcd1866619ed1971e # initialize rs1
li x19, 0x0269326f10c80017 # initialize rs2
sub x19, x28, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x7e7c34243a48b9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc12a68177ec26021 # initialize rs1
li x20, 0x6f79d9e6a4430280 # initialize rs2
sub x20, x23, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x4e2754d7c1b5bda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd53f9bcf086c24c3 # initialize rs1
li x21, 0x3c041a993399e05f # initialize rs2
sub x21, x3, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x1a84a573f165af14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x22d71d9d7085ea44 # initialize rs1
li x22, 0x5d68987b1169dfc3 # initialize rs2
sub x22, x25, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xb5c370b40bbb2959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x18eb4f4d7d0f682b # initialize rs1
li x23, 0x17c7c8272310f2b4 # initialize rs2
sub x23, x12, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x4495204dfb1b057c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x62b9a1c10e1f9aca # initialize rs1
li x24, 0xf0b6bc0e81096d4c # initialize rs2
sub x24, x11, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x8be089f12c4da9b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf38c54a8ee0106c0 # initialize rs1
li x25, 0x6500187d031ca402 # initialize rs2
sub x25, x8, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x0d73854a1278f110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ee5581abf291923 # initialize rs1
li x26, 0x4bc9ac8ac573ffe4 # initialize rs2
sub x26, x14, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x7730a0e854cbf582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x04762615412437a6 # initialize rs1
li x27, 0xd1c0830ffa96a1e5 # initialize rs2
sub x27, x3, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x12d25172ff54e1b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x10d4a09d08ac629a # initialize rs1
li x28, 0x465b0b301d6574bd # initialize rs2
sub x28, x5, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x251f38ad8882fcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb767059fd854524e # initialize rs1
li x29, 0x4975d3f592896d13 # initialize rs2
sub x29, x15, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xe6d9edbcb9ed6599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5f2f75da9d1a3d88 # initialize rs1
li x30, 0x8c8eab73497ed9e3 # initialize rs2
sub x30, x24, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xf24406d055929957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x02f39de8fbcf92f1 # initialize rs1
li x31, 0x68d60c511d8a6109 # initialize rs2
sub x31, x12, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x1cb025eea715ce4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7241038b2aa09a92 # initialize rs1
li x0, 0x0004b3dd7489f322 # initialize rs2
sub x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd3a61f8529d10c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0f0700cf293a2478 # initialize rs1
li x1, 0xc4dd72f41082bc40 # initialize rs2
sub x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4cb1815463f20758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfd3fff5c121f8c84 # initialize rs1
li x2, 0xb38dd854e36db016 # initialize rs2
sub x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x19e28030fa9c9b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xee646d361eb5f1b2 # initialize rs1
li x3, 0x9a4f2b10755e1be4 # initialize rs2
sub x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x31be78df1a1146de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x04af6741bb12ea0c # initialize rs1
li x4, 0x008bab549ec60c6b # initialize rs2
sub x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x34379fec074190c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2a8f4f28aaccb491 # initialize rs1
li x5, 0xb781f70d288c6f65 # initialize rs2
sub x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x77abba2569aa706c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x964a67b5938db5c8 # initialize rs1
li x6, 0x34c1b98d67eeae97 # initialize rs2
sub x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x16ea90c36501035d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x067f8cb2cddc711a # initialize rs1
li x7, 0x5edeeee91e012206 # initialize rs2
sub x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x85ff4befe97f72f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbe10c4bee6e890c1 # initialize rs1
li x8, 0x18b07134bab094cd # initialize rs2
sub x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbf67754243817ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe73b0719ac1e748e # initialize rs1
li x9, 0x92a58e5c69f66d89 # initialize rs2
sub x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x31cd039af41b8b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc6f6a3975ae223e # initialize rs1
li x10, 0x91058d4affd47483 # initialize rs2
sub x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7721ff52049a52e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x253efc7d16cb1086 # initialize rs1
li x11, 0x448bbdd604f7072b # initialize rs2
sub x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5a337fd2a0a5809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfaadce53ed3b2318 # initialize rs1
li x12, 0x7e938348435a998d # initialize rs2
sub x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x353232c5ed06b7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x572d77da95369eda # initialize rs1
li x13, 0xb18ba8e14488d2e5 # initialize rs2
sub x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x16968d86dc24f4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x811dc9caf67bf59f # initialize rs1
li x14, 0xfbdfb08e77bea9ff # initialize rs2
sub x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf9d70d9c2b342475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xed5249f04d8585df # initialize rs1
li x15, 0xd9c51d0c85c68fbb # initialize rs2
sub x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9ace173e901c5d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7b2af4b7098191d3 # initialize rs1
li x16, 0xe442d124ed080103 # initialize rs2
sub x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xfec8b56ad5068e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfd7fb4347c8d42dc # initialize rs1
li x17, 0x2544b87f563f6042 # initialize rs2
sub x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6cf643e5fa0d2bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x434909d7ebb670fe # initialize rs1
li x18, 0x215be6af0c2cc35f # initialize rs2
sub x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0022e9df8d44b828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8f108ae4d92a0c72 # initialize rs1
li x19, 0xf23a6eb70ca54320 # initialize rs2
sub x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb36336a7c2b7554d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc72310d72d2a6442 # initialize rs1
li x20, 0x61b3b52fd1ddacc5 # initialize rs2
sub x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x00c1123b631cbf63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x929c6c7fd900122b # initialize rs1
li x21, 0x122b78c5e8530391 # initialize rs2
sub x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd91d9ab61fa6be27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x79dc458102350408 # initialize rs1
li x22, 0xddc9a7affc7733b7 # initialize rs2
sub x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe2aa7209d4b98b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x465ae3a67d9e11d8 # initialize rs1
li x23, 0x00c87c9f75724984 # initialize rs2
sub x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc75f3ba7317e58e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6a2ad7880bbe5c6c # initialize rs1
li x24, 0x6c2ca2175ac9034e # initialize rs2
sub x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x9da136bf53c41843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2411f36377e29467 # initialize rs1
li x25, 0x9a2530a9fd184f74 # initialize rs2
sub x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb057444f0abaf482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x038b5129f2b50667 # initialize rs1
li x26, 0x3f1ffd0dcce5f9f3 # initialize rs2
sub x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc3b8a2f53cc65e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x18bd573322451cc6 # initialize rs1
li x27, 0x424e2d2d2922cd4f # initialize rs2
sub x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x29034f4674ab3498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc74090b1cb676051 # initialize rs1
li x28, 0xb529b39ca80e1171 # initialize rs2
sub x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6e196adf37835cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x85ae352e108c1716 # initialize rs1
li x29, 0x7155e2f296347de1 # initialize rs2
sub x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x916e81575d3bd51a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x34d1133879e32cfa # initialize rs1
li x30, 0x105dcfb6daac1af2 # initialize rs2
sub x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x52acc5f925a59ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0575cef525356563 # initialize rs1
li x31, 0xbec79ebb8105ed94 # initialize rs2
sub x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x22, 0x7e950b725eb96c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2491422790b7cda7 # initialize rs1
li x0, 0xa6e423a34da213b7 # initialize rs2
sub x22, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x2, 0x0de0c7ce5a3c1b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa3d4694e94eb89ee # initialize rs1
li x1, 0x3dfc617c4f91321a # initialize rs2
sub x2, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x13, 0x09e8db24094c21ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd91f04dff0c5d8d8 # initialize rs1
li x2, 0xf929a12bca81f70b # initialize rs2
sub x13, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x22, 0x627ab515bb8e2ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa3dc17169b1b729b # initialize rs1
li x3, 0x54792843862ad1e7 # initialize rs2
sub x22, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x28, 0x759a134377345829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6fed14e60be5926f # initialize rs1
li x4, 0x3950617b59632068 # initialize rs2
sub x28, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x26, 0x5aa06d5bd8904c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x138da2f351215a29 # initialize rs1
li x5, 0xc4b3d9a8e3bd8fea # initialize rs2
sub x26, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x2, 0x92121be98c3fee70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7eb063549afd0275 # initialize rs1
li x6, 0x84933ba2cf363cef # initialize rs2
sub x2, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x27, 0x861f881d6984e691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf4a401227e4702dc # initialize rs1
li x7, 0xa5507ab598594738 # initialize rs2
sub x27, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x24, 0x99f4c452512a9df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x87e3c1eac0c9e798 # initialize rs1
li x8, 0xa4b3e2803b1534a7 # initialize rs2
sub x24, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x15, 0x4ec6cf1f9656f36e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeb55c948ef4c11fa # initialize rs1
li x9, 0xddd55ae11ae3d9d5 # initialize rs2
sub x15, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x21, 0x25f84d237461cbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x186132700fe3d52b # initialize rs1
li x10, 0xa0dcad00c4c63eca # initialize rs2
sub x21, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x23, 0x6053e49815136945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3fa01ce06dbea355 # initialize rs1
li x11, 0x16f3548ef78bb44a # initialize rs2
sub x23, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x21, 0x023f0bb5e36c71f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7f4f796183925984 # initialize rs1
li x12, 0xaba47fff1f4e41b4 # initialize rs2
sub x21, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfaa92695606bd2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2bb13c128360e30b # initialize rs1
li x13, 0xaad4d4aae81e13b2 # initialize rs2
sub x13, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x19, 0x92cfe48bb5c6c411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x428ef48681cf8d53 # initialize rs1
li x14, 0x7c7f10d67b8196b5 # initialize rs2
sub x19, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x9, 0xd3dfd701cfe7ff94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0ff4e7d535fc6086 # initialize rs1
li x15, 0x9e2cce42a0d398f4 # initialize rs2
sub x9, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x18, 0xd4c4aba35c876ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x696f0fed3a6c165e # initialize rs1
li x16, 0x512458357e167fb7 # initialize rs2
sub x18, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x16, 0x234c27e9f40765c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7626bac57ea5a0e9 # initialize rs1
li x17, 0x7aeb82aeb7366cc8 # initialize rs2
sub x16, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x29, 0x38d1de1fe104b64e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x57c3654cd34da5eb # initialize rs1
li x18, 0x2f33e24441085923 # initialize rs2
sub x29, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x29, 0xbefbf5da88b8d00e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe0d25a026ccaf25c # initialize rs1
li x19, 0xbbb7a2b6607ebfc6 # initialize rs2
sub x29, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x16, 0x5ddccbad414f8f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x94ace1dd6e77750f # initialize rs1
li x20, 0xc785456681bfb32a # initialize rs2
sub x16, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x31, 0x75388cc5d037a271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb86c07c6877f9fff # initialize rs1
li x21, 0x4f53abb37987a12e # initialize rs2
sub x31, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x18, 0xc77343457e482a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ae3c62471cb4835 # initialize rs1
li x22, 0xa2c6f00c0b005827 # initialize rs2
sub x18, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x10, 0x1afcd5c31fc91965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc75ac2d6e4ee966c # initialize rs1
li x23, 0x9dcfe0ed1b1689c8 # initialize rs2
sub x10, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x13, 0x0248539882048b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcdac104d27f6ae17 # initialize rs1
li x24, 0x98c2b9683a3497d9 # initialize rs2
sub x13, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x30, 0x78a314e2942f3103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x37484beb2398e91f # initialize rs1
li x25, 0xa2e614a70f0d19a9 # initialize rs2
sub x30, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x19, 0xc56381c93f7596e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7299907c901fe058 # initialize rs1
li x26, 0x1ee2e1a52d1485cb # initialize rs2
sub x19, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x9, 0x61f5ee15c8e3c997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0ccacadaa2388f95 # initialize rs1
li x27, 0x1ab3d22dda40f44c # initialize rs2
sub x9, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x11, 0xe368bb9c86e8050f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc00f742cb0c78401 # initialize rs1
li x28, 0x46ce617dfe63dadc # initialize rs2
sub x11, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2e0e51eec9d3d45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc1df0e67e551b584 # initialize rs1
li x29, 0x43e02e9305eb5356 # initialize rs2
sub x29, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x12, 0x24ccd4f0c4a19669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce9549b0e18d5109 # initialize rs1
li x30, 0xdb21ff5eebae9eb0 # initialize rs2
sub x12, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x12, 0x5ff89a136bdd0265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7c3787ebc77f864e # initialize rs1
li x31, 0xb18435df57025b9f # initialize rs2
sub x12, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x4c955e10ebf0447e)
li x3, 0x085c44093cc04c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4c955e10ebf0447e # initialize rs1
li x16, 0x103f682b7e719a4c # initialize rs2
sub x3, x28, x16 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x10f27367ce65b5b9)
li x25, 0x5905e5419d513e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xef0d8c98319a4a47 # initialize rs1
li x3, 0x39c411210d968bdd # initialize rs2
sub x25, x27, x3 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x776d6c8f698b5e31)
li x28, 0x0c157e976ee2c3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x366c5e03e44c7bb8 # initialize rs1
li x13, 0x776d6c8f698b5e31 # initialize rs2
sub x28, x5, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x6e03ff8044bebffb)
li x22, 0x526d51f7742d4f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb827908ebb3534a9 # initialize rs1
li x24, 0x91fc007fbb414005 # initialize rs2
sub x22, x16, x24 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
