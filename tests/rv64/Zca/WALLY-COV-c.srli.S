///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.srli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.995182
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_shift
li x1, 0x4e3980f6637e4b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0cb14a351a1bcf12
c.srli x9, 1 # perform operation

# Testcase cp_imm_shift
li x3, 0x566009a9178b6187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc44671cc45b2393f
c.srli x11, 2 # perform operation

# Testcase cp_imm_shift
li x8, 0x1ef841a10301a4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xddcc807a4a42211a
c.srli x8, 3 # perform operation

# Testcase cp_imm_shift
li x28, 0xd927cc53aba55fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x81c70416795b5828
c.srli x12, 4 # perform operation

# Testcase cp_imm_shift
li x25, 0xcb7edf8faef8e54a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14cd3096002e4204
c.srli x9, 5 # perform operation

# Testcase cp_imm_shift
li x28, 0x523bcd06037c18da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb62a8ade6e5718ed
c.srli x12, 6 # perform operation

# Testcase cp_imm_shift
li x10, 0x9a7bf84c08932aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x90c3ac1f219c9119
c.srli x10, 7 # perform operation

# Testcase cp_imm_shift
li x25, 0xe5d0e1ab39496565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2bedde79aa06c662
c.srli x9, 8 # perform operation

# Testcase cp_imm_shift
li x25, 0x5f1ea9584eeccfe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x921bec8a13ef4ef4
c.srli x9, 9 # perform operation

# Testcase cp_imm_shift
li x15, 0x70416b1b983727a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd4af75cd11af4bd8
c.srli x15, 10 # perform operation

# Testcase cp_imm_shift
li x27, 0x770d6f3fee59ce32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x605d674b9e06f75c
c.srli x11, 11 # perform operation

# Testcase cp_imm_shift
li x7, 0x71d111a41e100d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5779e40daf14b0b6
c.srli x15, 12 # perform operation

# Testcase cp_imm_shift
li x15, 0xd4f34d9fe532cfe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x23eb84213bcd0ef5
c.srli x15, 13 # perform operation

# Testcase cp_imm_shift
li x30, 0xfdad208e6b6fff67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x095d7e8847504733
c.srli x14, 14 # perform operation

# Testcase cp_imm_shift
li x31, 0x1dedba98840e2913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0a2eea2e44163ca3
c.srli x15, 15 # perform operation

# Testcase cp_imm_shift
li x1, 0x65ab26e9cb06f67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5c7e1f39e432ef1
c.srli x9, 16 # perform operation

# Testcase cp_imm_shift
li x25, 0x0b72fe56f4d093b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x26acc19162417962
c.srli x9, 17 # perform operation

# Testcase cp_imm_shift
li x2, 0x3bbd23a9121764f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe53e7b4ec02cc624
c.srli x10, 18 # perform operation

# Testcase cp_imm_shift
li x7, 0xa85771e633ca6f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x59b93faee7d0201b
c.srli x15, 19 # perform operation

# Testcase cp_imm_shift
li x14, 0x6b1b29f49b77ec5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x03dce106a6d751e8
c.srli x14, 20 # perform operation

# Testcase cp_imm_shift
li x26, 0x69b7543770c4f967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x46c33a3dd8de307c
c.srli x10, 21 # perform operation

# Testcase cp_imm_shift
li x27, 0x5cdc891b4cfda452 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x456b6be4e25cf1e2
c.srli x11, 22 # perform operation

# Testcase cp_imm_shift
li x27, 0x47a8c419f7e73edc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x57d139ec0f6f6b1e
c.srli x11, 23 # perform operation

# Testcase cp_imm_shift
li x13, 0xa1bfa37663d17aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x87ea528ef5c37726
c.srli x13, 24 # perform operation

# Testcase cp_imm_shift
li x22, 0x3899482a29f8f681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1e72680860a181a1
c.srli x14, 25 # perform operation

# Testcase cp_imm_shift
li x24, 0x54e24aaf97ef47b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdf881fdfce7d1b89
c.srli x8, 26 # perform operation

# Testcase cp_imm_shift
li x15, 0xea83d11ff31ea425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x39799bcf271c1467
c.srli x15, 27 # perform operation

# Testcase cp_imm_shift
li x21, 0xe2d62fc46e12dfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd09b1450ca9257ee
c.srli x13, 28 # perform operation

# Testcase cp_imm_shift
li x27, 0xef8ba020b2b8da29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa6b163e2e10f2e04
c.srli x11, 29 # perform operation

# Testcase cp_imm_shift
li x21, 0xa5a93224bb418955 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x15e10c8ba3c28cd5
c.srli x13, 30 # perform operation

# Testcase cp_imm_shift
li x14, 0xbe1bb730435d6c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4237148236a4b4f5
c.srli x14, 31 # perform operation

# Testcase cp_imm_shift
li x8, 0x3fb5e7d47598635b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbfe6ba3ef78ee0fd
c.srli x8, 32 # perform operation

# Testcase cp_imm_shift
li x17, 0x2b04b62ae3234edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5a9f5d663db437c5
c.srli x9, 33 # perform operation

# Testcase cp_imm_shift
li x20, 0x690e564ad0a1c3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8664733de1ffc339
c.srli x12, 34 # perform operation

# Testcase cp_imm_shift
li x21, 0xe2ece6a152e1778e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa15c120dbbc9c720
c.srli x13, 35 # perform operation

# Testcase cp_imm_shift
li x3, 0x5b1cfa6323978cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x819dc7ad5a33f133
c.srli x11, 36 # perform operation

# Testcase cp_imm_shift
li x10, 0x14c991ee9724d14e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8343e6be2c6945f2
c.srli x10, 37 # perform operation

# Testcase cp_imm_shift
li x4, 0x5cbb429bb4358ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x172faf73e6862d17
c.srli x12, 38 # perform operation

# Testcase cp_imm_shift
li x1, 0x66c36d674cf5b876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x77af809ce568ef2c
c.srli x9, 39 # perform operation

# Testcase cp_imm_shift
li x15, 0xebdf8a0d6231fe12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xca29c706553f2da8
c.srli x15, 40 # perform operation

# Testcase cp_imm_shift
li x23, 0x440d6f6ed8c40374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2d3b56cc4c514fc6
c.srli x15, 41 # perform operation

# Testcase cp_imm_shift
li x5, 0x6f4b2332841769f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6882497faf958c8f
c.srli x13, 42 # perform operation

# Testcase cp_imm_shift
li x1, 0xcc60265aa1314f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c008274a33aebfa
c.srli x9, 43 # perform operation

# Testcase cp_imm_shift
li x14, 0x147400f09c1cad31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x20c7afb6aaab53ab
c.srli x14, 44 # perform operation

# Testcase cp_imm_shift
li x25, 0xa4b21d3d4fa8a5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xac0fbab9967b7bf2
c.srli x9, 45 # perform operation

# Testcase cp_imm_shift
li x21, 0xb5cb2e03f06892c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbeb74494a312d778
c.srli x13, 46 # perform operation

# Testcase cp_imm_shift
li x15, 0x3ed132ebd50a99c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb3fd0b2da1129725
c.srli x15, 47 # perform operation

# Testcase cp_imm_shift
li x10, 0x052586060fbe9e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4e4959efeba23884
c.srli x10, 48 # perform operation

# Testcase cp_imm_shift
li x3, 0x514b88ee9a458b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a48fbca50a5a7c9
c.srli x11, 49 # perform operation

# Testcase cp_imm_shift
li x23, 0x0458e3f760246fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3874a2ea15c6b283
c.srli x15, 50 # perform operation

# Testcase cp_imm_shift
li x17, 0x96b0979961cfa598 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc266c730ffad690d
c.srli x9, 51 # perform operation

# Testcase cp_imm_shift
li x31, 0xb69b97c6e182ca8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x558fc01637f7c0d4
c.srli x15, 52 # perform operation

# Testcase cp_imm_shift
li x8, 0xec241bf8647fc1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x695219a001cce86b
c.srli x8, 53 # perform operation

# Testcase cp_imm_shift
li x29, 0x56c28debc3952d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd11406aca3726c8e
c.srli x13, 54 # perform operation

# Testcase cp_imm_shift
li x6, 0x41be740ec8436235 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1abb0c4e8d762bac
c.srli x14, 55 # perform operation

# Testcase cp_imm_shift
li x16, 0x334a3ea7b8a27e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb78e458f8effe9b3
c.srli x8, 56 # perform operation

# Testcase cp_imm_shift
li x7, 0x6433b504443b41d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x97ea757bb000cb55
c.srli x15, 57 # perform operation

# Testcase cp_imm_shift
li x21, 0x58927cdaebbc1eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1b3007007701c1e7
c.srli x13, 58 # perform operation

# Testcase cp_imm_shift
li x12, 0xc5f911d14f44df5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf6f601c937df84bc
c.srli x12, 59 # perform operation

# Testcase cp_imm_shift
li x27, 0x353e3cfde572a34c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe0cf463da4052a9d
c.srli x11, 60 # perform operation

# Testcase cp_imm_shift
li x19, 0x00b4c91504207fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x95a840a8d0d9b042
c.srli x11, 61 # perform operation

# Testcase cp_imm_shift
li x24, 0x7d9460790b12e6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x36ea732441797571
c.srli x8, 62 # perform operation

# Testcase cp_imm_shift
li x4, 0x1a8889d94a9a5c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd005d7b5a62e28ce
c.srli x12, 63 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2781e877fcb9b277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06bc167b0c22c014
c.srli x8, 61 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x665803ced3d74bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x23ff4733e3eeb3dc
c.srli x9, 10 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2a3808873715d0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x141338354f8926ba
c.srli x10, 28 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5939085ad6ff04b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe2cf328a84d8620a
c.srli x11, 28 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x469bdb98d0a31335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa150047f9bf379c0
c.srli x12, 3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb38ad3f9e3917a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe5955614b9218a52
c.srli x13, 59 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x27274468fec89b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6e43d4c65788615d
c.srli x14, 26 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa7b43083e507e0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa0d0b49919d33d4e
c.srli x15, 11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x21, 0x8a1597a60ed9027f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000
c.srli x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x14, 0x2883f12569d427f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002
c.srli x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x6, 0x4dd1f3bfe2dd7481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000004
c.srli x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1fffffffe Shifted by 1)
li x28, 0x87331f0e7aa5c965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001fffffffe
c.srli x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1fffffffc Shifted by 1)
li x1, 0x45fd49b14a88a6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001fffffffc
c.srli x9, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x200000000 Shifted by 1)
li x18, 0x866f633c821be826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000200000000
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x200000002 Shifted by 1)
li x11, 0x28f2e90b043ef7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000200000002
c.srli x11, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe Shifted by 1)
li x20, 0x853f52c371366c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe
c.srli x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffc Shifted by 1)
li x23, 0x0b17214c5085c7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffc
c.srli x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa Shifted by 1)
li x22, 0x64bb3084adac9048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa
c.srli x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xb77910eec75d0dee Shifted by 1)
li x6, 0x7261820ad20618de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb77910eec75d0dee
c.srli x14, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
