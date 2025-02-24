///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.srai.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.994361
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_shift
li x21, 0x0a7e2354c9c11917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0ba244ecef0d48f9
c.srai x13, 1 # perform operation

# Testcase cp_imm_shift
li x30, 0xe4f577b8eceefc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfddfa3e25d36c033
c.srai x14, 2 # perform operation

# Testcase cp_imm_shift
li x21, 0x4d5de94b7c130551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2f3bb4b70e56b3ba
c.srai x13, 3 # perform operation

# Testcase cp_imm_shift
li x17, 0xea25270f953f39f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb9b57ee868b0c950
c.srai x9, 4 # perform operation

# Testcase cp_imm_shift
li x10, 0xa3ba093bd981dc1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc8117dd0a000d9c3
c.srai x10, 5 # perform operation

# Testcase cp_imm_shift
li x30, 0x7520da7109572e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb261a5e9afbc5c98
c.srai x14, 6 # perform operation

# Testcase cp_imm_shift
li x22, 0xd80c5ac2ca8518b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4b1951151e4668a7
c.srai x14, 7 # perform operation

# Testcase cp_imm_shift
li x15, 0xa4b42e6e5d91d677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x250cca6fd5f90202
c.srai x15, 8 # perform operation

# Testcase cp_imm_shift
li x20, 0x705eb7e79bc81ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb8ff8001ae8b41fe
c.srai x12, 9 # perform operation

# Testcase cp_imm_shift
li x4, 0x65e161673e81c3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3dfc3334438e8289
c.srai x12, 10 # perform operation

# Testcase cp_imm_shift
li x3, 0x7df241143237f6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd1b21a2163915589
c.srai x11, 11 # perform operation

# Testcase cp_imm_shift
li x31, 0x7e68315bb0219ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa249057f17180055
c.srai x15, 12 # perform operation

# Testcase cp_imm_shift
li x16, 0x0c6c2c4741c56d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6ca4223b977142fb
c.srai x8, 13 # perform operation

# Testcase cp_imm_shift
li x24, 0xc0ac92d78515f3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0454a7f6a189d399
c.srai x8, 14 # perform operation

# Testcase cp_imm_shift
li x2, 0x4de761e6b7540902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa9cc7f4180b768b8
c.srai x10, 15 # perform operation

# Testcase cp_imm_shift
li x14, 0x325efae4c7c95aff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xeb7cfc348f885ac0
c.srai x14, 16 # perform operation

# Testcase cp_imm_shift
li x19, 0x724049d0bc3358b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc62ad25211e81737
c.srai x11, 17 # perform operation

# Testcase cp_imm_shift
li x4, 0xcc289583246d67a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xea545a5e1d5b86c6
c.srai x12, 18 # perform operation

# Testcase cp_imm_shift
li x28, 0x9ceae01af3f4264b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8f1fc05e05c7e81c
c.srai x12, 19 # perform operation

# Testcase cp_imm_shift
li x11, 0x8df0901e2d0e54cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb7a59a688528d7d9
c.srai x11, 20 # perform operation

# Testcase cp_imm_shift
li x12, 0x48f49a1c01c6efca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xce83a363995cb692
c.srai x12, 21 # perform operation

# Testcase cp_imm_shift
li x15, 0x3b926ba293502bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x895876a4200cf370
c.srai x15, 22 # perform operation

# Testcase cp_imm_shift
li x11, 0xef7d23f76c94b60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x01d3745920b4a0e0
c.srai x11, 23 # perform operation

# Testcase cp_imm_shift
li x8, 0xd64d8a7904a9c088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd8f631f1e0d6dc20
c.srai x8, 24 # perform operation

# Testcase cp_imm_shift
li x17, 0xe44bc45633b54ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa2b62edb25c6f911
c.srai x9, 25 # perform operation

# Testcase cp_imm_shift
li x16, 0xc9235e7f19882acb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x002bced1f6eb92d8
c.srai x8, 26 # perform operation

# Testcase cp_imm_shift
li x21, 0x9edf00db5bff7d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x831bb7f8888b683a
c.srai x13, 27 # perform operation

# Testcase cp_imm_shift
li x29, 0x61d72bb58a35231f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf58a40c138db70d3
c.srai x13, 28 # perform operation

# Testcase cp_imm_shift
li x12, 0x6d395f45a8dc27a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x50fca783334154f3
c.srai x12, 29 # perform operation

# Testcase cp_imm_shift
li x27, 0x62b6f9fb132d9fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x59cc4df30e10d818
c.srai x11, 30 # perform operation

# Testcase cp_imm_shift
li x1, 0xfaeff770c7a6e17f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x999c3b0f915f9e43
c.srai x9, 31 # perform operation

# Testcase cp_imm_shift
li x2, 0xda22911295693a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc905a7fd1d8822e5
c.srai x10, 32 # perform operation

# Testcase cp_imm_shift
li x9, 0x5efcd17a4ddcf278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x615ac9f20c1e194b
c.srai x9, 33 # perform operation

# Testcase cp_imm_shift
li x22, 0x8cd3fd380f66d6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc0c2b2dffe0f2cd2
c.srai x14, 34 # perform operation

# Testcase cp_imm_shift
li x13, 0x182a0447bcb2d6da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9685011bc50b6489
c.srai x13, 35 # perform operation

# Testcase cp_imm_shift
li x31, 0xe262883efc8635c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x65708eb43360e4f2
c.srai x15, 36 # perform operation

# Testcase cp_imm_shift
li x13, 0xd0e2a1fec0f8c995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf1fd41ce7e6731b0
c.srai x13, 37 # perform operation

# Testcase cp_imm_shift
li x1, 0xf957239abc7757cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb30e1899b7a24225
c.srai x9, 38 # perform operation

# Testcase cp_imm_shift
li x17, 0xabbb98b8f2b2cdd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x79e3eae2f0f72059
c.srai x9, 39 # perform operation

# Testcase cp_imm_shift
li x11, 0x943715117145200c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x060d21b2b6cb6fcb
c.srai x11, 40 # perform operation

# Testcase cp_imm_shift
li x7, 0xa63de8bca10118d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x21ab249694f36d5b
c.srai x15, 41 # perform operation

# Testcase cp_imm_shift
li x6, 0xfd188e0f8b0f6f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec4310f2cc9c5b33
c.srai x14, 42 # perform operation

# Testcase cp_imm_shift
li x24, 0x4736016bf2a2d3ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x330edde4ad0a63e6
c.srai x8, 43 # perform operation

# Testcase cp_imm_shift
li x19, 0x205828790d4fddc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1d041d09a4003e24
c.srai x11, 44 # perform operation

# Testcase cp_imm_shift
li x11, 0x074d033f747eb2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc17df1e5ff7e8035
c.srai x11, 45 # perform operation

# Testcase cp_imm_shift
li x29, 0xc1c94b2265bd0c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc13c7ca569c4f077
c.srai x13, 46 # perform operation

# Testcase cp_imm_shift
li x4, 0xba26410bc54a8be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2d72750b655e2f10
c.srai x12, 47 # perform operation

# Testcase cp_imm_shift
li x27, 0x49971bdd9cbead86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3e3da5a940a83480
c.srai x11, 48 # perform operation

# Testcase cp_imm_shift
li x1, 0xd9b9d3cff372d17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa675f4f51d395635
c.srai x9, 49 # perform operation

# Testcase cp_imm_shift
li x23, 0x5050867a7c74f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf1cfd475249656bc
c.srai x15, 50 # perform operation

# Testcase cp_imm_shift
li x13, 0x861fb9e1b8e70e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe4e28e72d24a2213
c.srai x13, 51 # perform operation

# Testcase cp_imm_shift
li x18, 0x8b7125749d159315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbbc24297370351ac
c.srai x10, 52 # perform operation

# Testcase cp_imm_shift
li x25, 0x2cf79ccb470f7c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0bcac0b6a124cbce
c.srai x9, 53 # perform operation

# Testcase cp_imm_shift
li x11, 0xf738a607e23b607f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf031f4cfba709e1c
c.srai x11, 54 # perform operation

# Testcase cp_imm_shift
li x7, 0x58c35b1de642a21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2f5e0d0e0896bc97
c.srai x15, 55 # perform operation

# Testcase cp_imm_shift
li x19, 0x029068ec74f2ef03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa2f299e82a87e63b
c.srai x11, 56 # perform operation

# Testcase cp_imm_shift
li x8, 0x1d7ddc47b3626f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd8e505aaa693c9bc
c.srai x8, 57 # perform operation

# Testcase cp_imm_shift
li x17, 0x9331c40156caae1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x83e2f2a5fb29a27b
c.srai x9, 58 # perform operation

# Testcase cp_imm_shift
li x27, 0x78c74f34ab66934f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0c67af8f1d7da64b
c.srai x11, 59 # perform operation

# Testcase cp_imm_shift
li x31, 0x512991b0ca962ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3866ee6aa2789c60
c.srai x15, 60 # perform operation

# Testcase cp_imm_shift
li x5, 0xbd2160bc3bd84f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80b43a62233f59f0
c.srai x13, 61 # perform operation

# Testcase cp_imm_shift
li x4, 0x577975c65b833b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdb01859949c497b2
c.srai x12, 62 # perform operation

# Testcase cp_imm_shift
li x30, 0x341b70c06ff8aacd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x298a5d174ddc57be
c.srai x14, 63 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb5339021b4e794eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea88745505f1980a
c.srai x8, 63 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x13c93a5df7877b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4faee50577b12874
c.srai x9, 32 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x24b1a37ae75a14ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5dd19afe7a61521a
c.srai x10, 3 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x26865d299ae62829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4a168b75d57d60f6
c.srai x11, 58 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf883bcfc4f6eb3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0eb953af3296e092
c.srai x12, 48 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x14ab4a4ecff8b538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdcad4c5bcb112a79
c.srai x13, 53 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc99801556447941a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x501c81eb0795bbe2
c.srai x14, 21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe9ad71e074b78d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7cad6bc480121771
c.srai x15, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x14, 0x09b98142d1e5184b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000
c.srai x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x15, 0x76714af1c13ee415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002
c.srai x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x2, 0x1e61d50ee47ee0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000004
c.srai x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1fffffffe Shifted by 1)
li x26, 0xd0ca5f292c36878a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001fffffffe
c.srai x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1fffffffc Shifted by 1)
li x19, 0xf1ac8938e37c4e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001fffffffc
c.srai x11, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x200000000 Shifted by 1)
li x24, 0x18b1ce26f900650c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000200000000
c.srai x8, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x200000002 Shifted by 1)
li x27, 0xe49f8fbe8151f4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000200000002
c.srai x11, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe Shifted by 1)
li x2, 0xf6be269c3c90abb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe
c.srai x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffc Shifted by 1)
li x20, 0x8ad0202a398941f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffc
c.srai x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x377910eec75d0dee Shifted by 1)
li x9, 0x19b17630533a7c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x377910eec75d0dee
c.srai x9, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
