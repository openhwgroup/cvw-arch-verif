//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.srai.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-c.ld.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x132abc6e0882008a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xab4db053a636126e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x8) # store value to put something in memory
c.ld x8, 8(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa00a359127b3d6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5eec509ce28e3aaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x12, 144(x9) # store value to put something in memory
c.ld x9, 144(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x93730e40e916f7be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5842e1d256aa6276 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.sd x12, 136(x10) # store value to put something in memory
c.ld x10, 136(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6ddeff2766e0502d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf63f393ce07bfe2c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x9, 0(x11) # store value to put something in memory
c.ld x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9b172a99baff9fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x89e9283ecece0647 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x12) # store value to put something in memory
c.ld x12, 232(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4fbd22f154155bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x91fd6e8aa010747b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -160 # sub immediate from rs1 to counter offset
c.sd x9, 160(x13) # store value to put something in memory
c.ld x13, 160(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x91e93342ba2ddf46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x228b22dbe1755aa1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x15, 72(x14) # store value to put something in memory
c.ld x14, 72(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8914c799ab6b9ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x447fa6c483af5608 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -216 # sub immediate from rs1 to counter offset
c.sd x11, 216(x15) # store value to put something in memory
c.ld x15, 216(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9ca11a3edc71213c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5c3d17be1e69a08e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.sd x15, 200(x11) # store value to put something in memory
c.ld x8, 200(x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x180d73c0c70d2206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc8b8c62c0ff8b09b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x14) # store value to put something in memory
c.ld x9, 88(x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x4692c97230e52053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8b71a73baa06fe0d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x15, 96(x13) # store value to put something in memory
c.ld x10, 96(x13) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9cd18bdbc7b90a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x550705489dacf7c9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x12) # store value to put something in memory
c.ld x11, 112(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8abcd22e2d2d5cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7b905a72bcf7ab89 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -128 # sub immediate from rs1 to counter offset
c.sd x10, 128(x11) # store value to put something in memory
c.ld x12, 128(x11) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x35270490206c1265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaabbe152c01685f5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sd x9, 64(x13) # store value to put something in memory
c.ld x13, 64(x13) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x12903a3c0b875295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xff325bddd681ed91 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sd x11, 72(x12) # store value to put something in memory
c.ld x14, 72(x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8da17e86554581c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd9939d36343371a9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x15) # store value to put something in memory
c.ld x15, 32(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x1e2a58e77bb3ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0880e8f741f4d64e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x11, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x9a7dc151a00f4c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x9) # store value to put something in memory
c.ld x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xff4d593772dc8989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x11) # store value to put something in memory
c.ld x10, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x911bbfbeff725837 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xad583ae1739e3387 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x14, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0xf76382adc075783f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sd x10, 8(x15) # store value to put something in memory
c.ld x15, 8(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0xc2e395b4afb7bcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x15) # store value to put something in memory
c.ld x9, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x50d6b34d95124ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9b76db84e6542f28 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x9a0a222f2ec2aa62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x10) # store value to put something in memory
c.ld x13, 16(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x531f9b48daf97791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x11) # store value to put something in memory
c.ld x15, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0x0b8c0712f050b408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf8e997731250f4d6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x10) # store value to put something in memory
c.ld x10, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0x8d3f2f074e0515c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x12) # store value to put something in memory
c.ld x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x20, 0x86bb3b3685b15c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x12, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x21, 0x3aaf06c9936a83ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc0a0acbf57ebdc2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x10) # store value to put something in memory
c.ld x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x2, 0xc90b79e61fbb7b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x11) # store value to put something in memory
c.ld x10, 8(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0xc14da6b36421f072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x15, 248(x12) # store value to put something in memory
c.ld x15, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0xa995784b8eb01985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeabd24f2ff9652bd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x13, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0x2de1bc82a76c5cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -248 # sub immediate from rs1 to counter offset
c.sd x10, 248(x14) # store value to put something in memory
c.ld x15, 248(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x28, 0xf8156d3b19fe1eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -248 # sub immediate from rs1 to counter offset
c.sd x12, 248(x13) # store value to put something in memory
c.ld x12, 248(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x10, 0xeef75afcb03aa83e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e6b795c76069bcc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x8) # store value to put something in memory
c.ld x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x12, 0xcbef79613d2f0ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x8, 240(x11) # store value to put something in memory
c.ld x12, 240(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x3, 0xdc39c4bc882465ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x15) # store value to put something in memory
c.ld x11, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x5e1b53973358dcee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4106929bcd128c7e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x21, 0xf249b0a0c65c6845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x13, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x7583dfe6a6075f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x8) # store value to put something in memory
c.ld x11, 248(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x9, 0xd9fc7e5eceb0b88c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1dfec85109ba9d91 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x8) # store value to put something in memory
c.ld x9, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0xbda9196ce77298f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x12, 240(x9) # store value to put something in memory
c.ld x13, 240(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x4, 0xa3e8b5faf51d8938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x14) # store value to put something in memory
c.ld x12, 248(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x12, 0x3f39259ac17bb822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf77331f71bd891ed # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x30, 0xf6eb45b49fa3ab1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x13) # store value to put something in memory
c.ld x14, 184(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x28, 0xfd1430f4f5287b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x8) # store value to put something in memory
c.ld x12, 248(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0x15815dd728d3df9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3524e7dd294b3789 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x14, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x6, 0x3630e533e099175c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sd x14, 80(x11) # store value to put something in memory
c.ld x14, 80(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xce7482d26515edd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x11) # store value to put something in memory
c.ld x8, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x30, 0x384a7389e386962a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x47ac7036957ea779 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x8) # store value to put something in memory
c.ld x14, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x31, 0x89d8b5fc04c7802b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x10, 168(x8) # store value to put something in memory
c.ld x15, 168(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0xc42c367afedb1a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x10) # store value to put something in memory
c.ld x15, 248(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xaf0a6f4385213c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa9dfed6847be3ae6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x12, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x0901b2f756c07bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x10) # store value to put something in memory
c.ld x11, 248(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0xa43e3e6f8f2ed4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x9) # store value to put something in memory
c.ld x12, 248(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x528af8930fbed171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7c4e175cf59d5a4b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0xeef8611c3267fd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -240 # sub immediate from rs1 to counter offset
c.sd x9, 240(x10) # store value to put something in memory
c.ld x14, 240(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x405bc730c0e44ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x12, 248(x9) # store value to put something in memory
c.ld x14, 248(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xf04d06deb8d721c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa1ccbc88570366ca # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x12, 0(x8) # store value to put something in memory
c.ld x13, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0xb649dcf24b951a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x12, 0(x13) # store value to put something in memory
c.ld x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x9be0eb74b659b8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x15) # store value to put something in memory
c.ld x14, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x24, 0x0c4f6bdece486e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x71f95f1f8def3d33 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x5, 0x39865581e593e89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x14) # store value to put something in memory
c.ld x13, 8(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x26, 0xecf761e205c19fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x15, 248(x12) # store value to put something in memory
c.ld x10, 248(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xf21a23e5aa2733ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd41ad3626bf05b8c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -216 # sub immediate from rs1 to counter offset
c.sd x10, 216(x8) # store value to put something in memory
c.ld x13, 216(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x5b58c92cda944596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x231b625d0ae0fbe9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.sd x12, 200(x9) # store value to put something in memory
c.ld x11, 200(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xe94d89bf0240d9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6b7c6ee55e78677d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sd x12, 120(x10) # store value to put something in memory
c.ld x13, 120(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x59423e4564202404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x715216436b7dfd4e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -144 # sub immediate from rs1 to counter offset
c.sd x13, 144(x11) # store value to put something in memory
c.ld x11, 144(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x6163cf562bb1b135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe5662b92d51bcd8f # initialize rs2
la x12, scratch # base address 
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x12) # store value to put something in memory
c.ld x9, 16(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x5510db1a45a09da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x055da4f5825653f1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x13) # store value to put something in memory
c.ld x14, 184(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xb91b0672cfcbebcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf501ea1521bdb670 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -176 # sub immediate from rs1 to counter offset
c.sd x11, 176(x14) # store value to put something in memory
c.ld x13, 176(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x929c7714eee840fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc1edc6143f44e54 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x15) # store value to put something in memory
c.ld x10, 80(x15) # perform operation

# Testcase cp_imm_mul
li x3, 0xc75d8a3c684bd2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0d52cfb3908f0518 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x8) # store value to put something in memory
c.ld x11, 0(x8) # perform operation

# Testcase cp_imm_mul
li x28, 0x2b1d26b4cc2352b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfe84d38111a03427 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x8) # store value to put something in memory
c.ld x12, 8(x8) # perform operation

# Testcase cp_imm_mul
li x25, 0xdbe99d35e276d1e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5c7d627ed5c6c1ab # initialize rs2
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sd x12, 16(x15) # store value to put something in memory
c.ld x9, 16(x15) # perform operation

# Testcase cp_imm_mul
li x4, 0x67cce4147698ce75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xca754b957f06edaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, -24 # sub immediate from rs1 to counter offset
c.sd x15, 24(x10) # store value to put something in memory
c.ld x12, 24(x10) # perform operation

# Testcase cp_imm_mul
li x16, 0xb17748541adb094b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1085a2492f53bb82 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x8) # store value to put something in memory
c.ld x8, 32(x8) # perform operation

# Testcase cp_imm_mul
li x13, 0xaac88af97ebeb94f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb2f22790eee57505 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sd x14, 40(x11) # store value to put something in memory
c.ld x13, 40(x11) # perform operation

# Testcase cp_imm_mul
li x6, 0xb758fc94ccce0e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8adca0ba5b4c3ed6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -48 # sub immediate from rs1 to counter offset
c.sd x12, 48(x11) # store value to put something in memory
c.ld x14, 48(x11) # perform operation

# Testcase cp_imm_mul
li x27, 0x9319f247eee79d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb37950e1bb578056 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sd x8, 56(x13) # store value to put something in memory
c.ld x11, 56(x13) # perform operation

# Testcase cp_imm_mul
li x3, 0xffb5972534a04e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5e9d0e908aa08c0d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sd x10, 64(x13) # store value to put something in memory
c.ld x11, 64(x13) # perform operation

# Testcase cp_imm_mul
li x23, 0xf8f0ff9bbbda7e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa037eb6fdea482d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x13, 72(x14) # store value to put something in memory
c.ld x15, 72(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0x2c353b5bd9532756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d5759d18d5c8fdf # initialize rs2
la x10, scratch # base address 
addi x10, x10, -80 # sub immediate from rs1 to counter offset
c.sd x11, 80(x10) # store value to put something in memory
c.ld x10, 80(x10) # perform operation

# Testcase cp_imm_mul
li x4, 0x8ca23452c6fdae5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x94d621bb3f0a6d8f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sd x8, 88(x15) # store value to put something in memory
c.ld x12, 88(x15) # perform operation

# Testcase cp_imm_mul
li x3, 0x46b5ab079740dee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6aa24f0f271fc3f3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sd x12, 96(x11) # store value to put something in memory
c.ld x11, 96(x11) # perform operation

# Testcase cp_imm_mul
li x5, 0x2b99a407f3a13037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ca01f2c40f0080b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -104 # sub immediate from rs1 to counter offset
c.sd x13, 104(x12) # store value to put something in memory
c.ld x13, 104(x12) # perform operation

# Testcase cp_imm_mul
li x22, 0x1f4ef5c949eea72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x43a7055376fad308 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x11) # store value to put something in memory
c.ld x14, 112(x11) # perform operation

# Testcase cp_imm_mul
li x21, 0x6b59ba949f19a4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3700e3918b96a105 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sd x9, 120(x13) # store value to put something in memory
c.ld x13, 120(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x53bd3350da49d674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa2c45cd59e9c78bc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -128 # sub immediate from rs1 to counter offset
c.sd x9, 128(x12) # store value to put something in memory
c.ld x15, 128(x12) # perform operation

# Testcase cp_imm_mul
li x17, 0xb24eff4934376e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbaabb6590e6d9ba1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.sd x15, 136(x10) # store value to put something in memory
c.ld x9, 136(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xa4ff3651ae1988ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc44ec7648e21bf0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -144 # sub immediate from rs1 to counter offset
c.sd x10, 144(x11) # store value to put something in memory
c.ld x15, 144(x11) # perform operation

# Testcase cp_imm_mul
li x4, 0xc841403fbab9c1ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x887375c33b42be2b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -152 # sub immediate from rs1 to counter offset
c.sd x9, 152(x15) # store value to put something in memory
c.ld x12, 152(x15) # perform operation

# Testcase cp_imm_mul
li x2, 0x9f3074acd7a2399e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2052a97fda6fc40 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -160 # sub immediate from rs1 to counter offset
c.sd x13, 160(x9) # store value to put something in memory
c.ld x10, 160(x9) # perform operation

# Testcase cp_imm_mul
li x7, 0x6b3bb4713b170a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x66be802bf64be4e6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.sd x9, 168(x15) # store value to put something in memory
c.ld x15, 168(x15) # perform operation

# Testcase cp_imm_mul
li x20, 0x87c6501047d07755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1d887e3fd79b494b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x9, 176(x13) # store value to put something in memory
c.ld x12, 176(x13) # perform operation

# Testcase cp_imm_mul
li x16, 0xbaeee05d72c40ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaf72e825139df672 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x11, 184(x8) # store value to put something in memory
c.ld x8, 184(x8) # perform operation

# Testcase cp_imm_mul
li x14, 0xa332f8b59b769b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe582ecd1fa42e418 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x10) # store value to put something in memory
c.ld x14, 192(x10) # perform operation

# Testcase cp_imm_mul
li x24, 0x261c291a8011eea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x282aa85542c71e26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.sd x10, 200(x9) # store value to put something in memory
c.ld x8, 200(x9) # perform operation

# Testcase cp_imm_mul
li x4, 0x630c2de6fabe28af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x99a720afff93d952 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -208 # sub immediate from rs1 to counter offset
c.sd x10, 208(x13) # store value to put something in memory
c.ld x12, 208(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x9c1c7cd3757b4eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x76aa4b459bccbd12 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -216 # sub immediate from rs1 to counter offset
c.sd x14, 216(x15) # store value to put something in memory
c.ld x15, 216(x15) # perform operation

# Testcase cp_imm_mul
li x28, 0xaa7822ce42631ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0e33b13924456e5e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x10) # store value to put something in memory
c.ld x12, 224(x10) # perform operation

# Testcase cp_imm_mul
li x22, 0xb97cb8fc76df18f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7efcc2ea5c30577d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -232 # sub immediate from rs1 to counter offset
c.sd x9, 232(x13) # store value to put something in memory
c.ld x14, 232(x13) # perform operation

# Testcase cp_imm_mul
li x15, 0xa8d47885cf98f270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e8563f242b221f3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -240 # sub immediate from rs1 to counter offset
c.sd x14, 240(x10) # store value to put something in memory
c.ld x15, 240(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xece8084e36259354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc83aba9a2f34e2e0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x15, 248(x12) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.slli.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd41f4ef5a589af4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x48a26ee2fe072814
c.slli x0, 33 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc48cdb5c49714655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x72e113ce40e01323
c.slli x1, 13 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa8cbce9262c5ae83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb21589e184ec1b63
c.slli x2, 55 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x78b5f988c42fd0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc19638627fc94bd6
c.slli x3, 59 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xc913d79e13f4eb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x802ca69e54ca3f40
c.slli x4, 19 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x35de52340f8a0d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00d4dc204d527010
c.slli x5, 27 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xeb554bd2bd3cbb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5d0717dd71b8bdcc
c.slli x6, 62 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc9f42f825f82334f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa68c655bcb80a0b0
c.slli x7, 27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe0c67735704a5c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0fae6e528dbe0c4
c.slli x8, 9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x52815ebca7a45573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x174b9f492ee009aa
c.slli x9, 54 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd5961bc922a0addc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa8edb7e81413ba28
c.slli x10, 11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8f7dc091cb46c493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4bac4f02603e2f79
c.slli x11, 45 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb6647979e53e274b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0ed0f966c81ab8a
c.slli x12, 33 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9f9a2608b8efd1f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80af04e711a5a63e
c.slli x13, 37 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8f65e66e7ca0eb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x09b97576515294b6
c.slli x14, 34 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x511623a90992edfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xea02329d23e1a149
c.slli x15, 37 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1b6d182c20aae08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8f75c22373198d8c
c.slli x16, 20 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfee39cc6c3a558ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc2b0b24fe8327c5e
c.slli x17, 24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xafcfa80c4ab112fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x563586b2b9eca42c
c.slli x18, 35 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xaddc5ebca13d7fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xef2ec7962bd90fc0
c.slli x19, 36 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xeaff20a1522a67c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x22f115ca2a73ecca
c.slli x20, 58 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6acd1ab0ed68fcd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcb5af3ec108f1679
c.slli x21, 23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf8e7a4f1861de518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1173ebb82e7d6c29
c.slli x22, 38 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb1e076d1a1035a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbce3d1f6ee3273cb
c.slli x23, 36 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x8eab4608c1812762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfddb82305243ae2d
c.slli x24, 2 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x20c308e9947e725c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9073b84f59550b11
c.slli x25, 46 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb2dad07b7d2dce33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1c7791b1783fc96a
c.slli x26, 60 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1df96aac4b42dc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbf72c9b939c732f8
c.slli x27, 9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x86a3555769ce7fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8c34d461abd73675
c.slli x28, 56 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xecb9a8bef75f020a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x03953767f9b26aaa
c.slli x29, 62 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9e55423a4cec2fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x944a4ddd01b2df9d
c.slli x30, 42 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7a8dd932908d5c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f33ff97d35f721e
c.slli x31, 48 # perform operation

# Testcase cp_imm_shift
li x13, 0x1102a43abe5b6633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x57e8c5c207dd92ae
c.slli x13, 1 # perform operation

# Testcase cp_imm_shift
li x18, 0xd4a000e3c1755473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x681695bff420be16
c.slli x18, 2 # perform operation

# Testcase cp_imm_shift
li x30, 0xd9bd9adacee4307d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xca4fbb45abc33f88
c.slli x30, 3 # perform operation

# Testcase cp_imm_shift
li x3, 0x39b00077f9de30f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa04f53a1d0770ae8
c.slli x3, 4 # perform operation

# Testcase cp_imm_shift
li x22, 0xe97611289bb23f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x428dad41b0e21bf5
c.slli x22, 5 # perform operation

# Testcase cp_imm_shift
li x10, 0xdb9cbeaa0312f754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6feaac8e74a7a3e1
c.slli x10, 6 # perform operation

# Testcase cp_imm_shift
li x7, 0x528197d37b59d449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x53ec309a94d30946
c.slli x7, 7 # perform operation

# Testcase cp_imm_shift
li x17, 0x044a65f2f0fdfd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80f6ea871f6620eb
c.slli x17, 8 # perform operation

# Testcase cp_imm_shift
li x7, 0xc90dab73bc0e33cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x583ee2d195d26846
c.slli x7, 9 # perform operation

# Testcase cp_imm_shift
li x29, 0xa57c6c98dc507822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6aacebf242a3ab18
c.slli x29, 10 # perform operation

# Testcase cp_imm_shift
li x20, 0x314c66506808655d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3decb4938f7a8857
c.slli x20, 11 # perform operation

# Testcase cp_imm_shift
li x4, 0x35e67f97802e0d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9526e8f8c994e128
c.slli x4, 12 # perform operation

# Testcase cp_imm_shift
li x17, 0x5ac6365cacdfa85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x77874b10d8f85671
c.slli x17, 13 # perform operation

# Testcase cp_imm_shift
li x20, 0x5506d024a919539f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb38dca7f40fcdc2c
c.slli x20, 14 # perform operation

# Testcase cp_imm_shift
li x22, 0x54b7d4976af17898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe15152f46ce99ccd
c.slli x22, 15 # perform operation

# Testcase cp_imm_shift
li x16, 0x6f8c055a93a853be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe1244f984b7563a2
c.slli x16, 16 # perform operation

# Testcase cp_imm_shift
li x31, 0x3041ad3a57e209c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xde0198d16dd8da2e
c.slli x31, 17 # perform operation

# Testcase cp_imm_shift
li x19, 0x52836c18b3bcd16a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdc581da0814a9058
c.slli x19, 18 # perform operation

# Testcase cp_imm_shift
li x8, 0x511d6739efda8479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x747d032af4a883a6
c.slli x8, 19 # perform operation

# Testcase cp_imm_shift
li x22, 0xf2ed4d3fef7e3ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3516c96f29f7fc5c
c.slli x22, 20 # perform operation

# Testcase cp_imm_shift
li x12, 0xd1c5c7cf86897e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d047211e3b36d4d
c.slli x12, 21 # perform operation

# Testcase cp_imm_shift
li x9, 0xc4465623871e458f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb9a205dd4e31b2db
c.slli x9, 22 # perform operation

# Testcase cp_imm_shift
li x13, 0x94f2a2f09d9a5898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x02fac52dff476625
c.slli x13, 23 # perform operation

# Testcase cp_imm_shift
li x26, 0x8d4dd7b2af146f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x590a0686dd777795
c.slli x26, 24 # perform operation

# Testcase cp_imm_shift
li x23, 0x24bad618d14dbb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6072418e6f2f54c5
c.slli x23, 25 # perform operation

# Testcase cp_imm_shift
li x23, 0x38a49efe16705cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe806173d4285bdc2
c.slli x23, 26 # perform operation

# Testcase cp_imm_shift
li x24, 0xe8f4327e4ff7cb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x96f36f9d414b765b
c.slli x24, 27 # perform operation

# Testcase cp_imm_shift
li x27, 0x9b8669bb7ea47893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x87a9a9e896aba5a8
c.slli x27, 28 # perform operation

# Testcase cp_imm_shift
li x29, 0xb2f04c434b665462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc50fa9f1e41f4a20
c.slli x29, 29 # perform operation

# Testcase cp_imm_shift
li x23, 0xac7c2f705f5cb4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0d3b811adb67b4c2
c.slli x23, 30 # perform operation

# Testcase cp_imm_shift
li x27, 0x565aa3aeaa154428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdbc0d6da5359f23c
c.slli x27, 31 # perform operation

# Testcase cp_imm_shift
li x14, 0xa9bdadd2e7ade020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa605888ddbda0868
c.slli x14, 32 # perform operation

# Testcase cp_imm_shift
li x7, 0x08f5ebe890fd545d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x82afa9d3de350231
c.slli x7, 33 # perform operation

# Testcase cp_imm_shift
li x15, 0x485901c32389c79b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc1703f43b1b12805
c.slli x15, 34 # perform operation

# Testcase cp_imm_shift
li x16, 0x26395d87cdf8063f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x240c6c76241aa575
c.slli x16, 35 # perform operation

# Testcase cp_imm_shift
li x26, 0x499398bc7176b1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xec043bae4d8b9957
c.slli x26, 36 # perform operation

# Testcase cp_imm_shift
li x13, 0x982b6fbf5109b3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x85f800f499c9fb53
c.slli x13, 37 # perform operation

# Testcase cp_imm_shift
li x12, 0x45871ccefc09ba32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0b09cb2b5b8c6a80
c.slli x12, 38 # perform operation

# Testcase cp_imm_shift
li x30, 0x70a8d4760947813e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x89991113d2f0d4c2
c.slli x30, 39 # perform operation

# Testcase cp_imm_shift
li x31, 0xd55c26f2523f1d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x97eedcaddb0165af
c.slli x31, 40 # perform operation

# Testcase cp_imm_shift
li x24, 0x059a43d8ec1eea6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x21c0ebda2a3a1b69
c.slli x24, 41 # perform operation

# Testcase cp_imm_shift
li x14, 0x52973c0d1d2f24bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d8885438fdcec6d
c.slli x14, 42 # perform operation

# Testcase cp_imm_shift
li x7, 0xed8dcfb3bc7045ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd389c3bed81c43c7
c.slli x7, 43 # perform operation

# Testcase cp_imm_shift
li x1, 0x4ded3d9cbcc5804f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf48b8047bcd7ae7f
c.slli x1, 44 # perform operation

# Testcase cp_imm_shift
li x9, 0x9c12958c1eaf6fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe8e17f40f2a84b5e
c.slli x9, 45 # perform operation

# Testcase cp_imm_shift
li x26, 0x39582b7b22ac2c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x794fb4ed3b72b1f1
c.slli x26, 46 # perform operation

# Testcase cp_imm_shift
li x5, 0x0c3284e3eff99a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa6ffd9cc7f4f9688
c.slli x5, 47 # perform operation

# Testcase cp_imm_shift
li x19, 0xc14c46df825d350d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x067971b1bc1dc4d9
c.slli x19, 48 # perform operation

# Testcase cp_imm_shift
li x31, 0x83e18e6534f6fcb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1144c62abfeebd35
c.slli x31, 49 # perform operation

# Testcase cp_imm_shift
li x3, 0x737bea5720a0095c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1dadb3b50198c22b
c.slli x3, 50 # perform operation

# Testcase cp_imm_shift
li x3, 0x68513285b32384b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8b1886b4471181f6
c.slli x3, 51 # perform operation

# Testcase cp_imm_shift
li x13, 0xc699b0ef049fdfff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xadbc21ffa63df7f9
c.slli x13, 52 # perform operation

# Testcase cp_imm_shift
li x10, 0x06c257c7fa7cf670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda79bee28c286cc0
c.slli x10, 53 # perform operation

# Testcase cp_imm_shift
li x20, 0xaf2e8aff5fbf5021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2686560cec8a82c0
c.slli x20, 54 # perform operation

# Testcase cp_imm_shift
li x31, 0x09ff787eefa70098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6bd832910cdfc164
c.slli x31, 55 # perform operation

# Testcase cp_imm_shift
li x20, 0x08a23c0ad854a616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x12627564450c64ee
c.slli x20, 56 # perform operation

# Testcase cp_imm_shift
li x13, 0x46b8f0021de228f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1e1ba61e513ff9d9
c.slli x13, 57 # perform operation

# Testcase cp_imm_shift
li x11, 0x1f61eab34e8bec12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd3e6a6ab5461fc73
c.slli x11, 58 # perform operation

# Testcase cp_imm_shift
li x21, 0xc726efbfee0d9d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2ddc6728502266a3
c.slli x21, 59 # perform operation

# Testcase cp_imm_shift
li x15, 0xe27577b289d5dbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdfa6b593ccf42df6
c.slli x15, 60 # perform operation

# Testcase cp_imm_shift
li x15, 0x3cdac28610be8f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2790bbad6e06706c
c.slli x15, 61 # perform operation

# Testcase cp_imm_shift
li x8, 0xf2b8cd02aeb34112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4b5be4978ee2a25a
c.slli x8, 62 # perform operation

# Testcase cp_imm_shift
li x1, 0xc4763c9d2c175988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a23b65472175aeb
c.slli x1, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x18, 0x1fa4dc35a08a70cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1 Shifted by 1)
li x19, 0xe3c4df3242b8170b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001
c.slli x19, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4000000000000000 Shifted by 1)
li x18, 0x065953af1a46ae42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4000000000000000
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff Shifted by 1)
li x17, 0x3ccb42d2b2508185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000007fffffff
c.slli x17, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000 Shifted by 1)
li x29, 0xddbaca1a617f3c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000080000000
c.slli x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3fffffffffffffff Shifted by 1)
li x18, 0x4c0273d2864c1c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3fffffffffffffff
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff Shifted by 1)
li x16, 0x64c45b37ff1d839d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff
c.slli x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555 Shifted by 1)
li x27, 0xa9e6a4b33a67e66d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555
c.slli x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2dde443bb1d7437b Shifted by 1)
li x21, 0xa53a337d9445d367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2dde443bb1d7437b
c.slli x21, 1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addiw.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x677287ad50224c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x1, -24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xdb9b71d075805a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, 7 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6f070f7ab507642c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x3, -1 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xe05b82446d2143c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, 13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xce1b8adb3a3a9d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa0ac3047352f39e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x6, -18 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xd9d85cc120616e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x7, -9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe13ad76f2f29f067 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x8, -17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x751953458afa583f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, -32 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x688705765ef3c2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x10, 1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xdcadd0403ff108e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x11, 31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x50736ad516c9ccbc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, -12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf5ede88fbea30320 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x13, -23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x740ec89faedf4db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, 19 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe1d147d4b7e1f920 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x15, 22 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa68b83944ac6d40e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x16, -21 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xddd4618cc82fef09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x17, -17 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0ab360c2fee926aa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x18, 1 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9d9db2e8e7fa5f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x19, -11 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x98644de0491a507c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, 31 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd3c05b386808b2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, -29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x869cdb887eb08790 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x22, 29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6b95b3c70bb14f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, -18 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x16d61f4df5750a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x24, 9 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xe91ab3878a99b2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x25, -19 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2107efff9672ea6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x26, 9 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xdb53c864162b9b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x194154774fa0d163 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x28, -17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6d4088746b5b2005 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x29, -7 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xe3cb9fda7dad47bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x30, 13 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2253c1ea11cb9a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x31, -13 # perform operation

# Testcase cp_imm_zero
li x12, 0x14d1acdc05bd869b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, 0 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 0 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 1 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 2 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 31 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 30 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -32 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -31 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -2 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x000000000000000f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, -15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x0000000000000018 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, -23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xffffffffffffffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0x0000000080000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0x000000008000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, -25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x000000007ffffff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x29, 6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x0000000080000004 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x18, -6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0x00000000ffffffe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0x00000000ffffffed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, 17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0x00000000aaaaaac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, -27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x0000000055555574 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x8, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x5, 0x0000000063ae86da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x19, 0x00000000e3ae8710 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x19, -25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x28, -7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x17, -21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x24, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, -10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x13, 23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x10, -9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, 22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, -3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x4, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, -23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, 18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 26 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.bnez.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x51965e9c43e15ebf)
li x6, 0xf0c8d8d814024182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x51965e9c43e15ebf # initialize rs1
c.bnez x10, some_label_for_cbtype_8303616695571094712 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8303616695571094712:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x4e06f090841ffb9b)
li x22, 0x467104d0157e6e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb1f90f6f7be00465 # initialize rs1
c.bnez x8, some_label_for_cbtype_3164004299285443844 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3164004299285443844:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 1 # initialize rs1 to 1
c.bnez x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x72915d022fd059a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c5dce39dddcf4c0 # initialize rs1
c.bnez x8, some_label_for_cbtype_3178619194466532718 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3178619194466532718:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0x10c8796cb8ba0f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf109733c61903f4a # initialize rs1
c.bnez x9, some_label_for_cbtype_6830399578550781260 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6830399578550781260:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0x9150938a1a14bdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x84b0049adeaba321 # initialize rs1
c.bnez x10, some_label_for_cbtype_2778269455060580358 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2778269455060580358:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x39cd365e5ce196f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb5d1e07285ce263f # initialize rs1
c.bnez x11, some_label_for_cbtype_9065073278876509984 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9065073278876509984:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x3963f5984498a073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb36da231efef0046 # initialize rs1
c.bnez x12, some_label_for_cbtype_3489540469956769986 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3489540469956769986:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0xf60a5b93760182c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdbe6cd7b5e08ff42 # initialize rs1
c.bnez x13, some_label_for_cbtype_8101967779179967969 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8101967779179967969:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x1a779157e972b1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7665e92d8aa467be # initialize rs1
c.bnez x14, some_label_for_cbtype_9131224123038967875 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9131224123038967875:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x327f82a771b6e548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4f8af8877293cb7d # initialize rs1
c.bnez x15, some_label_for_cbtype_13361477536776239177 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_13361477536776239177:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x13bd52a5e89a7c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
c.bnez x12, some_label_for_cbtype_9510602713532495462 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9510602713532495462:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0xff301e0824703aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
c.bnez x11, some_label_for_cbtype_15947133769082336251 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15947133769082336251:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x61e12aa57f8147f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
c.bnez x11, some_label_for_cbtype_2908324142551943451 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2908324142551943451:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x0c436dbafbde2aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
c.bnez x15, some_label_for_cbtype_15556263815574298599 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15556263815574298599:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0xde9b89924c22c2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
c.bnez x14, some_label_for_cbtype_16137005066640499770 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_16137005066640499770:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0xe53490dfb085c759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
c.bnez x8, some_label_for_cbtype_15249269376485165030 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15249269376485165030:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x68d091666e27c27f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
c.bnez x14, some_label_for_cbtype_1796596392313360872 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1796596392313360872:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xe7f878820486ec43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
c.bnez x10, some_label_for_cbtype_2766365103813548154 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2766365103813548154:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xdde56eaec1c171b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
c.bnez x11, some_label_for_cbtype_7212243128798848184 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7212243128798848184:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x14, 0x80941d3804d76c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
c.bnez x8, some_label_for_cbtype_1220690957499787813 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1220690957499787813:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5f8bd9d56f424cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.bnez x11, some_label_for_cbtype_8198492838773340117 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8198492838773340117:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0xbfc2ce42f378a4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
c.bnez x10, some_label_for_cbtype_15868151260199525927 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_15868151260199525927:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x048f077414fca297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
c.bnez x8, some_label_for_cbtype_7193481317211733608 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7193481317211733608:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xb0e7f3852f8cc30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
c.bnez x10, some_label_for_cbtype_11986474194452371901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11986474194452371901:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0e44fb7e102d82f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
c.bnez x13, some_label_for_cbtype_11608044951685357789 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11608044951685357789:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x95aea7328d7c4289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
c.bnez x15, some_label_for_cbtype_9556812669317428942 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9556812669317428942:
addi x0, x2, 2
nop
nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.mv.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xac4a67f2f4ec5cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf2732950d2430a0e
c.mv x0, x12 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0e1c9a5cc0fc4730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa90f1031706521f8
c.mv x1, x23 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x273f10db933f12b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x655518bfed154712
c.mv x2, x8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x252b458983a71fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2627ddad80611f37
c.mv x3, x26 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xcd51e77e6fe31bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xee9d438247c6b72c
c.mv x4, x3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x5c184997d04adf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8098d08a3a631084
c.mv x5, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf2187272298dee43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa00fb0cc6a3e1b01
c.mv x6, x13 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5e354dc0c9944b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8939e6b913f799dd
c.mv x7, x12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x89fe8bc23783ad0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc10939914b7cacd9
c.mv x8, x16 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xaf84582e72655a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6958a2243011a94d
c.mv x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8ae360e238819c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a00394466d63e91
c.mv x10, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x586e90f8789c4181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80d11ebedc6bbb8e
c.mv x11, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x529b48a371a2a3ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8225d204914fdbb0
c.mv x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x14b77126a94b9116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb39907075778227b
c.mv x13, x29 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x38bcd1b93c97019f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x99f46bfc0eb2de39
c.mv x14, x21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcbbda2f0dd572d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd59867ee808ac7ad
c.mv x15, x1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0d795c919e9bbaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x164e19c3eccdd2ee
c.mv x16, x27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5dd925da79f9aa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbb8cb4806957a258
c.mv x17, x9 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x781186a1efda74ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x085ac5b9fcac19d8
c.mv x18, x5 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x3b8bb5bb9d0281f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc6179be53e0ce717
c.mv x19, x20 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x377796ed7e56bc67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa3d33b2506dad93d
c.mv x20, x28 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1ca279763171852e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x75a24e4517bcf594
c.mv x21, x23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x832f1e901f7cedeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd2cf7fcfd42bc006
c.mv x22, x6 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xfa71b28a2e16286c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4f252c2397ba34d8
c.mv x23, x19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x758bcc8d2403ba55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdd7bf167b9900517
c.mv x24, x13 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x093a422d9fdc9b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa4b7b1dfad429db9
c.mv x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x4bce480ec28667fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6343c7982fb7705a
c.mv x26, x26 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3bc0e3b4fd291eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1c3c91e938448151
c.mv x27, x18 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe7d9e096ed370ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x31901abb15dcf683
c.mv x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8eb6dae50a00c5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb49673366fa1c518
c.mv x29, x14 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x91149e5a174cc9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x74bb95bee8e310e0
c.mv x30, x7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x067f5c870ceeb7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x24cce03335709bfd
c.mv x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x2658a1f040f3a30f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x792ee68ea21da15a
c.mv x9, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x5e66ec01a12cb45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x72ea287ff0a3954e
c.mv x6, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0xdf27cf68477942ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfad827861bb667e3
c.mv x7, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x21, 0x41c9c6add0e1f71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1d66852929cce7c2
c.mv x21, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0xc68a46a2f83e5e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xae88e303be00eb58
c.mv x14, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0x88e00a6a08c18ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe1e661672c9c77eb
c.mv x21, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x3, 0xacb38e44a527b037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5cecfb803eb28342
c.mv x3, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xbb5775dcf4acfc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5d0a6b4d7c220163
c.mv x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xcd5f5a880aaecd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a69e0ee38ccdfd4
c.mv x20, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x5a6bfab9ca4f9065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x85819a8201e9c27d
c.mv x7, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x595f38e4756ef9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0afe57b921529534
c.mv x24, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0xeeb29f6557208bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x36dea94337846ffa
c.mv x25, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0xef5c6305e21d8bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb75a17f6774c6478
c.mv x1, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x627eb779c4a6e297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa2d302cb23a539eb
c.mv x19, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x2e4c0cd1e659e840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8488b4f43dca9721
c.mv x29, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0x9f92371faa68ff54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1848478bf1d4f83a
c.mv x5, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xe97ea08e0f8ce0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe22babaa7a8b4833
c.mv x6, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x33ffa2b214015bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x13304f3f827d3be4
c.mv x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x4b7372832398d280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x255f14be3b0fd131
c.mv x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x02ac7b8e42aa0f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5e80746bcb00ffa3
c.mv x26, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0x9c51d628c62e1118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x281b7a07bb8d2192
c.mv x13, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0xc12033dcf4c01fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20799bbf5c64c0cc
c.mv x25, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x1081003333c0ef72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x79571f77aceabcb0
c.mv x16, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x13910cd16ba0e70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbadf5c57a6047930
c.mv x11, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xdd9ce005921baed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1e6b79b8113de814
c.mv x20, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0xf4f55fc623012acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbdf01cc1f1d3c43f
c.mv x19, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0xa2aee0395ce67f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x341bf6046bed18ed
c.mv x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0x32d9664c249f98ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb7142a28d6b6b75b
c.mv x10, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0x49d2fd92406bc850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x755cbbbf05979344
c.mv x8, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xa1915691e30d7fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdce1f5b6cdb5ed2e
c.mv x13, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0xd7b350e5bbda93e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe2be38ff5cf0840a
c.mv x9, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x59154ed6bbd2f392)
li x31, 0x02c50b0a7b6e3757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x59154ed6bbd2f392
c.mv x31, x4 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x75f714170a6db0cb)
li x28, 0xf9edc7609ae2fbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8a08ebe8f5924f35
c.mv x28, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x6cf8a5faa6f1e3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x93075a05590e1c3b
c.mv x30, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xa2a26e07777edc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d5d91f8888123da
c.mv x19, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x55852f9db9140cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaa7ad06246ebf34d
c.mv x18, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x29, 0xb01950f6a9a43a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcfe6af09565bc57b
c.mv x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0x2cb4be36c879ef6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x534b41c937861097
c.mv x9, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x17, 0x831962793bb56851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfce69d86c44a97ae
c.mv x17, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x18, 0x29f3acabba86687c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x560c535445799782
c.mv x18, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x17, 0xfe7f09256c3f90a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0180f6da93c06f5a
c.mv x17, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0x1e2491796d34e12e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1db6e8692cb1ed0
c.mv x13, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x7, 0x5e7c5a0431a2806f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfd402e73320c0688
c.mv x7, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xe60df2bb236d6946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc49cb7ef873d4164
c.mv x14, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0x5b06df7f2dc3b02a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfa4e75d62791a52b
c.mv x14, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x081519ee832ed9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf7eae6127cd12617
c.mv x11, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0xd132868863480361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2ecd79789cb7fc9d
c.mv x31, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x15, 0xde1a051f808852bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x21e5fae17f77ad43
c.mv x15, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x17, 0x670ca8719238ad29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x98f3578f6dc752d8
c.mv x17, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x65080d770d77b0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000
c.mv x27, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x5193acb06e09e56a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001
c.mv x11, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x692a3ce6c83e9281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002
c.mv x22, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0x23ad4a07fd1ee877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000
c.mv x19, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0xe334d903552f5c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.mv x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x28656c67433100e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff
c.mv x18, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x93f3ef76c84b4665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe
c.mv x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xd97a25cee830ac13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.mv x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0x75538e60c1db8817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe
c.mv x6, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x1, 0xb0cead06db92109a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7
c.mv x1, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xca49dd1b609ff745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa
c.mv x5, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x461ad2a6405e9511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555
c.mv x7, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xee8c344bff45460b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff
c.mv x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xdce58515e1243206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe
c.mv x23, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x24, 0x5c628de12d4136d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000
c.mv x24, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0x39a99a3836bd8e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001
c.mv x23, x1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sd.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0xb7603110fb77100d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x8, 0x58e9d334cccbd334 # initialize rs2 with random value
addi x12, x12, -144 # sub immediate from rs1 to counter offset
c.sd x8, 144(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x1f377c9d1ddfd6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0xc7241076219b680e # initialize rs2 with random value
addi x15, x15, -208 # sub immediate from rs1 to counter offset
c.sd x9, 208(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x2f66d2b394963d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0xfa6bbcd16867fe84 # initialize rs2 with random value
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sd x10, 16(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x2e6a551869fa88ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xf74a99dff8d06855 # initialize rs2 with random value
addi x12, x12, -192 # sub immediate from rs1 to counter offset
c.sd x11, 192(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x7ca5f03e2a59bfa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x1dfcda6491999407 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sd x12, 80(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x5be81ed782efded8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x86d7df6a43e5e395 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x13, 216(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x5692ffd9b2ccf07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x884bf10c2f8f3f71 # initialize rs2 with random value
addi x15, x15, -208 # sub immediate from rs1 to counter offset
c.sd x14, 208(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0xb4f1bb1c60bd319b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x5cfa186250340843 # initialize rs2 with random value
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x15, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x2fadb3632221fe0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x0000000000000000 # initialize rs2 with random value
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.sd x14, 232(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0x69f0a2cb62989632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0x0000000000000001 # initialize rs2 with random value
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sd x15, 40(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x496efe74019e8ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0000000000000002 # initialize rs2 with random value
addi x14, x14, -152 # sub immediate from rs1 to counter offset
c.sd x9, 152(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xa2c6855dc8936b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x8000000000000000 # initialize rs2 with random value
addi x12, x12, -240 # sub immediate from rs1 to counter offset
c.sd x14, 240(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x14890156b2166f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x8000000000000001 # initialize rs2 with random value
addi x15, x15, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0x46515ada43c7bf87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x7fffffffffffffff # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x2b0faa9e01013ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x7ffffffffffffffe # initialize rs2 with random value
addi x14, x14, -200 # sub immediate from rs1 to counter offset
c.sd x10, 200(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x1fab6d81eac7157e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x13, 0xffffffffffffffff # initialize rs2 with random value
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sd x13, 40(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0x8ace1def96b5fde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0xfffffffffffffffe # initialize rs2 with random value
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x21, 0x622f9833adf5ad48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0x5bbc887763ae86f7 # initialize rs2 with random value
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sd x8, 112(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x1890eada7e69aaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x12, x12, -192 # sub immediate from rs1 to counter offset
c.sd x15, 192(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x170241ba9b970a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x14, 0x5555555555555555 # initialize rs2 with random value
addi x8, x8, -200 # sub immediate from rs1 to counter offset
c.sd x14, 200(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xc08d4ca26d8a393c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x00000000ffffffff # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xd765aeaf9362ab74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x00000000fffffffe # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x21, 0x0eeb48a510108d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x0000000100000000 # initialize rs2 with random value
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x15, 240(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x0074d99195e3d03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0x0000000100000001 # initialize rs2 with random value
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x15, 176(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x5cdca80d10ad95a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0xb7f92fca188c6f48 # initialize rs2 with random value
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.sd x15, 160(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0xf772cd24ca8ab502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x40a35ee69411f800 # initialize rs2 with random value
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x8, 120(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x9c734e2bd3bc86ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x13, 0xa7e82f293e1c74b9 # initialize rs2 with random value
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sd x13, 120(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x5bacbe5cc5ea02a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0x4f52da6107194687 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x10, 64(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x7c0d3e50cbaee276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0xf70285f0fd4d1f7a # initialize rs2 with random value
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0xe64b1beb0bf31190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x93a97f31f1c347d4 # initialize rs2 with random value
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x5119dae2954af759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0xcf55ab9851970a0d # initialize rs2 with random value
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sd x15, 80(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0x1d3e4ef1592d491c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x7ed6e95c44c988f3 # initialize rs2 with random value
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sd x9, 48(x15) # perform operation 

# Testcase cp_imm_mul
li x27, 0xf9983976be62aa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x20425d43f1d8b3e6 # initialize rs2 with random value
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x10, 0(x13) # perform operation 

# Testcase cp_imm_mul
li x22, 0xb73b121cdeb7a173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xdd10f3492ad1b796 # initialize rs2 with random value
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x12) # perform operation 

# Testcase cp_imm_mul
li x17, 0xf42bb147280419e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x10, 0x218ee6b233550e51 # initialize rs2 with random value
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sd x10, 16(x8) # perform operation 

# Testcase cp_imm_mul
li x16, 0x0f196382d1281a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x41ba24def2d69b12 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sd x12, 24(x13) # perform operation 

# Testcase cp_imm_mul
li x24, 0x637152d0a697ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x12, 0xe79ef936d92ef1d0 # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x8) # perform operation 

# Testcase cp_imm_mul
li x28, 0xdd92fde174736585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x4e2d0ca2c9399cb5 # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sd x14, 40(x10) # perform operation 

# Testcase cp_imm_mul
li x19, 0x1529e8e5e7273b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0x9400314bfd003b71 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sd x15, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x3, 0x5ed02e133bf7a7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x572c3ba634bbbc87 # initialize rs2 with random value
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x14) # perform operation 

# Testcase cp_imm_mul
li x15, 0x750c0a7e3adb26b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0x712ae5be50a8a01d # initialize rs2 with random value
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x15, 64(x12) # perform operation 

# Testcase cp_imm_mul
li x15, 0x0145cc3f541be7b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x8, 0x6cc36177ea66c4fc # initialize rs2 with random value
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sd x8, 72(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0xbeb2c92190ba111f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x36e8c662770a8eb6 # initialize rs2 with random value
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x14) # perform operation 

# Testcase cp_imm_mul
li x31, 0xfc5ca85aa6d5c22f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xe31c54708b2660d9 # initialize rs2 with random value
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sd x9, 88(x11) # perform operation 

# Testcase cp_imm_mul
li x22, 0x2d800de54850100b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x13, 0x8fb23917bb9e6847 # initialize rs2 with random value
addi x12, x12, -96 # sub immediate from rs1 to counter offset
c.sd x13, 96(x12) # perform operation 

# Testcase cp_imm_mul
li x10, 0x34e6dbdd109720d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x14, 0x0e088df07df587d9 # initialize rs2 with random value
addi x8, x8, -104 # sub immediate from rs1 to counter offset
c.sd x14, 104(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x3555de183419a603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0xe564e934fda86329 # initialize rs2 with random value
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sd x8, 112(x14) # perform operation 

# Testcase cp_imm_mul
li x20, 0x333cf225307e6cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xe1ab7cbb225bda1c # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sd x14, 120(x15) # perform operation 

# Testcase cp_imm_mul
li x27, 0x424287da1a4af772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xe8e53ba74382b73f # initialize rs2 with random value
addi x12, x12, -128 # sub immediate from rs1 to counter offset
c.sd x15, 128(x12) # perform operation 

# Testcase cp_imm_mul
li x20, 0xbf14d190e79b9e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x0727ad19ebc3a0ac # initialize rs2 with random value
addi x14, x14, -136 # sub immediate from rs1 to counter offset
c.sd x13, 136(x14) # perform operation 

# Testcase cp_imm_mul
li x22, 0xe7f5493993b006c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x74ebaec435e7a44f # initialize rs2 with random value
addi x15, x15, -144 # sub immediate from rs1 to counter offset
c.sd x12, 144(x15) # perform operation 

# Testcase cp_imm_mul
li x5, 0x4057cf418aee8804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x5ea3c7a03426c1eb # initialize rs2 with random value
addi x12, x12, -152 # sub immediate from rs1 to counter offset
c.sd x14, 152(x12) # perform operation 

# Testcase cp_imm_mul
li x7, 0x303bed7c7ecf3a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xf209e4acc571f8be # initialize rs2 with random value
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.sd x13, 160(x8) # perform operation 

# Testcase cp_imm_mul
li x26, 0x60573a90822a6f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0x7a1abbb91e81f797 # initialize rs2 with random value
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.sd x11, 168(x15) # perform operation 

# Testcase cp_imm_mul
li x21, 0xa5645418d9241726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x11, 0xeb49d95ad569c556 # initialize rs2 with random value
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x11, 176(x13) # perform operation 

# Testcase cp_imm_mul
li x31, 0x98bc463183559cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x0f05ca1e3959c8d2 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x15, 184(x8) # perform operation 

# Testcase cp_imm_mul
li x9, 0x6ce4fc9b2bd86f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x12, 0x9f8ca8412795c054 # initialize rs2 with random value
addi x8, x8, -192 # sub immediate from rs1 to counter offset
c.sd x12, 192(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x277d372ab1fc230f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x5c2063108f9fdba6 # initialize rs2 with random value
addi x15, x15, -200 # sub immediate from rs1 to counter offset
c.sd x13, 200(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0x5a06d1e5b744726a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x901d8208af2ef13b # initialize rs2 with random value
addi x10, x10, -208 # sub immediate from rs1 to counter offset
c.sd x11, 208(x10) # perform operation 

# Testcase cp_imm_mul
li x24, 0x78f487deea2857dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x289a8105b8e9cea8 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x15, 216(x14) # perform operation 

# Testcase cp_imm_mul
li x4, 0xa30f657b86f66b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xad6d53c4b20c383f # initialize rs2 with random value
addi x14, x14, -224 # sub immediate from rs1 to counter offset
c.sd x10, 224(x14) # perform operation 

# Testcase cp_imm_mul
li x11, 0xc0184b4d28436a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x8e288e6ac4389242 # initialize rs2 with random value
addi x12, x12, -232 # sub immediate from rs1 to counter offset
c.sd x14, 232(x12) # perform operation 

# Testcase cp_imm_mul
li x18, 0xdd61b8cc9e192b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0x3f32dbed3be16b73 # initialize rs2 with random value
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x11, 240(x9) # perform operation 

# Testcase cp_imm_mul
li x5, 0xb0b2739854a4c4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x1a352459ba6465d0 # initialize rs2 with random value
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x15) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addw.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x7ed3494a25471c2a)
li x9, 0x7ed3494a25471c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ed3494a25471c2a # initialize leagalized rd to a random value that should get changed
li x8, 0x7ed3494a25471c2a # initialize rs2
c.addw x9, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xad54e0e5eca96a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1fb4e829a1a399f5 # initialize leagalized rd to a random value that should get changed
li x8, 0xcae40408aaa0a952 # initialize rs2
c.addw x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x94fa0905985078fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x882f829bc51709aa # initialize leagalized rd to a random value that should get changed
li x9, 0xdc607c09dbadb77f # initialize rs2
c.addw x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xb9ed700123d19e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbddac27d9766c083 # initialize leagalized rd to a random value that should get changed
li x10, 0xb9236f2e7bc7fbeb # initialize rs2
c.addw x10, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x9b5ab6c394c670b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd1775c8e5959eda # initialize leagalized rd to a random value that should get changed
li x11, 0xe18301f3a4a4e71f # initialize rs2
c.addw x11, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xa605c531e605a592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd0feb6bae10fd60f # initialize leagalized rd to a random value that should get changed
li x12, 0x7abb29908640398b # initialize rs2
c.addw x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x406fef779ef187d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x650cb685895a2aad # initialize leagalized rd to a random value that should get changed
li x13, 0xfcb35790fe88e20f # initialize rs2
c.addw x13, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x64c4f857d2975040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf7dc07750d773ebb # initialize leagalized rd to a random value that should get changed
li x14, 0x554d93546dc462b8 # initialize rs2
c.addw x14, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa8cdcf71f0d46314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc29d897955fa2abf # initialize leagalized rd to a random value that should get changed
li x15, 0x95b498aae199ede3 # initialize rs2
c.addw x15, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5dd9af3cdc5ed953)
li x15, 0x5dbf81be58d730c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x016ab1ea25234c4f # initialize leagalized rd to a random value that should get changed
li x9, 0x5dd9af3cdc5ed953 # initialize rs2
c.addw x15, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x327f1b237c80be2b)
li x4, 0xb88e4b5c57d5a6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3971037775d512a # initialize leagalized rd to a random value that should get changed
li x11, 0xcd80e4dc837f41d5 # initialize rs2
c.addw x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf98b6c054cf6c34d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0e69618f3a7ec3d9 # initialize leagalized rd to a random value that should get changed
li x10, 0x363cdb9af5eb3a78 # initialize rs2
c.addw x8, x10 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdf981ad9cab55890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x933573be874aa4b5 # initialize leagalized rd to a random value that should get changed
li x9, 0xc8a1d379055e0d49 # initialize rs2
c.addw x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x625eb2f142115c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf809f20289f522e0 # initialize leagalized rd to a random value that should get changed
li x11, 0x3ac94fe9ad200123 # initialize rs2
c.addw x10, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x678fbeae5ffd64b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd17b8be4c4485a1 # initialize leagalized rd to a random value that should get changed
li x14, 0x44a864ea94e4ba10 # initialize rs2
c.addw x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb286ab697867892a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48b9406a2163affb # initialize leagalized rd to a random value that should get changed
li x11, 0x5a0e7f4696ae9e93 # initialize rs2
c.addw x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x307489786e038e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe9dcf4a94a65b032 # initialize leagalized rd to a random value that should get changed
li x13, 0x47543c26d58c07e8 # initialize rs2
c.addw x13, x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6b9f985fead76a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d1f601d5ac9ad25 # initialize leagalized rd to a random value that should get changed
li x13, 0xd755365c4dda4821 # initialize rs2
c.addw x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf611f48f4668dfaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x92658881f7141e56 # initialize leagalized rd to a random value that should get changed
li x8, 0x66f94bccdaa36aee # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0xd1d1ec953df652ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7998ad664076fc0b # initialize leagalized rd to a random value that should get changed
li x8, 0xf14b64efa622dbb0 # initialize rs2
c.addw x14, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xf2d8e02618af3458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x19fd91cdfef2616d # initialize leagalized rd to a random value that should get changed
li x9, 0xc07ebfa799b95457 # initialize rs2
c.addw x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x7c9a45c73c33892c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa82dc717816e7c7a # initialize leagalized rd to a random value that should get changed
li x10, 0xb590de3d8395afd2 # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0xd36371125cd91266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80a9fe68f4fdda78 # initialize leagalized rd to a random value that should get changed
li x11, 0x28e871de4ff9c6ee # initialize rs2
c.addw x8, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0xb9b7f8e962a4a361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3cdf606dc9ab6b5b # initialize leagalized rd to a random value that should get changed
li x12, 0x9bbb8ed0f4017014 # initialize rs2
c.addw x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0x7c172d3676800158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8465da43b4f6aa13 # initialize leagalized rd to a random value that should get changed
li x13, 0xafc517f8a771205d # initialize rs2
c.addw x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0x13449303f898c620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2b63c3ac2fbb84d7 # initialize leagalized rd to a random value that should get changed
li x14, 0x18fef93e48c5ceed # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x31dbb7b85b6a6319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfb8e8a09a7ea98f2 # initialize leagalized rd to a random value that should get changed
li x15, 0x1cb5fd9dd0749452 # initialize rs2
c.addw x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xe6b8e873498ff663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000000 # initialize rs2
c.addw x12, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0xbc48421d78be4b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000001 # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xbb835c5ab73413a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.addw x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x17, 0xbf880aef01f93975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000080000000 # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x86d9eb1830110c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000080000001 # initialize rs2
c.addw x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0x22884df422a8a7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x000000007fffffff # initialize rs2
c.addw x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0xb0a08b104a8f3fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x000000007ffffffe # initialize rs2
c.addw x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0xafddf9169a817370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.addw x8, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x7712671a1020a3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.addw x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x29, 0x1cf85ab368fccd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000aaaaaaaa # initialize rs2
c.addw x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x7, 0x46d33be407aa5cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000055555555 # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x31, 0x0dd8afd94e22be48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000063ae86f7 # initialize rs2
c.addw x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x1, 0x1fac6f2a026661ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000e3ae86f7 # initialize rs2
c.addw x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xfb763f35807b709a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x08186734701722a5 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000000 # initialize rs2
c.addw x12, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x3b6995041a63202f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3d27408763eec9d3 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000001 # initialize rs2
c.addw x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x6bd8efb5008913f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfc06c92e2ceee90a # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.addw x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0xb29864ca4ff72cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfd1900ac17a82366 # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000000 # initialize rs2
c.addw x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x4, 0xc8d72e32c939cf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x474d1f6b078502f1 # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x5869bc5c15284279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc76f582c2eaf19d1 # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.addw x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0x450be31cec48207b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x41b483695db6de68 # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffffffffffe # initialize rs2
c.addw x11, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x539a59a04b652e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x30b73cdaabd8f3f2 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0x5c406c055a9dc19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc135a773a7efe811 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.addw x12, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x24, 0xdedfeb522a9e0ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6f4593fe7a21397 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc887763ae86f7 # initialize rs2
c.addw x8, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x80120615a465fac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9b2bd8478576f073 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0xd93480008300a854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf292c29e0f437fc7 # initialize leagalized rd to a random value that should get changed
li x10, 0x5555555555555555 # initialize rs2
c.addw x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x1d3d11da9bc82279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb59c053a8281feaf # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000ffffffff # initialize rs2
c.addw x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xef4a30fe7fe0e74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x71f68ca64c778a00 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000fffffffe # initialize rs2
c.addw x15, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x27, 0x01c8a1ce500bdcbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd5455f59f53fc743 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000000 # initialize rs2
c.addw x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0xf01164740b92a544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a44136be62cf067 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.addw x15, x9 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.subw.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x42196deaf1f8ead4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc31e7300ab12935f # initialize leagalized rd to a random value that should get changed
li x10, 0xdd7df11f42092d5a # initialize rs2
c.subw x8, x10 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf7a47e52f69dfed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x868bef059ffce8f6 # initialize leagalized rd to a random value that should get changed
li x14, 0x4d70c5dee8a6001b # initialize rs2
c.subw x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x628004e716bfe964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc1964d0cec1b032 # initialize leagalized rd to a random value that should get changed
li x10, 0xfe11cc2143610c5a # initialize rs2
c.subw x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x31cd9d41efbf9f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf3dcd08d3663b42f # initialize leagalized rd to a random value that should get changed
li x15, 0x497beb3f8171f5af # initialize rs2
c.subw x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x527f432fda05f586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x727abb177ebd1aac # initialize leagalized rd to a random value that should get changed
li x10, 0x6d35c177b3e741d7 # initialize rs2
c.subw x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc89488e75c0ff3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99d766796ae860cf # initialize leagalized rd to a random value that should get changed
li x14, 0x8c719cec355a7432 # initialize rs2
c.subw x13, x14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1578a38c619715fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2f525488f84852de # initialize leagalized rd to a random value that should get changed
li x13, 0x89ce52ae51dbdbce # initialize rs2
c.subw x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x22abbc27c94f6ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbb8a715a9a71bc3b # initialize leagalized rd to a random value that should get changed
li x8, 0xe033b8d91d3b13cc # initialize rs2
c.subw x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x61999937b5d055ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc93dfa1d245aaf39 # initialize leagalized rd to a random value that should get changed
li x8, 0x4a07da4426d0b1f1 # initialize rs2
c.subw x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x742805c728549990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfa952c081c6a7d3a # initialize leagalized rd to a random value that should get changed
li x9, 0xcfd85bea64ed8f18 # initialize rs2
c.subw x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x2f52c53fe89a78b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbde01d7c4fcffbc4 # initialize leagalized rd to a random value that should get changed
li x10, 0x91717481f2eb5f02 # initialize rs2
c.subw x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0xa1bea4b2502dac01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7407842f16725730 # initialize leagalized rd to a random value that should get changed
li x11, 0x9c1bef530d1635bb # initialize rs2
c.subw x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0xdff9357678b3dbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc58871aecd78941 # initialize leagalized rd to a random value that should get changed
li x12, 0x1c57afc92abe1235 # initialize rs2
c.subw x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x55701566d6f33958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc4a02fb8f9f1619e # initialize leagalized rd to a random value that should get changed
li x13, 0x080699e58cf60c31 # initialize rs2
c.subw x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xace1670eb1e40319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xec520c233ed57afe # initialize leagalized rd to a random value that should get changed
li x14, 0x34580ec58dccf8c2 # initialize rs2
c.subw x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x307493192dc196a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6f85055841514e17 # initialize leagalized rd to a random value that should get changed
li x15, 0x2b182c317a4c0ed1 # initialize rs2
c.subw x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x57e3bc887747b299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000000 # initialize rs2
c.subw x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x825972cb7b6efc9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffffffffff # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xfe5a450a3e343733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffffffffff # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x1, 0x90cd8bf0d1c54bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000040000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffc0000000 # initialize rs2
c.subw x9, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x27, 0x336e57ec0a9b69a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000040000000 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffbfffffff # initialize rs2
c.subw x11, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x2fb2868397deb4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000003fffffff # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffc0000000 # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0x080ad0beaafeb438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000003fffffff # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffc0000001 # initialize rs2
c.subw x13, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x55a4bf0c019bfe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff80000000 # initialize rs2
c.subw x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xd223f8be9aef8b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffff80000001 # initialize rs2
c.subw x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x18, 0xac35f1194cec0ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000055555555 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffaaaaaaab # initialize rs2
c.subw x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0xc375147036dc52e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000002aaaaaaa # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffd5555555 # initialize rs2
c.subw x15, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x3, 0x892d75a161b0e91c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000031d7437b # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffce28bc84 # initialize rs2
c.subw x11, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x24, 0xadc52ee4ae6f35c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000071d7437b # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffff8e28bc84 # initialize rs2
c.subw x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x7e6ef0d4a8446258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x52527981867f43d3 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.subw x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x063afa7fec553175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd779ce5038643753 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000001 # initialize rs2
c.subw x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xed0f134555e2e169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbc5e5c78cbbdf81e # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.subw x8, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0xef256d26da72ccaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd3599775a60d4bfd # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000000 # initialize rs2
c.subw x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x6311c1793c145930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb875d29129a158ba # initialize leagalized rd to a random value that should get changed
li x13, 0x8000000000000001 # initialize rs2
c.subw x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x8e16ca08fc1702b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed6c362ade6c60f3 # initialize leagalized rd to a random value that should get changed
li x8, 0x7fffffffffffffff # initialize rs2
c.subw x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0x917ff236cb44cac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x495bae6d7c64b682 # initialize leagalized rd to a random value that should get changed
li x13, 0x7ffffffffffffffe # initialize rs2
c.subw x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xd03204d2be9433cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x066a8fd231de1a29 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffffffffff # initialize rs2
c.subw x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x6fd8a83d9ee5e1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbd342941a5b4ed53 # initialize leagalized rd to a random value that should get changed
li x14, 0xfffffffffffffffe # initialize rs2
c.subw x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x16, 0x957480ac45a5b74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x558bf88b37473fb0 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc887763ae86f7 # initialize rs2
c.subw x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7e94d15be5391436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfa07c729037b8431 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.subw x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x20, 0x7d05ed8d8c46386b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2b74148607f2a6b6 # initialize leagalized rd to a random value that should get changed
li x11, 0x5555555555555555 # initialize rs2
c.subw x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x6ea3aa240dd02f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb520d463519fdd97 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.subw x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x4e1b7e0fb6a258ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x94d844a1dacdbc3f # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000fffffffe # initialize rs2
c.subw x15, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0xa857daf303601529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc844e141af1b8d6f # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000000 # initialize rs2
c.subw x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x30, 0x082ff222847dfb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe7cec7850bcab80c # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.subw x14, x11 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sdsp.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0xdab84e6dd9cac24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x36883491602f03ca # initialize rs2
la sp, scratch # base address 
c.sdsp x0, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xcb4ecb08cf4e670b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4cdd0a7d56b86306 # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x4fe3a06a3629dca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x839309a46a83a28d # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 400(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0xc5af9c534049a3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xed3b79147b75d477 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x1, 0xeba208be65165f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x970ca9b88b7458d1 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 296(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x18, 0xde7959f8b5b90aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x899ffab6ab74b1e6 # initialize rs2
la sp, scratch # base address 
c.sdsp x5, 424(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x25, 0x7e4439468cc401b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7c89c038febe70b6 # initialize rs2
la sp, scratch # base address 
c.sdsp x6, 232(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x1, 0x979ce9bd95a4e466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x304e890f1def011c # initialize rs2
la sp, scratch # base address 
c.sdsp x7, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc87aad0301cbcffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd72526fcf57703ca # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 368(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x61a2ba0e12e9e019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x74acf2988cdc7c29 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x8acfa938646451fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe92080419936c6b5 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0x39fdd09b1cd87da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0c47b7d07540682a # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x75be7eee6cd89280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5b09e14352ccf106 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x10, 0x149e38c2f4d92f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x76b74611450238a7 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x71b701759f3391e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8f43e4f35c773e24 # initialize rs2
la sp, scratch # base address 
c.sdsp x14, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0xabde2b90049df701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2efb5a1962712d4e # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 120(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0xe8b1ba20b984a0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x442f25d2112b94a7 # initialize rs2
la sp, scratch # base address 
c.sdsp x16, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x87e5a2359777ef19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xea3777630a01e7f5 # initialize rs2
la sp, scratch # base address 
c.sdsp x17, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x19, 0x66f3f99a627011d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd6d987a2df8f10dd # initialize rs2
la sp, scratch # base address 
c.sdsp x18, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0xb90978fbbca5f07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb4b68b7930ac48a6 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 232(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x527dd3bc6fac4a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xde3249a0207b185f # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 352(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xef7d4aecf21e5611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b9ee47dc35f9a4b # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 440(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0x531b3fe1dffdb5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa58d8f6321bed066 # initialize rs2
la sp, scratch # base address 
c.sdsp x22, 376(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x7a6bfa7164770789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd9f07bb580ef240b # initialize rs2
la sp, scratch # base address 
c.sdsp x23, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0xdc3ef5a3f106caf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6c639feb68e51f9a # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x6defc9ebd289c6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa17f238906bda70d # initialize rs2
la sp, scratch # base address 
c.sdsp x25, 288(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x62038d034b8c7684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x27a57d49cfebb4ec # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 256(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xc9770b84b00c9477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xef4e2e5ad54f535e # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0x24eb4c48113935f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0f05243c7e6dd40a # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x16, 0x201d478368824ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b03530ec44b6e3e # initialize rs2
la sp, scratch # base address 
c.sdsp x29, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0xb4e732012b2aadf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x25870a04eac69d5b # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xebec41f7b68cdb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9311c7df7ead2318 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 176(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x3b4e06f87aad3b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 272(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x6ddc4fa8d02ae018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 184(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x7d60ebd2ac52e2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
c.sdsp x22, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0xa62b6783eed582e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 464(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x06750788b029614f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 424(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0xa3e24244c5bb5cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x23, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0x94b6e812275ef15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0x562aa7b1ff1f28eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 120(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0x13841fde160775bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 456(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x26, 0xf8b479ed79a8058c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xa2a4f5cf62ccebeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 328(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x3b82883a053d3c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 224(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0xf2989194598074ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 200(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x88cb33a8ac7eca5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 256(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0x47a53dc81ea6ad1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 392(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0xb2511dd9c0b474fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 24(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xed0389d7c9baa3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x19a71577f58b1200 # initialize rs2
la sp, scratch # base address 
c.sdsp x29, 0(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x0cb4de4e04da588f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa346c974b0dbb52a # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 8(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x28f1131144c09b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x596dbacc6cc9d636 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 16(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xe085204342edbdcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x78906ef8fc32af5b # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 24(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xf89226aa74032274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe0e5e36cb9dd75d8 # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 32(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x84d9819d88cdc637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5a83539ed5e0a8d8 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 40(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x0c82d4c10cb53490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b63de4c0d7ccd99 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 48(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb2d1f6ee55248238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe690b51e10f0d40d # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 56(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x8cf779a7c12f42a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf25c5042d2fc1734 # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 64(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x2872705efe5c24f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x649a7c55153b4468 # initialize rs2
la sp, scratch # base address 
c.sdsp x6, 72(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x5581fc648824f0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6aee6616933b65e8 # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 80(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x3cbb49d5f53624c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc7560480ec5f9283 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 88(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xc74f902436fd571e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfe1c2b340efcb24c # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 96(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xa470b972a0e187f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6bd59dde53710a26 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 104(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb25f1bd34389e6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36f202b4a3c1dd80 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 112(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x218f0d93f498a9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x522ef8b1990f058b # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 120(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x45a9292483a9bfff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x377620e2067ae929 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 128(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf453f10e38e948c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1d90dba9bcd8ff92 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 136(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x15109bf84ea5cbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x476d6a13d0a3143b # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 144(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x53edab61e9cda73e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x78ceaecb32691e13 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 152(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x86092661735aeb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x445c5719afea4b60 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 160(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x62312b947815c55f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7f1e043a33519bfb # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 168(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x1f99c857a9c02c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2ffc00c3bc057e5e # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 176(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x6f449c1960924b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7b8a0a69e96b2d98 # initialize rs2
la sp, scratch # base address 
c.sdsp x17, 184(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xd9e3ecae48f6f706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53573d90d316b7d6 # initialize rs2
la sp, scratch # base address 
c.sdsp x25, 192(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x1c95319a0db2373f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7aeaa90e2c58f214 # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 200(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8445d65732ad5c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1b58f54ef83eae44 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 208(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x060ec2360034955f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x65863870ba7a1cb6 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 216(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xfe8b9bb4ed4433a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3f59852f49b42a5c # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 224(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x803b3a0370fc1f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99ab811b91ea8360 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 232(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xfd0353fc54d56644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4c54ef161b43fab8 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 240(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x058cb1b2108be8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0fdd5f73c2ebbaa1 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 248(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x7fdece3edbac5a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5168e9c3e07a8dfa # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 256(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd687e9dbc1f9002a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6d404eb177cc14cb # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 264(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xf55608cf4be16a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcb8393c2042ce4c0 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 272(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x9ac6ecf5f6d002a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x58f19adecc2a1974 # initialize rs2
la sp, scratch # base address 
c.sdsp x18, 280(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf01b1f233194e66a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71f258a51f7ea9eb # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 288(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x1b4f62b0c9353971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x168b142e8cdb5fcb # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 296(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xb7ebbd521dac8154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4091c1a80532b617 # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 304(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xca74c7e859427000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x731d276822f80484 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 312(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x30307dd5d7fb707b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51c27d2554cf765f # initialize rs2
la sp, scratch # base address 
c.sdsp x14, 320(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xaa45df3fcb7abd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x883fecc4874f049b # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 328(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x4b08240cb7e7f921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcee5aa69399516c7 # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 336(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x6508ce4c9baa3e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6d3a7751078e6f50 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 344(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x91cf95b0a85a9ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x257e9cac395f64ad # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 352(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xe2db6ab91c375084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x88ad7f75a289f65a # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 360(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x245a4f398cc6778c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbe8244ad592449fc # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 368(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x82a6340ee8611ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65bcc1fd703b7611 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 376(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb2afc56a163d0a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe7ccb16e6f27fcf3 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 384(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xb70aeecb332ce52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6684d57a32c33cf4 # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 392(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xcd721310110f84a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7d8957da389b6e5c # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 400(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x702d2edf584d7214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xafb201878e351f97 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 408(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x3c6c53d3439fbd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8f0b9db45fbd6388 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 416(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xa88cde884b5c5890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xda62fd86e3baa109 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 424(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x76d3b53559097832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5520a0ab9ed8f736 # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 432(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xdc1feed7dce87c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2bcdf39cef2a130c # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 440(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xe64579633c8c4ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe52ad9b3091fe153 # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 448(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xd86db8fb494efaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf0ca3d6a458feb38 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 456(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x14162b06c3492414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x685af95cc0b9b780 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 464(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x5e8942905e891def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x533f5823c18c00f0 # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 472(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x8b3c53ff25987679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa3eaffb001cf5ef3 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 480(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x74dd372106f004db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfb3a6431704e969b # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 488(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x2eaac264499be8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3ca0629a82d7706e # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 496(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xc243645f4bab2ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa25a8998d3a61166 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 504(sp)# perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.and.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x754d0d717d2edb8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x43e55a2ebac823cf # initialize leagalized rd to a random value that should get changed
li x9, 0x82959644bc3c9932 # initialize rs2
c.and x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x910174c55898612d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5f47b06a2f70f7fc # initialize leagalized rd to a random value that should get changed
li x14, 0x681a2b3214d0f480 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3efe07c7f001a931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1bae1212107ffd57 # initialize leagalized rd to a random value that should get changed
li x11, 0xe094343de5a5647d # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x91369c3313997a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x63f9578b26276057 # initialize leagalized rd to a random value that should get changed
li x9, 0x4e407a23a56e0514 # initialize rs2
c.and x11, x9 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb03c638a48c94625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb6506489a0d4ddea # initialize leagalized rd to a random value that should get changed
li x13, 0x19c0df336f39fd80 # initialize rs2
c.and x12, x13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x075ae9bedbc3daf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0ee738c45f210a3 # initialize leagalized rd to a random value that should get changed
li x14, 0xf5dff921355dd96c # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x418b3694ae539d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf09df51a6860d2ba # initialize leagalized rd to a random value that should get changed
li x9, 0xc65a97534fb002ce # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0ce54ff3b907d9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8e09bceb0e5b5e35 # initialize leagalized rd to a random value that should get changed
li x13, 0xcdcae2262ca7e413 # initialize rs2
c.and x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0x08f9c68ba07d60cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8b6d40ffaad393ed # initialize leagalized rd to a random value that should get changed
li x8, 0x8964d9289938d1b6 # initialize rs2
c.and x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x56d6f36ed86578a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f24e92928e00aba # initialize leagalized rd to a random value that should get changed
li x9, 0x197f9b94ce5fdbe2 # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x09977f56c066efb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa9e46cd55cb55bf7 # initialize leagalized rd to a random value that should get changed
li x10, 0x5364862a7bb308c9 # initialize rs2
c.and x10, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x5b6c0106a5f80fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3cb6d3e0e565e5c6 # initialize leagalized rd to a random value that should get changed
li x11, 0xee61b7c8c1b6b2a8 # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x5babcfe28c81a58a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x21319f37f0139462 # initialize leagalized rd to a random value that should get changed
li x12, 0x0afaf204befb8b8f # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x8f36debad02f66dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdb65c46e0a9dc5c3 # initialize leagalized rd to a random value that should get changed
li x13, 0x294473cc4aed15ba # initialize rs2
c.and x14, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x27b5f19fc9189d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x368c84b2624f9b3e # initialize leagalized rd to a random value that should get changed
li x14, 0x16b64a8ba6700322 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0x0a8258eecb7f8114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ff896fcc3f4f948 # initialize leagalized rd to a random value that should get changed
li x15, 0x00602df375b01b3b # initialize rs2
c.and x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xa9bf355b8516839e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0x214e61631ea4289b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000001 # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x837b3ffb07639d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000002 # initialize rs2
c.and x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0x5d9a668ef9c09f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000000 # initialize rs2
c.and x10, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0xe080aad9416584fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000001 # initialize rs2
c.and x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xe6f55f0847a0d0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x7fffffffffffffff # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x18, 0x29fbd9181e20bb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffffffffffe # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0xf6ef66335cb69a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.and x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x10, 0xff96bad14f861fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xfffffffffffffffe # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x11, 0xd55cc21efcd3a078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x5bbc887763ae86f7 # initialize rs2
c.and x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xa8b1b6692763db43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0x95ff05e5ef1e0e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x5a6fb1ffd82ab337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0x3ee105bd4684c1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0xc7bd96d5335efc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000000 # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x6, 0x70595fe9f9a0d3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.and x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x1e617abcb44e782d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ddd3c1570eacf22 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000000 # initialize rs2
c.and x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0xecb4435320f71470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1c41183b43a85774 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000001 # initialize rs2
c.and x15, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x1d9fbd5b92f4ace7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd1f3eb913ad6e3fd # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000002 # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0xdae8796d25c03ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeaf663c7e813cbcb # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000000 # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x7dba48ad69e2702c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa02021ff272799cf # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000001 # initialize rs2
c.and x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0xaea664012361ff68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa6ee7c63f59d5cbd # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x4, 0x908176b1138a8c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9c9da7038a5fb72d # initialize leagalized rd to a random value that should get changed
li x14, 0x7ffffffffffffffe # initialize rs2
c.and x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0xba03f6f29d2a1e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1e9ad611fecc5ce6 # initialize leagalized rd to a random value that should get changed
li x9, 0xffffffffffffffff # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0x6d39da911bf084b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeb25ae5d8f726500 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.and x8, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x22, 0xd4afd63a861334f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdbe387eb0061be08 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc887763ae86f7 # initialize rs2
c.and x14, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x477e1bc9d42f0de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd4eaa55999195b30 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.and x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x4, 0x3f14963ef807dcae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x71d1b6c54baea365 # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0x059c51bb009e231a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x649b2cd0601d2772 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x528f91b6cc12be40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4749c57e91c2c91e # initialize leagalized rd to a random value that should get changed
li x8, 0x00000000fffffffe # initialize rs2
c.and x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x2fc1a496b964a3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x10b42d3e68580c2f # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000100000000 # initialize rs2
c.and x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x32b1fc497cd56abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd4ae265cf045921 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.and x11, x9 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.xor.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb823c4a093d62eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8590f33046694a29 # initialize leagalized rd to a random value that should get changed
li x11, 0x604a303d5e40e67a # initialize rs2
c.xor x8, x11 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe0da25d8d9c33a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa7b446fd94bbbdda # initialize leagalized rd to a random value that should get changed
li x10, 0x9419515f9c40aac7 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb27e90555b61830f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x57dbdd39c4433066 # initialize leagalized rd to a random value that should get changed
li x9, 0x5d65748697731143 # initialize rs2
c.xor x10, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd8c19a517ce0b7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f955436180a347f # initialize leagalized rd to a random value that should get changed
li x11, 0xa7ec028942b3218f # initialize rs2
c.xor x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x960b80af0ac3383e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa84c7c461de5ef2d # initialize leagalized rd to a random value that should get changed
li x15, 0x4db11947d86aac53 # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x00e736d8404c91b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x05e9646498b245c8 # initialize leagalized rd to a random value that should get changed
li x10, 0xbe0cd4bee278b16f # initialize rs2
c.xor x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x743e386f67b3e692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x08317998d49c15d8 # initialize leagalized rd to a random value that should get changed
li x14, 0x8186a85631cfcdef # initialize rs2
c.xor x14, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd937dcdc89329e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x126cc9ecc0d42da4 # initialize leagalized rd to a random value that should get changed
li x14, 0x2f84e80dfee31d49 # initialize rs2
c.xor x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x35846653656c5a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5eb49706a7f7e7a5 # initialize leagalized rd to a random value that should get changed
li x8, 0xc3b93be11fdb95b4 # initialize rs2
c.xor x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0xbd0a4ece91ce0d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86adeb7b10a7bece # initialize leagalized rd to a random value that should get changed
li x9, 0x2288b40acd451308 # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x5527fda4b11bc57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa5fbb3330f599c04 # initialize leagalized rd to a random value that should get changed
li x10, 0x74da81502532fafe # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x03a8d80fe021d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaf23b61f317cea34 # initialize leagalized rd to a random value that should get changed
li x11, 0x90fe922daf36cd7e # initialize rs2
c.xor x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0x726e5946c34a1a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcfd4afe550370a85 # initialize leagalized rd to a random value that should get changed
li x12, 0x8fe0658512b20006 # initialize rs2
c.xor x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0xd837682465476d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6773ebf1aed75c5f # initialize leagalized rd to a random value that should get changed
li x13, 0x015c58fef8f52423 # initialize rs2
c.xor x10, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x8f9d62704ba4d93e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x37803a2077e6eccb # initialize leagalized rd to a random value that should get changed
li x14, 0x337b2d361ec4524d # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x3b2bbbd553cef009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5b9398fe6a575a90 # initialize leagalized rd to a random value that should get changed
li x15, 0xaf71029f89270438 # initialize rs2
c.xor x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x89e3cbc1cd3d2913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.xor x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x148affcc41c45c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000001 # initialize rs2
c.xor x15, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x809eefd7a84ae82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x21, 0x844b4510925387a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x8000000000000000 # initialize rs2
c.xor x13, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0xcadb2afe1ee1af06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000001 # initialize rs2
c.xor x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0x7b8cc03bbce9fe59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffffffffffff # initialize rs2
c.xor x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x26, 0xe585b0c5378dbcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x7ffffffffffffffe # initialize rs2
c.xor x10, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0xacae4dad5df4be74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.xor x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x29, 0xa641cf50b08234f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xfffffffffffffffe # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x12, 0x5494983d991ac67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x5bbc887763ae86f7 # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x6a347d2c627e4b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.xor x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x28, 0x89c73cfe8a7e4bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x5555555555555555 # initialize rs2
c.xor x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x7, 0x22708bcbeb839d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000ffffffff # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xad3130477d84c34c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000000fffffffe # initialize rs2
c.xor x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x9, 0x155b967ed028718b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000100000000 # initialize rs2
c.xor x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0xe82415cf660a1b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000001 # initialize rs2
c.xor x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x08a740de7105278c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x66c753a01240cdb7 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000000 # initialize rs2
c.xor x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0xf468ab44470b1978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8a43c34be2530b21 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000001 # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x29e0285dde879448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x05b6456a341ae50a # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000002 # initialize rs2
c.xor x10, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xd32061592d6c2dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x06910f3506852fe4 # initialize leagalized rd to a random value that should get changed
li x9, 0x8000000000000000 # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x39fc5f31b77b8981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x611bbc58c392197a # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0x6324d97207ce04ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6bbf110182862ed2 # initialize leagalized rd to a random value that should get changed
li x9, 0x7fffffffffffffff # initialize rs2
c.xor x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x0de0257cbdd40002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x78a57ad6c4a0f342 # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffffffffffe # initialize rs2
c.xor x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x3a9f70d5c22c0383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8845fe942d11e022 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.xor x8, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0x91fcfa4a2faa5470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x81dab9730a5818bc # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.xor x14, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x6, 0x5796581dac35a0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x440d5ff20206b2d9 # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc887763ae86f7 # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x9e4a08cbcc3efe05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4cf99aa076bd1933 # initialize leagalized rd to a random value that should get changed
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.xor x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xc6adf8b2805992da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8bf1d36904e15c4a # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.xor x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x537eb649a2881a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x543685d3264833d3 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000ffffffff # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x634452ec999cc5be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x545d6ac97e2986b3 # initialize leagalized rd to a random value that should get changed
li x12, 0x00000000fffffffe # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xa458623a446960c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0f01e5dea5467e3f # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000100000000 # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0xe813e105eeb1c1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9bdfe2c1260b74e1 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.xor x15, x9 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.add.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x483b7b8c87779827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcb3c0b888d54ae0a
c.add x0, x27 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3c29b12b93f73408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x84e6250e9b64aee8
c.add x1, x14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2efaace2181f0008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7c330aa365363bfe
c.add x2, x25 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x45a3eab416809300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb526b32bf16f4248
c.add x3, x10 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x827801886e9cbc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x336fb13172beaa59
c.add x4, x28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x986c79dad4b07c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe6e35a549af68bf6
c.add x5, x16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb0653a7fff2d03d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6ad6d7f9c8edd610
c.add x6, x2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb984ab8a40d88bde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeaf151c8de8610aa
c.add x7, x3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0b950284ca20decd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7177fd718dc0dc7a
c.add x8, x19 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6788764ec745e0af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x34776a29e3373feb
c.add x9, x19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x1141323f7f31e87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x921998e45468660f
c.add x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xae9d3a64594a5413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4df60c6f1d6e5963
c.add x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x074038ba49f5237f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fc24e8c264a39d2
c.add x12, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6a52e7ceafb27103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8a02d2964a643538
c.add x13, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa246a5e2fe2693da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x26c34a8603aefbf0
c.add x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x59bbb808b3187ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa39e833ce1214edf
c.add x15, x23 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd59f318fc5bcd434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa16f405dec7d6703
c.add x16, x6 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x74e4c393e02de8df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x684f31980ec96dfc
c.add x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc088f758bb222845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x062c088963e2331f
c.add x18, x6 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x5e34518b5c506013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5390858d905d3e5a
c.add x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc3dfe046cd91cfad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf641872968c3fef7
c.add x20, x11 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x46645b414ef452e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x91f38a7908eacea2
c.add x21, x21 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x266a9be642229fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2615f29c8f74a822
c.add x22, x4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x204184df8ab69d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe6034b547ec0c452
c.add x23, x24 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x24c4a07bf022cbfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0841eb10d6bba38b
c.add x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3c85e9d477c2f86e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4fdad43ecbf644e
c.add x25, x27 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x76fa526d1fa31c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb5cce820d61d2f6b
c.add x26, x7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5b0cf1ed2d293852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa6fa6320ba7884d6
c.add x27, x28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8179b250162dd565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6642463f92565f03
c.add x28, x9 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7910d7f329af7469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x64091ee155cbbd59
c.add x29, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x527e716b8263cd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb9b1d66a0c1cf5b3
c.add x30, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x6024cf0eeac30ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc01091a817356c5b
c.add x31, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xb40dc1a7dd3472cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1141c64351c50dfc
c.add x25, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0xecad4a3c800dc89a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x673195bd4917e9e0
c.add x5, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0xdba27587f4531803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x813fceaeea5b3357
c.add x19, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0xb1ca71ac2b85425a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2fc5afdbfe1279a0
c.add x17, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x11, 0x3e4baeff15e6e964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x79a4c5546baa9a7d
c.add x11, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x26, 0xd7d08d297d5768d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xabd17e75259b0ee9
c.add x26, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0xb8ffcdd2ab5f1f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb715854289f2271e
c.add x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x9956cf76934f51c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6e1bdc52aa143402
c.add x21, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0xbf1c45eba5127fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x28a52d5b544dbee2
c.add x7, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x4dc9776605d98078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd0d667920eff3909
c.add x16, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x91fca0d9261f4c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9380a6dee630d3cf
c.add x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0xbeada25424a96eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf35e9262ddcb46e5
c.add x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0x15018e1e4a41ec57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9fd69d0ab8ad4f52
c.add x2, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x49954345ec615bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x843732bf88892d2a
c.add x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x1c0393c456298e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x17dd2b6ab44b0493
c.add x28, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xc29e3fa4fe3a6af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xda64592b504dd716
c.add x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0xcc57915d1a276e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1e8290db7a548d3b
c.add x13, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0xbf4805085e685e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe10bf61e3d379ed0
c.add x9, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0xccf4d31cde344d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7a5be3510f108b9b
c.add x12, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0x41a3df92d484981d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc93a6136e73a05b9
c.add x24, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x2da4dd515154a9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbc55c26d98da6a24
c.add x20, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x04a8e997ecc897a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1f74e65d73c399db
c.add x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0xcb956722d04d7a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x97c27cb24513a9cc
c.add x15, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x078069feb0093b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7e225831a85b3e68
c.add x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0xa70a4026d378543d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf4fb47c047453b6f
c.add x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x6f44871fa3c1e08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc71ada3de2af1c64
c.add x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x6496113fb2648d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x35d477d7b222b752
c.add x12, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x554b5c88a94ba50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xedc282329fcc0154
c.add x16, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x5cedc7ac33b144ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc3040fb777f90b84
c.add x28, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x06e62ffc8f0e7b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce41072aa55ffea9
c.add x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0xbe3f5ebfd97826ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc32df0b15820807d
c.add x24, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7dcc849449778486)
li x30, 0x384af6be1e2e4a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7dcc849449778486
c.add x30, x25 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4a84b4fef6f77df4)
li x14, 0x23b3418ed59b83e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb57b4b010908820c
c.add x14, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x4da1fe384020e856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb25e01c7bfdf17aa
c.add x26, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xd35491d5798c6854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2cab6e2a867397ad
c.add x27, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xe5b5445a1d73aac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1a4abba5e28c553d
c.add x18, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x7, 0x67d115d9ffa51b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x182eea26005ae4a7
c.add x7, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x40d953027a157d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3f26acfd85ea82e8
c.add x27, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x28, 0x3863f4c1958b010e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x479c0b3e6a74fef1
c.add x28, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x7, 0x48cacf6276fd0315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3735309d8902fce9
c.add x7, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x27, 0x107e7e417ae41f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xef8181be851be0e1
c.add x27, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0x9f6e86b1d83ab4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6091794e27c54b16
c.add x18, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x20, 0x8e2efe6af7aa986a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcd8d8a0c6c03ee8d
c.add x20, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x6fd29d28f6ef8f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3ad80d81b3bb1b1b
c.add x20, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x13, 0x769dda6c11b86ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdeb77ae9439ce55c
c.add x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xe7a93afbc1e7c659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1856c5053e1839a6
c.add x6, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0xc5e6089233fded3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a19f76ecc0212c2
c.add x7, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x15, 0xecdf71330390e5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x13208ecdfc6f1a48
c.add x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0x2827819da5c273cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd7d87e635a3d8c34
c.add x28, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0xcf4027f595e1eb80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000
c.add x13, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x146bc8eec6218576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001
c.add x13, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x2aeaec2ea57ae25e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002
c.add x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0xfb49a8edf773fd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.add x30, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x8, 0x97629aa49349a8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001
c.add x8, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0x8e05eb2137d9ac9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff
c.add x14, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x26, 0xe622b9a3b0e5372d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe
c.add x26, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x17, 0x64ae0e3a75e39f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff
c.add x17, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x19, 0x2ebc67d5d5623bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe
c.add x19, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x11, 0x5c06dd21a106d973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7
c.add x11, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0094706fc465efcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa
c.add x18, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x28, 0xfb9aeaf61aca811f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555
c.add x28, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0xfeb62c0d899db792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff
c.add x14, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x20b027cf733ad569 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe
c.add x6, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0xa21a25849538c10e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000
c.add x7, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0xd74fd04b7093f7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001
c.add x20, x19 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.or.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xe4d3efb997dab5f)
li x18, 0x0e4d3efb997dab5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0e4d3efb997dab5f # initialize leagalized rd to a random value that should get changed
li x9, 0x0e4d3efb997dab5f # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6bcd4c45995015c2)
li x4, 0x9017a91608042904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3b78024b1de78d88 # initialize leagalized rd to a random value that should get changed
li x14, 0x6bcd4c45995015c2 # initialize rs2
c.or x12, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4e75ba80c5fc56de)
li x1, 0x2500f07b560065c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb0306132af5ae1e5 # initialize leagalized rd to a random value that should get changed
li x9, 0xb18a457f3a03a922 # initialize rs2
c.or x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8d5c8b8e3bc06a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4f574e20961c4367 # initialize leagalized rd to a random value that should get changed
li x13, 0x4e6afae5f3cd9fe8 # initialize rs2
c.or x8, x13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7a119e635d99f604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6edbcfee8743c36e # initialize leagalized rd to a random value that should get changed
li x11, 0x15a71d926be32597 # initialize rs2
c.or x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8787d841a2155c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd7fcf359b315bf01 # initialize leagalized rd to a random value that should get changed
li x15, 0x56d9b658bd5d5bdc # initialize rs2
c.or x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x70230c419afc1c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0461b388a6871a21 # initialize leagalized rd to a random value that should get changed
li x11, 0x36d2f45005932c92 # initialize rs2
c.or x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd1bcd01a5ea42424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x324165890a1f2354 # initialize leagalized rd to a random value that should get changed
li x10, 0xf6a1150fcba7d6a1 # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x576a009d1269df83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x45c5fb199be916d9 # initialize leagalized rd to a random value that should get changed
li x12, 0x34691938a06692e3 # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfefae2ee8d2f3fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51a8ae623f398d7b # initialize leagalized rd to a random value that should get changed
li x14, 0xe381908a443aedb2 # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3488bd90637f8551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa850545fc60fc818 # initialize leagalized rd to a random value that should get changed
li x15, 0xed15b6f2771bc9c4 # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xcf99c2afed120429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfc29301935b7b0a9 # initialize leagalized rd to a random value that should get changed
li x8, 0x185f64c5d9dc4abb # initialize rs2
c.or x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x6a199a1ff0953cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa53b5dda8f45b68b # initialize leagalized rd to a random value that should get changed
li x9, 0x2cca4355a08162ca # initialize rs2
c.or x11, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x6ee7052c1e76f1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbc122b7966f283d6 # initialize leagalized rd to a random value that should get changed
li x10, 0x6a9896c919581b5f # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x115b48c673561abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3a8404506612164c # initialize leagalized rd to a random value that should get changed
li x11, 0xa7c97aee83307c68 # initialize rs2
c.or x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xd0126347a86ca48b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbd06807b9eab663a # initialize leagalized rd to a random value that should get changed
li x12, 0xaeea9d3b0b411f66 # initialize rs2
c.or x9, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0xf71d6f10c59c29f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcf9273dac9802027 # initialize leagalized rd to a random value that should get changed
li x13, 0xcda6ba42175d0f54 # initialize rs2
c.or x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x05fdf274f9a62bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8c90ed0c78277608 # initialize leagalized rd to a random value that should get changed
li x14, 0xee50b6be39b5beb5 # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x771fea59c2982db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2f1d9252584040ab # initialize leagalized rd to a random value that should get changed
li x15, 0xa04c89dbc0292779 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x4fd30f5bbb4e7a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000000 # initialize rs2
c.or x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x026b4d2daa362c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000000000001 # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x3672b0e413ef611c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000002 # initialize rs2
c.or x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0xdce14f40f5f6c37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x8000000000000000 # initialize rs2
c.or x14, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x12, 0x94137f28d00e26e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000001 # initialize rs2
c.or x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0xbf25065163318cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x7fffffffffffffff # initialize rs2
c.or x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x5, 0x2c5e038ee21408eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffffffffffe # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x6, 0xaa828102504a7a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.or x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xc8a0b3c176ec09fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffffffffffe # initialize rs2
c.or x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0x70bde6eabb2d5f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x5bbc887763ae86f7 # initialize rs2
c.or x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x91a0a83a4997f9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x7bd256354eda6206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x5555555555555555 # initialize rs2
c.or x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0xecddbbf9bfa88e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.or x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x7de7e6f26b9d6510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000fffffffe # initialize rs2
c.or x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x25, 0xfe6a163abbe9b676 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000100000000 # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x29, 0x9879980a83c6cfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0xe5ebbac3697c9040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc489548944dd0c65 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.or x12, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x3d03ea56a0efcf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x38a334a8c8ddaf6f # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000001 # initialize rs2
c.or x8, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x53ac28fb98b342b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5db88e808ebe69b8 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000002 # initialize rs2
c.or x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x47643aa3164276ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a919a7579017046 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000000 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0xfb4b7a198e3ae1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2b4a123c9a74fc69 # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.or x15, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x9d1ca143af00f651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0439ad5bad747c80 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffffffffffff # initialize rs2
c.or x10, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x9a346bc10a307782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb2f86f346ef6ed01 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffffffffffe # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0xcad272d47231c1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x083c34834d72a65f # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffffffffff # initialize rs2
c.or x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0x1abadcadce1086a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x18c23220e9ea43b9 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x31, 0xc28f814af6015cae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdde53992dc7fef82 # initialize leagalized rd to a random value that should get changed
li x14, 0x5bbc887763ae86f7 # initialize rs2
c.or x15, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xa7da32e4ff875c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd5a120b63b3b2671 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0xfbcd4d3caedf64d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6f4b8aa8b8e81a22 # initialize leagalized rd to a random value that should get changed
li x14, 0x5555555555555555 # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0xb82e35ea82310cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe6e4f1a2d1289aa4 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.or x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xea336a18f85188c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7332b36af3868d41 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000fffffffe # initialize rs2
c.or x10, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x53fa40c67d3455e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a867b00c05d6614 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000000 # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0xfcd00d964aeb863e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe9b8dbe3bf0c2419 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.or x14, x9 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lw.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x61750870f3c57b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcdc01900ff37af32 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x8) # store value to put something in memory
c.lw x8, 32(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x31e05b2a1fe14e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdfb23fd0a5afa30a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x9) # store value to put something in memory
c.lw x9, 4(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbb9e5f0221b45c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2515f2e0e8c5f0c4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x10) # store value to put something in memory
c.lw x10, 48(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaec803e89e05ea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x063ae8d9aa7f7385 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -116 # sub immediate from rs1 to counter offset
c.sw x9, 116(x11) # store value to put something in memory
c.lw x11, 116(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x51984b4c6d0827ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3244ad4f9c42f9d6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x12) # store value to put something in memory
c.lw x12, 124(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0da0575e94125588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeb0205f744e44626 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x13) # store value to put something in memory
c.lw x13, 76(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x492b3f896730e13c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc5c2dba3d018f3b9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x14) # store value to put something in memory
c.lw x14, 48(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdca01576b1348f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf61175eb37b23dd3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x14, 64(x15) # store value to put something in memory
c.lw x15, 64(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc06c3abd23f5a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf3b1827e4b882ad6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x10, 48(x14) # store value to put something in memory
c.lw x8, 48(x14) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdc52f4101813c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf8799b84e471c0b1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x10, 88(x12) # store value to put something in memory
c.lw x9, 88(x12) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbba3510b449432b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4ac42efe7baf10c8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x11) # store value to put something in memory
c.lw x10, 44(x11) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6e164e55a3e267d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc26ff6f0e2c488a6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x12) # store value to put something in memory
c.lw x11, 8(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdcfcbb67e8b7ab3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x941f9e73739738ef # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x14) # store value to put something in memory
c.lw x12, 124(x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9277cebe62b23966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xce544a67b6282a75 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # store value to put something in memory
c.lw x13, 4(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x10c3fa0a20e9dc0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe721ce9d81269eb9 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x10, 88(x13) # store value to put something in memory
c.lw x14, 88(x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x847c6a5d5e230882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d5c9a1fdab95791 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -92 # sub immediate from rs1 to counter offset
c.sw x9, 92(x13) # store value to put something in memory
c.lw x15, 92(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x83f9ece22ac43bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc3940d77b50c34f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x13) # store value to put something in memory
c.lw x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x170c517f947d031b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x10) # store value to put something in memory
c.lw x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0xf5182228f2bdcceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x15) # store value to put something in memory
c.lw x13, 124(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xf9a18ebe7e1ebe6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xac45f6e229653c99 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x2541c7cc738eb996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # store value to put something in memory
c.lw x11, 4(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x446ac2e4ee740145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x11) # store value to put something in memory
c.lw x11, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xa506445a2ec6beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd559f64453e7b740 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x13) # store value to put something in memory
c.lw x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xa47f4707193987c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x8) # store value to put something in memory
c.lw x11, 8(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x542c464fce27eeff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x8) # store value to put something in memory
c.lw x13, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0x9f4faae1bd89fbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6908f07e5c7de40 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x15) # store value to put something in memory
c.lw x8, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xd83322e01d6e7b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000080000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x15) # store value to put something in memory
c.lw x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x31, 0xa38ac86353e0abc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000080000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x13) # store value to put something in memory
c.lw x15, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x134c176c4fb1ec15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfa0979cb906f6c77 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x13, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0x04276fff9595446d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000080000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x8) # store value to put something in memory
c.lw x12, 4(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0x19f2054b3aa25a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x13) # store value to put something in memory
c.lw x8, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x16, 0x9c0ef3bdc021584c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x88925df75c9d133d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x8, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0x60015a04e70fe58b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000007fffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x13) # store value to put something in memory
c.lw x11, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0xd3045653c40edc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007fffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x8) # store value to put something in memory
c.lw x14, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0xce7706a3672851bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe79e4c18b1b5c8b8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x15) # store value to put something in memory
c.lw x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0x0344b35b2f788945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007ffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x11) # store value to put something in memory
c.lw x10, 120(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0xb0c024fa703a8529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007ffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x9) # store value to put something in memory
c.lw x14, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x979e149c2974aefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x440be3f53e8fee33 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x8, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xa7d9fa3a6455460c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # store value to put something in memory
c.lw x9, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x0367de5fd1387af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x9) # store value to put something in memory
c.lw x11, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x961af3ab7a9b422f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc22b73956545c4dc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0xe6899f65fd1f72e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x9) # store value to put something in memory
c.lw x11, 120(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0xc1115386442af3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x12) # store value to put something in memory
c.lw x9, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x29e6d7d265a013b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6c72b013b2fcd50a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x10) # store value to put something in memory
c.lw x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xfa361eaa56a0f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000aaaaaaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x14) # store value to put something in memory
c.lw x13, 40(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x46dbbff9d357134c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000aaaaaaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x12) # store value to put something in memory
c.lw x11, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0x845ea097a7be676b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x41783d7bdc71d93d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0x0bd663bef8ebd82a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000055555555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x13) # store value to put something in memory
c.lw x9, 84(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x20, 0x6fe580d4335105a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000055555555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x10) # store value to put something in memory
c.lw x12, 124(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x4, 0x27ddf75e70db6847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xef271085558514c9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x12, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x17, 0xd1e8b854d18a4d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000063ae86f7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x14) # store value to put something in memory
c.lw x9, 92(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x16, 0x1e85d4246f3fa4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000063ae86f7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x13) # store value to put something in memory
c.lw x8, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0xa8c1a034e5c1a6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c97094b7908624a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x10) # store value to put something in memory
c.lw x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0x0a41ce975e79b4af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000e3ae86f7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x12) # store value to put something in memory
c.lw x15, 92(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x13, 0xd5a90e9fa31c1fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000e3ae86f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x15) # store value to put something in memory
c.lw x13, 124(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x002635d0b0aa4c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdb54cb4042fa229f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sw x9, 16(x8) # store value to put something in memory
c.lw x11, 16(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xf2637c4aa4a88059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1d156eb3d4c4771e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x9) # store value to put something in memory
c.lw x12, 12(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xdd38b8521f2eea87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5dd3ac449af2ef29 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x10) # store value to put something in memory
c.lw x8, 72(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0xe4f309240ec3f5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0da36dadd501b22 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -72 # sub immediate from rs1 to counter offset
c.sw x12, 72(x11) # store value to put something in memory
c.lw x15, 72(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x97ab97fba829838c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcdfada44814a2a92 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x12) # store value to put something in memory
c.lw x9, 116(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xe9b06f617a4b3fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xac9199326d9958f3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x13) # store value to put something in memory
c.lw x12, 40(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0x6aea0a00ae68c8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xafbbf83ac90f16e6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x355744e209a79104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd37904a5d6e46ad1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x15) # store value to put something in memory
c.lw x11, 20(x15) # perform operation

# Testcase cp_imm_mul
li x1, 0x9768d64e8d5fe83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf6bf7ce0101ecd7f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x12, 0(x14) # store value to put something in memory
c.lw x9, 0(x14) # perform operation

# Testcase cp_imm_mul
li x28, 0xe9056af7fb2190c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2afcbc53944cc4f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x11) # store value to put something in memory
c.lw x12, 4(x11) # perform operation

# Testcase cp_imm_mul
li x8, 0xfe7ffa6b6c5e31a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0d05417beb602974 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x14) # store value to put something in memory
c.lw x8, 8(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0x36e4c61c7e1ff693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0d76131ccc7e8c8a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x13, 12(x9) # store value to put something in memory
c.lw x15, 12(x9) # perform operation

# Testcase cp_imm_mul
li x2, 0x42c5db86e0747d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x320911ceb7a5116a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x8) # store value to put something in memory
c.lw x10, 16(x8) # perform operation

# Testcase cp_imm_mul
li x27, 0x1b8682280353e45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x03412910e3549a7b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x14, 20(x9) # store value to put something in memory
c.lw x11, 20(x9) # perform operation

# Testcase cp_imm_mul
li x22, 0x80f8dc6fd23f76e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7088e74420b965e5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x11) # store value to put something in memory
c.lw x14, 24(x11) # perform operation

# Testcase cp_imm_mul
li x14, 0x947e9551a6ec61dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x68edbfdd647b32ea # initialize rs2
la x14, scratch # base address 
addi x14, x14, -28 # sub immediate from rs1 to counter offset
c.sw x12, 28(x14) # store value to put something in memory
c.lw x14, 28(x14) # perform operation

# Testcase cp_imm_mul
li x13, 0x54e5a51660ea02c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa0d6015c8b4e40bc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -32 # sub immediate from rs1 to counter offset
c.sw x10, 32(x13) # store value to put something in memory
c.lw x13, 32(x13) # perform operation

# Testcase cp_imm_mul
li x18, 0x07fe869875070ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x200eac40fb67f0c8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -36 # sub immediate from rs1 to counter offset
c.sw x11, 36(x15) # store value to put something in memory
c.lw x10, 36(x15) # perform operation

# Testcase cp_imm_mul
li x10, 0x6b4c39b64898a6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xef3ca4f0d2da3f6f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x11) # store value to put something in memory
c.lw x10, 40(x11) # perform operation

# Testcase cp_imm_mul
li x1, 0x21ce2807720a45e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa6fd567c54c2858e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x9) # store value to put something in memory
c.lw x9, 44(x9) # perform operation

# Testcase cp_imm_mul
li x12, 0x0d78f446492af100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6fd4647be3e4e206 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x8) # store value to put something in memory
c.lw x12, 48(x8) # perform operation

# Testcase cp_imm_mul
li x29, 0x4fec5e2c76252e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64e00b065cfdea82 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x11) # store value to put something in memory
c.lw x13, 52(x11) # perform operation

# Testcase cp_imm_mul
li x29, 0x942e364c1770123c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa72a047200a5899c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x10) # store value to put something in memory
c.lw x13, 56(x10) # perform operation

# Testcase cp_imm_mul
li x19, 0x34332496333d5d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf60d6994df022964 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x15) # store value to put something in memory
c.lw x11, 60(x15) # perform operation

# Testcase cp_imm_mul
li x28, 0xda306303cbb32a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3e6bf6d1febce869 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x15) # store value to put something in memory
c.lw x12, 64(x15) # perform operation

# Testcase cp_imm_mul
li x14, 0x263c4707fcc2685f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9f5ead4fb174dabd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x13) # store value to put something in memory
c.lw x14, 68(x13) # perform operation

# Testcase cp_imm_mul
li x22, 0xb93a71abad184ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9dce3b6ac7fe251b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sw x14, 72(x13) # store value to put something in memory
c.lw x14, 72(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x5daf9e00967d6940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfdae53f7e5d4e29b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x11) # store value to put something in memory
c.lw x15, 76(x11) # perform operation

# Testcase cp_imm_mul
li x6, 0x83f0255050e1bbff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaebfcae5d911abe9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sw x14, 80(x8) # store value to put something in memory
c.lw x14, 80(x8) # perform operation

# Testcase cp_imm_mul
li x10, 0x2d138374b0b5564a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x632f52f25700ff60 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -84 # sub immediate from rs1 to counter offset
c.sw x9, 84(x10) # store value to put something in memory
c.lw x10, 84(x10) # perform operation

# Testcase cp_imm_mul
li x5, 0x1a6f3ea70f8b9d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd7bbfff28a19f79 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.sw x11, 88(x14) # store value to put something in memory
c.lw x13, 88(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0xe39e31a841f6cc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x622b6bbbef03b263 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x10) # store value to put something in memory
c.lw x10, 92(x10) # perform operation

# Testcase cp_imm_mul
li x14, 0x6672808253b81701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5fe939ede2ce8594 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x11) # store value to put something in memory
c.lw x14, 96(x11) # perform operation

# Testcase cp_imm_mul
li x27, 0x9265a515b5c6446b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe1b18f777e637297 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -100 # sub immediate from rs1 to counter offset
c.sw x13, 100(x11) # store value to put something in memory
c.lw x11, 100(x11) # perform operation

# Testcase cp_imm_mul
li x15, 0x1f23be64eb570f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9316706241a59e99 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -104 # sub immediate from rs1 to counter offset
c.sw x15, 104(x10) # store value to put something in memory
c.lw x15, 104(x10) # perform operation

# Testcase cp_imm_mul
li x11, 0xd179cb409d5bf6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x10d11e1c61a2ec8d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x9) # store value to put something in memory
c.lw x11, 108(x9) # perform operation

# Testcase cp_imm_mul
li x21, 0x4ba3737dcf11de30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66f973eea095a013 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sw x10, 112(x11) # store value to put something in memory
c.lw x13, 112(x11) # perform operation

# Testcase cp_imm_mul
li x10, 0x15618c3918d37c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc589693e9921f650 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x15, 116(x9) # store value to put something in memory
c.lw x10, 116(x9) # perform operation

# Testcase cp_imm_mul
li x3, 0xbdb0abe51ad1189f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x584ded7cef8f6fbb # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x10) # store value to put something in memory
c.lw x11, 120(x10) # perform operation

# Testcase cp_imm_mul
li x23, 0x5409b03598b5a0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5361a16c131c5e83 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x12) # store value to put something in memory
c.lw x15, 124(x12) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.beqz.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x627a5ff4f640978a)
li x27, 0xebf7437c35120691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x627a5ff4f640978a # initialize rs1
c.beqz x10, some_label_for_cbtype_8961790221742487079 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_8961790221742487079:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x46808d3a00b5ce92)
li x5, 0x34083191e66c6edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb97f72c5ff4a316e # initialize rs1
c.beqz x15, some_label_for_cbtype_9462112791493680901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_9462112791493680901:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 0 # initialize rs1 to 0
c.beqz x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x30, 0x27102a189ce525d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2ed4607000fe0f47 # initialize rs1
c.beqz x8, some_label_for_cbtype_7489066726471856298 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7489066726471856298:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x25aadbbf9227e315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe09825204df0226a # initialize rs1
c.beqz x9, some_label_for_cbtype_12297326099526484650 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_12297326099526484650:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x2b037ee04ed75d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba011cfb2116dace # initialize rs1
c.beqz x10, some_label_for_cbtype_3793143342024347223 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3793143342024347223:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0x1ba37f9cbaf19faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xba25a81bd54ac338 # initialize rs1
c.beqz x11, some_label_for_cbtype_1316136719551346491 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1316136719551346491:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x08d6ad12f1ca676f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0c2f70b3d55a9ca3 # initialize rs1
c.beqz x12, some_label_for_cbtype_10973683845869017972 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_10973683845869017972:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xce2c9231f0058ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4476f58f2af0671c # initialize rs1
c.beqz x13, some_label_for_cbtype_14147967805256729098 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14147967805256729098:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x2f77c2389e074281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x204bd388fa4f353c # initialize rs1
c.beqz x14, some_label_for_cbtype_4650134574368674367 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_4650134574368674367:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x629e74326a5cbf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb0ebf1fc8f2b35bc # initialize rs1
c.beqz x15, some_label_for_cbtype_14100246467746470018 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14100246467746470018:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x5ed376109800b1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
c.beqz x13, some_label_for_cbtype_6596713263122135930 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6596713263122135930:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x8f8fb13ab03ec258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
c.beqz x13, some_label_for_cbtype_12555584150839197339 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_12555584150839197339:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0xd42eaf9b1c3f3109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
c.beqz x13, some_label_for_cbtype_13214441253981290928 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_13214441253981290928:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0x23f214149f743313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_14469901711552135034 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14469901711552135034:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x9a4a629f764d9e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
c.beqz x12, some_label_for_cbtype_2692321148318270793 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2692321148318270793:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x59500b0e48d740b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
c.beqz x14, some_label_for_cbtype_6836669837563513473 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6836669837563513473:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0xb4f896b88314a5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
c.beqz x9, some_label_for_cbtype_11120247474205399314 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_11120247474205399314:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0x0055acbceeb01702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
c.beqz x13, some_label_for_cbtype_1037696535380664753 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1037696535380664753:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0xa15cee01a457869d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
c.beqz x10, some_label_for_cbtype_14441456337208327668 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_14441456337208327668:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x17, 0xfeac85717000175c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
c.beqz x14, some_label_for_cbtype_17900633590442399720 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_17900633590442399720:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x19f5aaf3b03f41e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.beqz x11, some_label_for_cbtype_1953199377797288886 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1953199377797288886:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x867bbfc91270cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
c.beqz x14, some_label_for_cbtype_7445996693022589554 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_7445996693022589554:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x6b67a3e2c267fa4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
c.beqz x12, some_label_for_cbtype_6690497880173684941 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_6690497880173684941:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xc91371e58439115b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
c.beqz x9, some_label_for_cbtype_966730172583570770 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_966730172583570770:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x18, 0xb900e8008a96a593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_1968159202049392301 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1968159202049392301:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0161996baffc18ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
c.beqz x14, some_label_for_cbtype_5666691909579767416 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_5666691909579767416:
addi x0, x2, 2
nop
nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi4spn.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4d4b42b44b26b0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 600 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xafaced4a3b2ab86a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 932 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7b02fda45bee3594 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 796 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe40030b845297924 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 684 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5e89be2c099c43a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 464 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x45966413ee4f2cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 920 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe940db8d4ffcefab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 948 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe14e9ef369efe19a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 72 # perform operation

# Testcase cp_imm_mul
li x6, 0x163dbbf44a3975f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 4 # perform operation

# Testcase cp_imm_mul
li x10, 0x72903c54f23a179a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 8 # perform operation

# Testcase cp_imm_mul
li x23, 0x7056c13cf5c3ca3f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 12 # perform operation

# Testcase cp_imm_mul
li x5, 0x718fad7ceec1fcef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 16 # perform operation

# Testcase cp_imm_mul
li x11, 0x7ae514b5480a4614 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 20 # perform operation

# Testcase cp_imm_mul
li x16, 0x81ef36947f3755b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 24 # perform operation

# Testcase cp_imm_mul
li x29, 0xb22bed46cb52e534 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 28 # perform operation

# Testcase cp_imm_mul
li x15, 0xe7b3a567ad7b0af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 32 # perform operation

# Testcase cp_imm_mul
li x25, 0xfa7071386ea9d1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 36 # perform operation

# Testcase cp_imm_mul
li x30, 0x153f911f55f88778 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 40 # perform operation

# Testcase cp_imm_mul
li x22, 0x70564433ef50b3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 44 # perform operation

# Testcase cp_imm_mul
li x3, 0x83c066128057c4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 48 # perform operation

# Testcase cp_imm_mul
li x15, 0xf525e661fae83a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 52 # perform operation

# Testcase cp_imm_mul
li x24, 0xd038da4e098b35fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 56 # perform operation

# Testcase cp_imm_mul
li x23, 0xef65019e23fff749 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 60 # perform operation

# Testcase cp_imm_mul
li x8, 0x8c2c0dfe642ed891 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 64 # perform operation

# Testcase cp_imm_mul
li x28, 0x237c777ed229676f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 68 # perform operation

# Testcase cp_imm_mul
li x6, 0xdb63f3d7339f43f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 72 # perform operation

# Testcase cp_imm_mul
li x11, 0xccbe01e534002a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 76 # perform operation

# Testcase cp_imm_mul
li x15, 0x72ac8c84c260beb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 80 # perform operation

# Testcase cp_imm_mul
li x7, 0xb8e173cac210dc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 84 # perform operation

# Testcase cp_imm_mul
li x2, 0xfa00207e898d587d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 88 # perform operation

# Testcase cp_imm_mul
li x17, 0x015d94e1616810f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 92 # perform operation

# Testcase cp_imm_mul
li x31, 0xd4dbe1531a816b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 96 # perform operation

# Testcase cp_imm_mul
li x24, 0xb1c0037cb92f265e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 100 # perform operation

# Testcase cp_imm_mul
li x5, 0xce27a142fbf6a8c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 104 # perform operation

# Testcase cp_imm_mul
li x13, 0xc5e8626bf97e95e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 108 # perform operation

# Testcase cp_imm_mul
li x15, 0x9053852e531fe581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 112 # perform operation

# Testcase cp_imm_mul
li x9, 0xbf4326024ff5a4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 116 # perform operation

# Testcase cp_imm_mul
li x4, 0xfd649eee33d56c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 120 # perform operation

# Testcase cp_imm_mul
li x31, 0x7f3e80a1090456af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 124 # perform operation

# Testcase cp_imm_mul
li x16, 0x0eed8127f98ed645 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 128 # perform operation

# Testcase cp_imm_mul
li x9, 0xae84cb67ec28cfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 132 # perform operation

# Testcase cp_imm_mul
li x9, 0x1e5c1ac8e72e48b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 136 # perform operation

# Testcase cp_imm_mul
li x8, 0x61e5ad33f6ff3b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 140 # perform operation

# Testcase cp_imm_mul
li x11, 0x0941e2dad5ee6eef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 144 # perform operation

# Testcase cp_imm_mul
li x20, 0xa416b97ea1d39f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 148 # perform operation

# Testcase cp_imm_mul
li x24, 0x9fae3e4af4fd9cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 152 # perform operation

# Testcase cp_imm_mul
li x22, 0x0df86bf9ab8db9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 156 # perform operation

# Testcase cp_imm_mul
li x24, 0x5112a8fa7f74aa0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 160 # perform operation

# Testcase cp_imm_mul
li x25, 0xb6c35dc6bb810088 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 164 # perform operation

# Testcase cp_imm_mul
li x1, 0xd7e4b06595915035 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 168 # perform operation

# Testcase cp_imm_mul
li x27, 0x79252182fdf00ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 172 # perform operation

# Testcase cp_imm_mul
li x27, 0x6164d3f42fe16c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 176 # perform operation

# Testcase cp_imm_mul
li x9, 0xf2daa081f08264c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 180 # perform operation

# Testcase cp_imm_mul
li x5, 0xcc53fcb7e495b736 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 184 # perform operation

# Testcase cp_imm_mul
li x29, 0xd10723f1aa16991b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 188 # perform operation

# Testcase cp_imm_mul
li x22, 0xf4e4279ed5500e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 192 # perform operation

# Testcase cp_imm_mul
li x15, 0xf0a7bea1c1145391 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 196 # perform operation

# Testcase cp_imm_mul
li x8, 0xa96c757ca07bdfed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 200 # perform operation

# Testcase cp_imm_mul
li x25, 0xcbe67a113d77ee60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 204 # perform operation

# Testcase cp_imm_mul
li x8, 0x4e8bf22332e89881 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 208 # perform operation

# Testcase cp_imm_mul
li x23, 0x8623a24e487dfe21 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 212 # perform operation

# Testcase cp_imm_mul
li x24, 0x4f884566773d58e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 216 # perform operation

# Testcase cp_imm_mul
li x15, 0x3d640cb938994b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 220 # perform operation

# Testcase cp_imm_mul
li x29, 0x5d3adb95a67386be # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 224 # perform operation

# Testcase cp_imm_mul
li x24, 0xd375e39c22bdd9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 228 # perform operation

# Testcase cp_imm_mul
li x9, 0xcebf53fe2e3ae012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 232 # perform operation

# Testcase cp_imm_mul
li x12, 0x25a236eedaea6210 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 236 # perform operation

# Testcase cp_imm_mul
li x29, 0x071c30c82e96a0d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 240 # perform operation

# Testcase cp_imm_mul
li x1, 0x8671ea4e896d04bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 244 # perform operation

# Testcase cp_imm_mul
li x22, 0x19edf42b42725d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 248 # perform operation

# Testcase cp_imm_mul
li x30, 0x5357ef2e13671297 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 252 # perform operation

# Testcase cp_imm_mul
li x18, 0x980d40075f7d7e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 256 # perform operation

# Testcase cp_imm_mul
li x24, 0xb5c407282618689f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 260 # perform operation

# Testcase cp_imm_mul
li x2, 0xa497cd359b6715dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 264 # perform operation

# Testcase cp_imm_mul
li x30, 0x8a870368a7e679da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 268 # perform operation

# Testcase cp_imm_mul
li x11, 0x09a74433a89f7b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 272 # perform operation

# Testcase cp_imm_mul
li x27, 0x3ca7e3fff6fed2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 276 # perform operation

# Testcase cp_imm_mul
li x3, 0x34b2bafa33c89e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 280 # perform operation

# Testcase cp_imm_mul
li x1, 0x3333ab99e845eda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 284 # perform operation

# Testcase cp_imm_mul
li x30, 0x81a93ebcca667165 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 288 # perform operation

# Testcase cp_imm_mul
li x28, 0x7bc334d095c98c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 292 # perform operation

# Testcase cp_imm_mul
li x12, 0xfcfdbf4783732a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 296 # perform operation

# Testcase cp_imm_mul
li x1, 0xf0071c20a304d70b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 300 # perform operation

# Testcase cp_imm_mul
li x24, 0xd36b8d573f6a54d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 304 # perform operation

# Testcase cp_imm_mul
li x16, 0x05c56fe3aaa29bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 308 # perform operation

# Testcase cp_imm_mul
li x16, 0xbb09c66a72e7250a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 312 # perform operation

# Testcase cp_imm_mul
li x18, 0xfc4b57121ce6bbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 316 # perform operation

# Testcase cp_imm_mul
li x19, 0x58e14288dc92ce48 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 320 # perform operation

# Testcase cp_imm_mul
li x28, 0x7f9d50db095b0e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 324 # perform operation

# Testcase cp_imm_mul
li x31, 0x60edd8c4ece14dee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 328 # perform operation

# Testcase cp_imm_mul
li x21, 0x5890105224fdadf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 332 # perform operation

# Testcase cp_imm_mul
li x25, 0xccadcc26eb1afcb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 336 # perform operation

# Testcase cp_imm_mul
li x28, 0xedbb977ef7d912d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 340 # perform operation

# Testcase cp_imm_mul
li x19, 0x6a39058b56e56856 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 344 # perform operation

# Testcase cp_imm_mul
li x12, 0xd826f5233e1e763c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 348 # perform operation

# Testcase cp_imm_mul
li x3, 0xac7eee9b4841e0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 352 # perform operation

# Testcase cp_imm_mul
li x24, 0x996c89c5b9086081 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 356 # perform operation

# Testcase cp_imm_mul
li x10, 0x6bd07c3fcd860228 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 360 # perform operation

# Testcase cp_imm_mul
li x22, 0x7abe82ae2241b62e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 364 # perform operation

# Testcase cp_imm_mul
li x10, 0x252a63c5b7a8dabe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 368 # perform operation

# Testcase cp_imm_mul
li x17, 0xcbf8815250ce86a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 372 # perform operation

# Testcase cp_imm_mul
li x22, 0xfc948f60da965bad # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 376 # perform operation

# Testcase cp_imm_mul
li x26, 0x4a2c130b4f995095 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 380 # perform operation

# Testcase cp_imm_mul
li x23, 0x76591d0293cc44fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 384 # perform operation

# Testcase cp_imm_mul
li x10, 0x199c7ef44095de60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 388 # perform operation

# Testcase cp_imm_mul
li x7, 0xa82f1842444f1535 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 392 # perform operation

# Testcase cp_imm_mul
li x5, 0x4824cf6e07b4bd6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 396 # perform operation

# Testcase cp_imm_mul
li x30, 0xfb79f55b6b5925d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 400 # perform operation

# Testcase cp_imm_mul
li x1, 0x3e6ea9f417124232 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 404 # perform operation

# Testcase cp_imm_mul
li x11, 0x9c7845a9db4de424 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 408 # perform operation

# Testcase cp_imm_mul
li x9, 0x04665341b9fcd4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 412 # perform operation

# Testcase cp_imm_mul
li x21, 0xf579b38d3412a534 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 416 # perform operation

# Testcase cp_imm_mul
li x13, 0x57e3ae2459f329e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 420 # perform operation

# Testcase cp_imm_mul
li x10, 0xf55a422dcb44f9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 424 # perform operation

# Testcase cp_imm_mul
li x15, 0x001bd5d5cd5d05d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 428 # perform operation

# Testcase cp_imm_mul
li x11, 0xbf84fd1aab03b502 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 432 # perform operation

# Testcase cp_imm_mul
li x13, 0x85d6c8585eec0ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 436 # perform operation

# Testcase cp_imm_mul
li x17, 0x034d5a167d58413d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 440 # perform operation

# Testcase cp_imm_mul
li x11, 0x7480b16d7e6cff5d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 444 # perform operation

# Testcase cp_imm_mul
li x14, 0xe3542732040c9bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 448 # perform operation

# Testcase cp_imm_mul
li x8, 0x0b3a3d4145dfcd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 452 # perform operation

# Testcase cp_imm_mul
li x27, 0xb99594273d2aae8e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 456 # perform operation

# Testcase cp_imm_mul
li x4, 0x8a2652d384a1d874 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 460 # perform operation

# Testcase cp_imm_mul
li x14, 0x267b1b4b0e652ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 464 # perform operation

# Testcase cp_imm_mul
li x11, 0xad540b6466da3cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 468 # perform operation

# Testcase cp_imm_mul
li x28, 0xf6e9c7f9a65e4388 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 472 # perform operation

# Testcase cp_imm_mul
li x25, 0x2e07c0e0dcf42ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 476 # perform operation

# Testcase cp_imm_mul
li x25, 0x52a12c8414455ead # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 480 # perform operation

# Testcase cp_imm_mul
li x3, 0xb604e0e99d4c93e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 484 # perform operation

# Testcase cp_imm_mul
li x3, 0x6f7eceb7b6adc470 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 488 # perform operation

# Testcase cp_imm_mul
li x18, 0x68b14cabe34f3170 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 492 # perform operation

# Testcase cp_imm_mul
li x14, 0x8c801893f3bdce80 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 496 # perform operation

# Testcase cp_imm_mul
li x5, 0x06b09c5a05456e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 500 # perform operation

# Testcase cp_imm_mul
li x11, 0x86f3280caf369bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 504 # perform operation

# Testcase cp_imm_mul
li x3, 0x4653a0c8417f288c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 508 # perform operation

# Testcase cp_imm_mul
li x27, 0xfedfab4f4cd2a369 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 512 # perform operation

# Testcase cp_imm_mul
li x19, 0xbf1f18b4ee3ef18c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 516 # perform operation

# Testcase cp_imm_mul
li x30, 0x6973845fd477bb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 520 # perform operation

# Testcase cp_imm_mul
li x10, 0xe30692f5530c3e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 524 # perform operation

# Testcase cp_imm_mul
li x28, 0x430d66d655cc66c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 528 # perform operation

# Testcase cp_imm_mul
li x17, 0x31475aa54b333c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 532 # perform operation

# Testcase cp_imm_mul
li x5, 0x1288b506c7a39339 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 536 # perform operation

# Testcase cp_imm_mul
li x18, 0xab5c1f93a9c5ba5b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 540 # perform operation

# Testcase cp_imm_mul
li x11, 0xc49689a4959ce227 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 544 # perform operation

# Testcase cp_imm_mul
li x2, 0x539a45e9d1e0d942 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 548 # perform operation

# Testcase cp_imm_mul
li x3, 0x4f31a89cc194042c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 552 # perform operation

# Testcase cp_imm_mul
li x28, 0x68695fa06c351ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 556 # perform operation

# Testcase cp_imm_mul
li x30, 0xfe02206a8ae2efdf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 560 # perform operation

# Testcase cp_imm_mul
li x2, 0xb03bfdc7b49ad01c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 564 # perform operation

# Testcase cp_imm_mul
li x17, 0x1fa834cd8ca8b2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 568 # perform operation

# Testcase cp_imm_mul
li x13, 0xd0d89f1fc49b1664 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 572 # perform operation

# Testcase cp_imm_mul
li x27, 0x3184b58fa343e7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 576 # perform operation

# Testcase cp_imm_mul
li x10, 0x369df7a299675ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 580 # perform operation

# Testcase cp_imm_mul
li x23, 0x5a1bbdc74225a090 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 584 # perform operation

# Testcase cp_imm_mul
li x26, 0x56e2a2f82d982d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 588 # perform operation

# Testcase cp_imm_mul
li x1, 0xc071237af249e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 592 # perform operation

# Testcase cp_imm_mul
li x27, 0x804fa40eca7b1f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 596 # perform operation

# Testcase cp_imm_mul
li x29, 0xda041c8a387f8c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 600 # perform operation

# Testcase cp_imm_mul
li x17, 0x7390a5952f1081d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 604 # perform operation

# Testcase cp_imm_mul
li x17, 0xa90986ee956a44f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 608 # perform operation

# Testcase cp_imm_mul
li x20, 0xa577acc2a677a18d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 612 # perform operation

# Testcase cp_imm_mul
li x1, 0x871c3a3532d0251a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 616 # perform operation

# Testcase cp_imm_mul
li x27, 0x91fec202cef10a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 620 # perform operation

# Testcase cp_imm_mul
li x8, 0x42d5906d6d770b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 624 # perform operation

# Testcase cp_imm_mul
li x4, 0xe2a963c04704d1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 628 # perform operation

# Testcase cp_imm_mul
li x11, 0xb69b5e14e6ee1f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 632 # perform operation

# Testcase cp_imm_mul
li x28, 0xd0de4555ee600135 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 636 # perform operation

# Testcase cp_imm_mul
li x24, 0x3bd00ce7b95caece # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 640 # perform operation

# Testcase cp_imm_mul
li x16, 0x167e3fa8ff2cc998 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 644 # perform operation

# Testcase cp_imm_mul
li x27, 0xc75e775a46019bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 648 # perform operation

# Testcase cp_imm_mul
li x12, 0xb007db0cb28ff50c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 652 # perform operation

# Testcase cp_imm_mul
li x20, 0x86ac85aab987953a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 656 # perform operation

# Testcase cp_imm_mul
li x14, 0x02e6ca7caa91bee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 660 # perform operation

# Testcase cp_imm_mul
li x15, 0x33145851a8815dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 664 # perform operation

# Testcase cp_imm_mul
li x21, 0x1d3c9bfb83c1b87b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 668 # perform operation

# Testcase cp_imm_mul
li x26, 0x0ef38948cd27dada # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 672 # perform operation

# Testcase cp_imm_mul
li x19, 0x32a1ded28bd40024 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 676 # perform operation

# Testcase cp_imm_mul
li x13, 0x2028c8f57e496496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 680 # perform operation

# Testcase cp_imm_mul
li x8, 0x7deb13c0b1e09062 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 684 # perform operation

# Testcase cp_imm_mul
li x23, 0x4ad8eb4539a3e7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 688 # perform operation

# Testcase cp_imm_mul
li x23, 0xf119d2f0161e0b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 692 # perform operation

# Testcase cp_imm_mul
li x6, 0x931be0bf3cf6b6be # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 696 # perform operation

# Testcase cp_imm_mul
li x7, 0xf655881c68d5436e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 700 # perform operation

# Testcase cp_imm_mul
li x25, 0xbc88afd9d81921bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 704 # perform operation

# Testcase cp_imm_mul
li x8, 0xd2e24956db87573c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 708 # perform operation

# Testcase cp_imm_mul
li x19, 0x2ba8e884ca62fda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 712 # perform operation

# Testcase cp_imm_mul
li x9, 0x8c66a8298a50972d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 716 # perform operation

# Testcase cp_imm_mul
li x10, 0xe079ba3e9a0e4a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 720 # perform operation

# Testcase cp_imm_mul
li x3, 0xc79362e730bb0ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 724 # perform operation

# Testcase cp_imm_mul
li x23, 0x8c7329a5725a2f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 728 # perform operation

# Testcase cp_imm_mul
li x17, 0xfa580dd0dc3c6bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 732 # perform operation

# Testcase cp_imm_mul
li x4, 0x314d1c0ae419a56f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 736 # perform operation

# Testcase cp_imm_mul
li x3, 0x265d696085634bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 740 # perform operation

# Testcase cp_imm_mul
li x21, 0xb1034409c4382f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 744 # perform operation

# Testcase cp_imm_mul
li x27, 0x95611e75054f65fd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 748 # perform operation

# Testcase cp_imm_mul
li x6, 0xa09cb3207e3ac7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 752 # perform operation

# Testcase cp_imm_mul
li x19, 0xf3009a3ed524e3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 756 # perform operation

# Testcase cp_imm_mul
li x30, 0x8713fbda8f9e6038 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 760 # perform operation

# Testcase cp_imm_mul
li x3, 0x9539708eb8d06add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 764 # perform operation

# Testcase cp_imm_mul
li x3, 0xaf6d8b6e616ee7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 768 # perform operation

# Testcase cp_imm_mul
li x13, 0xbff0516ac07260fe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 772 # perform operation

# Testcase cp_imm_mul
li x20, 0xbfb6fcde68b63afb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 776 # perform operation

# Testcase cp_imm_mul
li x16, 0xdf5542d2dcb06c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 780 # perform operation

# Testcase cp_imm_mul
li x27, 0xbc9264a453a51afc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 784 # perform operation

# Testcase cp_imm_mul
li x19, 0x13faab6c6f222017 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 788 # perform operation

# Testcase cp_imm_mul
li x22, 0x95b46784d74e794f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 792 # perform operation

# Testcase cp_imm_mul
li x17, 0xfa632b05ee3dd4f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 796 # perform operation

# Testcase cp_imm_mul
li x28, 0x7ccf5714fde67216 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 800 # perform operation

# Testcase cp_imm_mul
li x12, 0x711dee9d25ae88ea # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 804 # perform operation

# Testcase cp_imm_mul
li x22, 0x7c1866e8ce8a93ab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 808 # perform operation

# Testcase cp_imm_mul
li x26, 0x998456052f379565 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 812 # perform operation

# Testcase cp_imm_mul
li x5, 0x4d75a6cde42ae437 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 816 # perform operation

# Testcase cp_imm_mul
li x20, 0x9209113b67f6fac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 820 # perform operation

# Testcase cp_imm_mul
li x20, 0xbc25c44a5f9ed60e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 824 # perform operation

# Testcase cp_imm_mul
li x3, 0xe6b38e68aee3a9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 828 # perform operation

# Testcase cp_imm_mul
li x8, 0x66c27ab00b1f37b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 832 # perform operation

# Testcase cp_imm_mul
li x9, 0x404f958d409fb517 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 836 # perform operation

# Testcase cp_imm_mul
li x5, 0x893ecea716833921 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 840 # perform operation

# Testcase cp_imm_mul
li x17, 0x3d458572b36a2ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 844 # perform operation

# Testcase cp_imm_mul
li x8, 0x517509441d048be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 848 # perform operation

# Testcase cp_imm_mul
li x29, 0xb29d2226ef3db469 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 852 # perform operation

# Testcase cp_imm_mul
li x31, 0x7bebb061407c87f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 856 # perform operation

# Testcase cp_imm_mul
li x13, 0x1e9f83a120529b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 860 # perform operation

# Testcase cp_imm_mul
li x28, 0x107ff6a2352f7830 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 864 # perform operation

# Testcase cp_imm_mul
li x25, 0xcf4abcb311c35b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 868 # perform operation

# Testcase cp_imm_mul
li x3, 0x702b70000ca1dbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 872 # perform operation

# Testcase cp_imm_mul
li x23, 0x7894c7d7d1e1a0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 876 # perform operation

# Testcase cp_imm_mul
li x21, 0x2d2081beb74f45fc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 880 # perform operation

# Testcase cp_imm_mul
li x7, 0xafd721d4f6d9548b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 884 # perform operation

# Testcase cp_imm_mul
li x30, 0xdd2118ebd90df80f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 888 # perform operation

# Testcase cp_imm_mul
li x27, 0x8eed08281d502da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 892 # perform operation

# Testcase cp_imm_mul
li x11, 0xd16bbce1fd80d6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 896 # perform operation

# Testcase cp_imm_mul
li x30, 0x00ec8e33c49f579d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 900 # perform operation

# Testcase cp_imm_mul
li x7, 0xa9e0d9bf775dcd7c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 904 # perform operation

# Testcase cp_imm_mul
li x13, 0x0ab627759d9dbd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 908 # perform operation

# Testcase cp_imm_mul
li x8, 0xdaa4168f8eab6608 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 912 # perform operation

# Testcase cp_imm_mul
li x3, 0x4aec818943e7e8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 916 # perform operation

# Testcase cp_imm_mul
li x18, 0x6164b448f74910a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 920 # perform operation

# Testcase cp_imm_mul
li x15, 0x65d99fda99a3722d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 924 # perform operation

# Testcase cp_imm_mul
li x12, 0xf6bcb3fbf33ef66b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 928 # perform operation

# Testcase cp_imm_mul
li x16, 0xa3bf6dd4f746ee55 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 932 # perform operation

# Testcase cp_imm_mul
li x31, 0x9335df939f3a3b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 936 # perform operation

# Testcase cp_imm_mul
li x26, 0xce895fbe346748cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 940 # perform operation

# Testcase cp_imm_mul
li x13, 0x21d5b059b22a2b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 944 # perform operation

# Testcase cp_imm_mul
li x11, 0xb54c9c64291b0929 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 948 # perform operation

# Testcase cp_imm_mul
li x15, 0xf03881c2caa15b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 952 # perform operation

# Testcase cp_imm_mul
li x5, 0xae5be857a9c38e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 956 # perform operation

# Testcase cp_imm_mul
li x3, 0x5565ddc69eb421d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 960 # perform operation

# Testcase cp_imm_mul
li x15, 0x24a6b2ba4c98f864 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 964 # perform operation

# Testcase cp_imm_mul
li x11, 0x54a6dc0056e70779 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 968 # perform operation

# Testcase cp_imm_mul
li x15, 0x9408dc56593fb60d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 972 # perform operation

# Testcase cp_imm_mul
li x7, 0xe0ed91916c678770 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 976 # perform operation

# Testcase cp_imm_mul
li x24, 0x88ab1102801d8f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 980 # perform operation

# Testcase cp_imm_mul
li x26, 0x089acfb84087a53f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 984 # perform operation

# Testcase cp_imm_mul
li x20, 0x2e51012372611c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 988 # perform operation

# Testcase cp_imm_mul
li x11, 0xc1161c40d563c6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 992 # perform operation

# Testcase cp_imm_mul
li x7, 0xd48b073b7ea65efb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 996 # perform operation

# Testcase cp_imm_mul
li x10, 0xde3869b49164b540 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 1000 # perform operation

# Testcase cp_imm_mul
li x1, 0xb74b59241219ff32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 1004 # perform operation

# Testcase cp_imm_mul
li x23, 0x63f74a9359027823 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1008 # perform operation

# Testcase cp_imm_mul
li x14, 0xb4f7534d03f1cab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 1012 # perform operation

# Testcase cp_imm_mul
li x13, 0x5f11dddd69363dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 1016 # perform operation

# Testcase cp_imm_mul
li x15, 0xd33ea8de4636458f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1020 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.jr.S
// ******************


    
# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x9c22e31b037a93ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
c.jr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x578efd62708babc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
c.jr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xcda5fd143ff96c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
c.jr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0xacd8054f5fc96588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
c.jr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0xe0cb83b58319ec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
c.jr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0xe60b8b76913f5843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
c.jr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x11, 0xfa23f58c81d71f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
c.jr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x3ff2617d7c1f2137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
c.jr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xb108042fc6f8ba53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
c.jr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0xf308d9284d7b3f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
c.jr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xb2e01543bd20f0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
c.jr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x3d38f1f761b8e943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
c.jr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x6336b2d9a005b337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
c.jr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xe0b1ce1fe7d1d8ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
c.jr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x6b6648617b1e5daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
c.jr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0xc0cfab6e0519e4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
c.jr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x98e354e68757cbef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
c.jr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0x5a3681887667a4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
c.jr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0xe0cc5285c0a0f423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
c.jr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xa585aa6f6828deb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
c.jr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x417d561e0b6dccd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
c.jr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x0e33cce529730ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
c.jr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x504f07f40ca561c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
c.jr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x26, 0x02ea94a4ede4815e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
c.jr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0x92528839760cdd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
c.jr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x316943aa73b21547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
c.jr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0x7d556b552e1d3e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
c.jr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0x1872716e20f6ac70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
c.jr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0x28564b5b466856e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
c.jr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xc0e4da2cabf5f4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
c.jr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x4, 0xec2d33cc63733802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
c.jr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x29, 1b
c.jr x29 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.swsp.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0x160e0eb018073f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaf7a3ffac131895d # initialize rs2
la sp, scratch # base address 
c.swsp x0, 192(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xe4386869a5d5a533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5e205be23da2ce01 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x3a76fe95d6d1bdfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa4775c62b621d743 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0xe15fb5896c40cd64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x20c740301c7dbf9d # initialize rs2
la sp, scratch # base address 
c.swsp x3, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x8, 0x00afef6cb23c31a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x802b3b01ffcfbeb3 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 188(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0x1d36f2178088551e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8c003b7e7c55e6f6 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x16, 0xb30f1145a2ba4e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x456b96c1fba72c2f # initialize rs2
la sp, scratch # base address 
c.swsp x6, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x14, 0x36c76e8fed6a5c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x010c3327ca33af33 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0xa07ffbc52a13fac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3ce460d1968c488 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xd70a31e1a2d7f7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe0efe36722891f34 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xd29239526cea9a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7f0a4422f9d6b367 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x4, 0xc109e06c17faca45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4c0eea53b9b1bf94 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 132(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xb28d9ef3b8c2538e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1bff7e3c44e69300 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x239d0edd09edd912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x73de65a7b2da9a7a # initialize rs2
la sp, scratch # base address 
c.swsp x13, 16(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x429ec5b76eb0e8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8cc8d60389f26b4a # initialize rs2
la sp, scratch # base address 
c.swsp x14, 28(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xf32e1d338f2d594a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d826be1f925a432 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x61407d9a1d237a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xce8afceafb9031d7 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0xa8e07239f9063e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf7a1d997b6e119e # initialize rs2
la sp, scratch # base address 
c.swsp x17, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0xbddd6c04a9bb31f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0f076a68cb679d05 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 36(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x246755c29a9f65c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf89664a427ecbe4c # initialize rs2
la sp, scratch # base address 
c.swsp x19, 252(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0xc1f973b2e3129cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb10ae547b991b3a4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 160(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x70fa2ee491f5f89b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf7d219003fa6909a # initialize rs2
la sp, scratch # base address 
c.swsp x21, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0xce149bc37544ae66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4621d149e0dffd3b # initialize rs2
la sp, scratch # base address 
c.swsp x22, 148(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0xa3e657eca36937e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9d1339a1e9128306 # initialize rs2
la sp, scratch # base address 
c.swsp x23, 196(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xa891e0198fea777e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3c008792ac0c64c6 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x850640b0ee0b2bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x189c6d86c2530a0c # initialize rs2
la sp, scratch # base address 
c.swsp x25, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x0e24ba9771ab30c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x620ea33472875061 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 160(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0xa96d8a89c0a267c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2d2d5bb8402097ea # initialize rs2
la sp, scratch # base address 
c.swsp x27, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc7c0aca7984df593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x73f1e4da4dc29373 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xf73095c7f907942b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x97df3e2b825a248e # initialize rs2
la sp, scratch # base address 
c.swsp x29, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x9, 0x4b0213781ebe0a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xee798384b985bec1 # initialize rs2
la sp, scratch # base address 
c.swsp x30, 88(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0xd4429ec87e776b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x73c9aa86880ef6e8 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 52(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xf20cbe3c35b64900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 28(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x6f6019b0859e3263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 228(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0xd11b03055cfb2a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0x0457e353d7b82433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 208(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x26, 0x6bc8e2e7e20f730b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 172(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x444077dbaa9480ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x19, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0x06b493537f69b45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x29, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0x8d03f26ac094bca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x6, 220(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0x65e2122026171cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x27, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x2, 0x890d557a756a0c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 232(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0816c3b448c0fea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.swsp x28, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x6ec737ddeae6d267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 196(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xcdd436c99f09809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x29, 136(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x579db69c1e7a5efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x11, 204(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x940457f061314da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x27, 0x17b13389730efdfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 196(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xabe70214cb0d2574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbe090319938b10f8 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 0(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xeefa0efec541078a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x798b587890e35f4b # initialize rs2
la sp, scratch # base address 
c.swsp x3, 4(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x041dd67e93899622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5f64a5163d627b6f # initialize rs2
la sp, scratch # base address 
c.swsp x4, 8(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc32fe2067b96e7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x64a3e21d8f0a1b49 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 12(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x9273ae41d8f18db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa36f040001688a8d # initialize rs2
la sp, scratch # base address 
c.swsp x7, 16(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xb481725fed5382e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x88600be60dc18da5 # initialize rs2
la sp, scratch # base address 
c.swsp x17, 20(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x7905e2e70be45067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x30d19f154508ff9f # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x210294a6d4dd8b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x403949e7f4acf4eb # initialize rs2
la sp, scratch # base address 
c.swsp x29, 28(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xea338f65cfc5b075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x408afa4bb088deaa # initialize rs2
la sp, scratch # base address 
c.swsp x19, 32(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x2de81c670028c0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffaee36b2f431fc6 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 36(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xbb39f4222b11ce94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x35469459f929412e # initialize rs2
la sp, scratch # base address 
c.swsp x26, 40(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x3ce3f7c9d88527b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a0f522c1228854e # initialize rs2
la sp, scratch # base address 
c.swsp x15, 44(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x2a3425bd6e6ecf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x95294993e2edeaa4 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 48(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x36eb34a37dc51eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x206ca8eb2e66f093 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 52(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xbc9dddaccfd66f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x56366b0dc7ce5930 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 56(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x150e97b8ed0edcf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f8faad7413e1615 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 60(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xb1f4d6200bdb445e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x27a76ef60a74c70d # initialize rs2
la sp, scratch # base address 
c.swsp x16, 64(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf47d409823f7f490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3dcae80cd138fe38 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 68(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x36caa501010093ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x86b33454e6845aa8 # initialize rs2
la sp, scratch # base address 
c.swsp x17, 72(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x1e6b44e27d394ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x830d6cb3320ac5eb # initialize rs2
la sp, scratch # base address 
c.swsp x8, 76(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xd6fdb5b52076bb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd60d7837d677558 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 80(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x3bc668cdaa5f573b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x951d70bd821addcf # initialize rs2
la sp, scratch # base address 
c.swsp x24, 84(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x3c1b01e228dd5439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x21477faa16082f44 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 88(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x409729ebe2b593f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x521c87c57bbfcce6 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 92(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x04346ffd00e851e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8a4a8f0c95ce7546 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 96(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x10f154d61aff73b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc063c9b842868232 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 100(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x0e21e0a3b394813a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x562df7b07feb986a # initialize rs2
la sp, scratch # base address 
c.swsp x25, 104(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xd32376da38bb2fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ab1f2c9b09b4da5 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 108(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xce720ab4c7011ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd8e825c72aaaeb1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 112(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xc062b3d6d8112dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x179fcb3687a61ecf # initialize rs2
la sp, scratch # base address 
c.swsp x20, 116(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x87af8f3b21295076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc705719a72dc37ed # initialize rs2
la sp, scratch # base address 
c.swsp x20, 120(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xd48ea3dd078ba602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe43606c2a47d4540 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 124(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4339361cb40484ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xea6a9fe1c3ecedb9 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 128(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x77b9f5b39db34133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6815d218e6c844c3 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 132(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xf928726be35bfef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd7ecfa1fd83a1b21 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x177239fc599b8db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x773ba1a7bbad6c8b # initialize rs2
la sp, scratch # base address 
c.swsp x30, 140(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x62d40a860771f2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfc1b47e2067271f1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 144(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x69d3afa2a81fb4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9e04a2779c86b5ff # initialize rs2
la sp, scratch # base address 
c.swsp x14, 148(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xec6c4fe37de878f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6aa1fbe4514f61ee # initialize rs2
la sp, scratch # base address 
c.swsp x13, 152(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x80367ee3abc3dd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x04e09e148b49f461 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 156(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x2fd72114d78a4029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9c8acdcfc724020f # initialize rs2
la sp, scratch # base address 
c.swsp x22, 160(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xa48d6fbe8d0c51ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xea03cdf9b5087445 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 164(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x34ec9a7099e228bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xff837d362b41e338 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 168(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x84007a2a10192eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa6b518eea9114bb2 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 172(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x3498cf748a7d15e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf84191f998284e7b # initialize rs2
la sp, scratch # base address 
c.swsp x30, 176(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x3540a14935ec6238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa8fbbacffa0c971e # initialize rs2
la sp, scratch # base address 
c.swsp x9, 180(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8872c0846e250669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6493485766b3b2f1 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x9509b59c28391445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x48a704a45dfb4a03 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 188(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xd776cabae39b99c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0ea0bf63ca2c4bda # initialize rs2
la sp, scratch # base address 
c.swsp x8, 192(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x61f01bf9e76b545f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8f309fe2f0482d6e # initialize rs2
la sp, scratch # base address 
c.swsp x8, 196(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x06fd8aa8f0b2c2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1c8d40bf1218e4e5 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 200(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x7ccf99b19f910af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x20c8e08c824a43f8 # initialize rs2
la sp, scratch # base address 
c.swsp x19, 204(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x5c52521739a1424b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a8d44eeb641d481 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 208(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xe4757400f87abe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9acdd03bddffba4f # initialize rs2
la sp, scratch # base address 
c.swsp x19, 212(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x3924380ba6350f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xab7d0a39c706c6ab # initialize rs2
la sp, scratch # base address 
c.swsp x18, 216(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xba89180ffdf9e4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x145dbd743c614f66 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 220(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x2dcbd9019546ffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a01e4dabb1191cb # initialize rs2
la sp, scratch # base address 
c.swsp x16, 224(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xd2b5bb373678e9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe5c2e9f0cbc486d5 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 228(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x94784e1839cb6fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1140487d659c5f9b # initialize rs2
la sp, scratch # base address 
c.swsp x20, 232(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x8f609fec8ca6114b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xad293a71b5ddaa0c # initialize rs2
la sp, scratch # base address 
c.swsp x28, 236(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x3b3e048b4ef2b8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb39ce2233039cdc4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 240(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xc4c18cda49c6df66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xac9edb397298a346 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 244(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xcc4c2c485a1b417e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7a3a34d8e0ef1040 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 248(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x67efaf1dca8b3e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc8c3e89a0903ce32 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 252(sp)# perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.nop.S
// ******************


    
# Testcase cp_asm_count
c.nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sw.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x0e3e51d90288733b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x8, 0xe239a32cda1ec3ad # initialize rs2 with random value
addi x10, x10, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0x7313405189f4b016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x5e4eb333d02c1cb0 # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x457e82d6a84b5ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0xd46a111b8e405c19 # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x84a5e4ccbf348277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0xefd59942756b24f1 # initialize rs2 with random value
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xa73cdaf31604f04e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xaf8e3efb53ae974c # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x421c9c3e46c643b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xa5adffb6de6ad18b # initialize rs2 with random value
addi x13, x13, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x6dffc432ff1cd475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xf0504eb0ec9fb0f9 # initialize rs2 with random value
addi x15, x15, -32 # sub immediate from rs1 to counter offset
c.sw x14, 32(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x3dae4334e9b4bda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0xd43adec167b3ceab # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x15, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x340d349be1d80868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x0000000000000000 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x3a6fccf90d33c0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x11, 0x0000000000000001 # initialize rs2 with random value
addi x13, x13, -100 # sub immediate from rs1 to counter offset
c.sw x11, 100(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x5f6d9a98823e6944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x9, 0x0000000000000002 # initialize rs2 with random value
addi x12, x12, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x17, 0xa6a01bd73e522ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x8000000000000000 # initialize rs2 with random value
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x15, 80(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xb1f99fedd5d1ce06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x13, 0x8000000000000001 # initialize rs2 with random value
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x13, 52(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0xd9e5289e151d07ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x7fffffffffffffff # initialize rs2 with random value
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sw x13, 56(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0xa2a402075359570a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x7ffffffffffffffe # initialize rs2 with random value
addi x13, x13, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xf3b306e4d9b24dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0xffffffffffffffff # initialize rs2 with random value
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0x19555e83891811c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x8, 0xfffffffffffffffe # initialize rs2 with random value
addi x12, x12, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x26, 0x0b42975235982533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x5bbc887763ae86f7 # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xa97b66207096f765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x11, 104(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x77dc553160b0c12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0x5555555555555555 # initialize rs2 with random value
addi x8, x8, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x4c486efdfe87c8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x00000000ffffffff # initialize rs2 with random value
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0x1f04fc4c2bb6b81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x00000000fffffffe # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x13, 52(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x12, 0x6d9a68d488d7e06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0x0000000100000000 # initialize rs2 with random value
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0x0803b932f036747d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0000000100000001 # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x9, 108(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xc5a5e009dc0d81a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xc4d0d0f4f33a2260 # initialize rs2 with random value
addi x8, x8, -20 # sub immediate from rs1 to counter offset
c.sw x9, 20(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0xc3dccbcc2c0c8b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0x7ba2b3ec7c2eff39 # initialize rs2 with random value
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x13, 8(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0x65abada2e43577fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0xe66f4632840c609c # initialize rs2 with random value
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sw x11, 64(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0x28ba98f815a1fe82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x12, 0x6264bf9bb4698ef1 # initialize rs2 with random value
addi x11, x11, -60 # sub immediate from rs1 to counter offset
c.sw x12, 60(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0xad2f704f6e54cfb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xf620b145f96e460f # initialize rs2 with random value
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x4066c9f813a780bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0xd0b7ff937263fa05 # initialize rs2 with random value
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xe12f0f09fd1b352d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0xb14b3c2d859a370b # initialize rs2 with random value
addi x14, x14, -44 # sub immediate from rs1 to counter offset
c.sw x8, 44(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x23b9bfc92e0ab533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x030f709a1b9d7199 # initialize rs2 with random value
addi x15, x15, -112 # sub immediate from rs1 to counter offset
c.sw x14, 112(x15) # perform operation 

# Testcase cp_imm_mul
li x11, 0x858b50e9a44f304a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x9, 0xcc4a64253ce4b347 # initialize rs2 with random value
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x12) # perform operation 

# Testcase cp_imm_mul
li x9, 0x38077673f2891ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x10, 0xd423f1d64b1ddf26 # initialize rs2 with random value
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x10, 4(x9) # perform operation 

# Testcase cp_imm_mul
li x11, 0x9ae3fc75ebbcf70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x08d33abae808df23 # initialize rs2 with random value
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0xceb75e6733ffc978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0xb6c32086ce164017 # initialize rs2 with random value
addi x15, x15, -12 # sub immediate from rs1 to counter offset
c.sw x12, 12(x15) # perform operation 

# Testcase cp_imm_mul
li x8, 0x1b4a53e8e49bacfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0xc16a8455c7d31d3a # initialize rs2 with random value
addi x13, x13, -16 # sub immediate from rs1 to counter offset
c.sw x14, 16(x13) # perform operation 

# Testcase cp_imm_mul
li x4, 0xb7f0cb06fced8334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xd182802bf74fcfaf # initialize rs2 with random value
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x9, 20(x11) # perform operation 

# Testcase cp_imm_mul
li x1, 0xf9676fb888673e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x2db8532c66c80853 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sw x10, 24(x13) # perform operation 

# Testcase cp_imm_mul
li x1, 0x708dfde177e5271d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x8, 0x56465cf7ef227146 # initialize rs2 with random value
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x11) # perform operation 

# Testcase cp_imm_mul
li x17, 0x6e0f93b1ad026547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0x8e7d24d91a2d46fb # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x13, 32(x8) # perform operation 

# Testcase cp_imm_mul
li x24, 0xac83271f38ddcbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x12, 0xad6a0d49076847be # initialize rs2 with random value
addi x10, x10, -36 # sub immediate from rs1 to counter offset
c.sw x12, 36(x10) # perform operation 

# Testcase cp_imm_mul
li x9, 0x813cff01312af5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x14, 0x46b99b7c1d70a2e9 # initialize rs2 with random value
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x13) # perform operation 

# Testcase cp_imm_mul
li x19, 0xe05f4aea7150139c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x95b355e4acff1c0c # initialize rs2 with random value
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x15, 44(x11) # perform operation 

# Testcase cp_imm_mul
li x15, 0xf8c7255adb3704a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0x679d4437c36e0738 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x15, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x25, 0x2865a8a405cf74dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x62fedf0f348d7385 # initialize rs2 with random value
addi x14, x14, -52 # sub immediate from rs1 to counter offset
c.sw x15, 52(x14) # perform operation 

# Testcase cp_imm_mul
li x14, 0xd8b4ef08bc4db75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0xecb903486039f0d8 # initialize rs2 with random value
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x15, 56(x13) # perform operation 

# Testcase cp_imm_mul
li x20, 0x4854b602a8e9ecae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x10, 0xf094d2f717219379 # initialize rs2 with random value
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x9) # perform operation 

# Testcase cp_imm_mul
li x23, 0xa396971e804dabb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xac3a7722f0bad284 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sw x9, 64(x11) # perform operation 

# Testcase cp_imm_mul
li x5, 0x9b1e6a7f297e5c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x443e9620bf6cff56 # initialize rs2 with random value
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # perform operation 

# Testcase cp_imm_mul
li x14, 0x697230b79e106ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x12, 0x788b4cc23a382f89 # initialize rs2 with random value
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x12, 72(x10) # perform operation 

# Testcase cp_imm_mul
li x5, 0x05a81a823476d845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x14, 0x06e7d6adcb57c42d # initialize rs2 with random value
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x11) # perform operation 

# Testcase cp_imm_mul
li x21, 0x0dbca3f561a13d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0x4f57711922162d43 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x8, 80(x13) # perform operation 

# Testcase cp_imm_mul
li x1, 0x9f0b91687ff27ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x7492989760bc529f # initialize rs2 with random value
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x11, 84(x14) # perform operation 

# Testcase cp_imm_mul
li x19, 0x7db2082ccf7447aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x6651d04503745143 # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x13) # perform operation 

# Testcase cp_imm_mul
li x23, 0xa53e30a6494ea840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x0b041d774d12f4dd # initialize rs2 with random value
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x14) # perform operation 

# Testcase cp_imm_mul
li x30, 0xe63c67f674409517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x5393c391f2fe7881 # initialize rs2 with random value
addi x15, x15, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x15) # perform operation 

# Testcase cp_imm_mul
li x29, 0x8f870615139c03fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0xa4ed1b9b9f24a2af # initialize rs2 with random value
addi x9, x9, -100 # sub immediate from rs1 to counter offset
c.sw x14, 100(x9) # perform operation 

# Testcase cp_imm_mul
li x18, 0x2c78511ff48b4e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x1ffff4500f8dd402 # initialize rs2 with random value
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0x84592848778d56e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x6178b8328914978a # initialize rs2 with random value
addi x15, x15, -108 # sub immediate from rs1 to counter offset
c.sw x12, 108(x15) # perform operation 

# Testcase cp_imm_mul
li x1, 0xe2256bab1cdeaa6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x8, 0x1321ca8d5e8eafec # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x10) # perform operation 

# Testcase cp_imm_mul
li x13, 0x804bf6bbfc404852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x12, 0x47b43692352e94f1 # initialize rs2 with random value
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x12, 116(x9) # perform operation 

# Testcase cp_imm_mul
li x8, 0xf3549d1814425540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x1de4490545f67730 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x12, 120(x15) # perform operation 

# Testcase cp_imm_mul
li x31, 0x5e668d2f929485ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xe99a2cdac53b6164 # initialize rs2 with random value
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x9) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.jalr.S
// ******************


    
# Testcase cp_rs1 (Test source rs1 = x1)
li x19, 0xc7869fb63b9c77af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc7869fb63b9c77af # initialize legalized rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x4, 0xde63f4bc6a62ce86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xde63f4bc6a62ce86 # initialize legalized rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0xc1fe501a68fbf614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc1fe501a68fbf614 # initialize legalized rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x3809112a8ed48f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3809112a8ed48f07 # initialize legalized rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0x66d9654ccfb417dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x66d9654ccfb417dc # initialize legalized rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0xa89345336f01298b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa89345336f01298b # initialize legalized rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0xf44e6b28f94c83a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf44e6b28f94c83a4 # initialize legalized rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0xc2cc67d1c0899639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc2cc67d1c0899639 # initialize legalized rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x5e07ded821d01b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5e07ded821d01b60 # initialize legalized rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xa15af628bc836d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa15af628bc836d60 # initialize legalized rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xdbe4b5dc80ee0236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdbe4b5dc80ee0236 # initialize legalized rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x5d30abda1988d4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5d30abda1988d4e5 # initialize legalized rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xbdb0269a0085f4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbdb0269a0085f4e0 # initialize legalized rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x4a04174a43c779c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a04174a43c779c7 # initialize legalized rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xcb85af5390e4ed87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcb85af5390e4ed87 # initialize legalized rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0x834f6cf43618a746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x834f6cf43618a746 # initialize legalized rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0x8fe1bdb439b41cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8fe1bdb439b41cfc # initialize legalized rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0x6c1ca3fd7ff4895f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6c1ca3fd7ff4895f # initialize legalized rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x23d7021309fd5800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x23d7021309fd5800 # initialize legalized rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xda41275e96c8a723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xda41275e96c8a723 # initialize legalized rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x5a0b227dfd3a18f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a0b227dfd3a18f8 # initialize legalized rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x7163d19cda88c9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7163d19cda88c9bf # initialize legalized rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x3, 0x90fb4bb04d7aceec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x90fb4bb04d7aceec # initialize legalized rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0x34e7db2a3098d494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x34e7db2a3098d494 # initialize legalized rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0x03c0a1508aed4ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x03c0a1508aed4ae0 # initialize legalized rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x2e8ad803a1df1d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2e8ad803a1df1d3a # initialize legalized rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xac33c76e250db8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xac33c76e250db8ba # initialize legalized rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xfd3de91e7ff16ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfd3de91e7ff16ffe # initialize legalized rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x87566ee1f92743c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x87566ee1f92743c0 # initialize legalized rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x7de94e1c6ac942ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7de94e1c6ac942ce # initialize legalized rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0xbd16ee06634d9e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbd16ee06634d9e94 # initialize legalized rd (x1) to a random value that should get changed
la x31, 1f
c.jalr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x16, 1b
c.jalr x16 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8dae4c9a6d4e4949 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x0, 21 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xdd0813358545f063 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x1, 27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3d5f17edaa309015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x2, -15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x97d4a9f696114697 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x3, -13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf637128073e45ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x4, -1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x037cdf44acf52762 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 4 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb2d6eb59d60f48f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -29 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x86c2a5c767ffb298 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x7, -20 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5d0fd3f360222ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x8, -28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb89dc81ad5f9d8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x9, 30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb3d2c24970c14afe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, 7 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcac501a49f3d5ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, 31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2b58181105f8e083 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x12, -12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9355f3537b8c4b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 27 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x22b65ad22f467b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, -5 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8ef0132526a932e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, 17 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xce273bde03524bec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x16, -27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x49234b78934e691e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x17, 0 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8b5be832d4b75028 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, -2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa6812448f3a51425 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, 31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x6c17420f13fdb1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x20, -3 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x313e0b3dcf1a0127 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x21, -9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x633a7aadf60e88e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, -3 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x34f4a972f882c3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, -24 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa1e8302e3998ce45 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, 12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xcf6397774529200e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x25, 8 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7f16e4c42284c692 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x26, 7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x71e8fa2f27f5296f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8857570452e7294d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, -2 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1753a4b2657d5884 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, -27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5c001d3f98fb9d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1216236101575a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, -12 # perform operation

# Testcase cp_imm_zero
li x13, 0xc8b46bb4572d2441 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xffffffffffffffee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0xfffffffffffffff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0x7ffffffffffffff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, 11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x29, 0x8000000000000016 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, -21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x31, 0x8000000000000015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x6, 0x7fffffffffffffec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x6, 0x5bbc887763ae870b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, -13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x22, 0x5555555555555536 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x0000000100000010 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, -17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x000000010000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, -28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0x000000010000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x15, 0x000000010000001e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, -29 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sub.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc0ec96418565003c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9dfe520f9ffc68ed # initialize leagalized rd to a random value that should get changed
li x14, 0x02323b8528d1abc9 # initialize rs2
c.sub x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7f6e990407ace515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x685d0c3bbc8c7032 # initialize leagalized rd to a random value that should get changed
li x13, 0x27fd9288eb8a56cf # initialize rs2
c.sub x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x24927b9c44dbd714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc429355947bce666 # initialize leagalized rd to a random value that should get changed
li x14, 0xe5fad37d021d7ec7 # initialize rs2
c.sub x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xddacb1feb8ab753b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf077400be17185e5 # initialize leagalized rd to a random value that should get changed
li x11, 0x3336fe1e0f27260c # initialize rs2
c.sub x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x06c10b25faacaf07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48acf0568281adc6 # initialize leagalized rd to a random value that should get changed
li x10, 0x4a030b2df4c8e571 # initialize rs2
c.sub x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa7d680c76d1c5e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x68c3a2691f8af6c9 # initialize leagalized rd to a random value that should get changed
li x9, 0xe5cd73e89cb72476 # initialize rs2
c.sub x13, x9 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc80c87564253bb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc5e9a75d13870af3 # initialize leagalized rd to a random value that should get changed
li x15, 0x1c23357a597fe230 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe66165f5e774a894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe460022df43977f2 # initialize leagalized rd to a random value that should get changed
li x8, 0xddfa228a31cc4fa9 # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x40500fb4771c4cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa22853d9e8d8ea2a # initialize leagalized rd to a random value that should get changed
li x8, 0xfb49ea9baf96e3ac # initialize rs2
c.sub x12, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xc9e4a992ea49234d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x488866095edb49ca # initialize leagalized rd to a random value that should get changed
li x9, 0x5ce1609c254c0458 # initialize rs2
c.sub x10, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x23d7eff16cbf63b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x52619a6601b0a07e # initialize leagalized rd to a random value that should get changed
li x10, 0x89fd806da23d5df7 # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x3bc2cb9cc12eeb3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9ae1398c35b91f52 # initialize leagalized rd to a random value that should get changed
li x11, 0xad8cde53cf719954 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0x51bb7bc38954d90d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0c1e1b310d868a1 # initialize leagalized rd to a random value that should get changed
li x12, 0x09b94e6d2fb43a0f # initialize rs2
c.sub x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x6bc76b90308e96cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x396928ac69d3c2cf # initialize leagalized rd to a random value that should get changed
li x13, 0xcdbeb44726684a7f # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x2ce09e7f40c6ca4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x60e130bc5b8ecdda # initialize leagalized rd to a random value that should get changed
li x14, 0xc0ee36dbe21ca209 # initialize rs2
c.sub x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x5a3e7f5af9442d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d00b4ae1ff59b13 # initialize leagalized rd to a random value that should get changed
li x15, 0x3948792544872739 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x4018e47eb4549f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.sub x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x007e7611ca4ccb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffffffffff # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xafe847ef70e4ee4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffffffffff # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0x90aa9f66a7c440ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xc000000000000000 # initialize rs2
c.sub x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x22, 0x81f9672cd0d27abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xbfffffffffffffff # initialize rs2
c.sub x14, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0x98f513cd27d6f614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xc000000000000000 # initialize rs2
c.sub x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x16, 0x625ef87115705a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0xc000000000000001 # initialize rs2
c.sub x8, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0x0e51f26ae6044a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x8000000000000000 # initialize rs2
c.sub x14, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x7c779387203763f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000001 # initialize rs2
c.sub x9, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x19, 0x3ff09b5892413089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2dde443bb1d7437b # initialize leagalized rd to a random value that should get changed
li x13, 0xd221bbc44e28bc84 # initialize rs2
c.sub x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xf89cef1c4220edc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaaaaaaaaab # initialize rs2
c.sub x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x18, 0xf425cebcddab1a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2aaaaaaaaaaaaaaa # initialize leagalized rd to a random value that should get changed
li x15, 0xd555555555555555 # initialize rs2
c.sub x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x24b880dd5fa58544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffff80000000 # initialize rs2
c.sub x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xbd18eb27089ac665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff80000001 # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x19, 0x0492abf7c75a7c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
li x9, 0xffffffff80000000 # initialize rs2
c.sub x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0x79ea0f0812ab1de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff7fffffff # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0x5acf1ed8b532c2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x902553ec1b4f9e06 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.sub x13, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0x1d7473da73f44993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x84aa5e53a9517db8 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000001 # initialize rs2
c.sub x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x1589cf431dd0ab7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x22743151fb07cb53 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x39f82e82f9d57f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55b9fa17fe288c42 # initialize leagalized rd to a random value that should get changed
li x13, 0x8000000000000000 # initialize rs2
c.sub x13, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0xf16018e301553cac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xce6585f282753e45 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000001 # initialize rs2
c.sub x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x22b58ce391f69a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x596cbf1956b5a82d # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.sub x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x9, 0x38229e6654d50dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe4a789e11ec0008e # initialize leagalized rd to a random value that should get changed
li x11, 0x7ffffffffffffffe # initialize rs2
c.sub x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0x7c360df03d7626d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9f408fbf3fe9ce55 # initialize leagalized rd to a random value that should get changed
li x15, 0xffffffffffffffff # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xb8b5509769061fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7282fd8e32af193e # initialize leagalized rd to a random value that should get changed
li x8, 0xfffffffffffffffe # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x14, 0x215f53b3de751f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3bca61c09fd3ca73 # initialize leagalized rd to a random value that should get changed
li x14, 0x5bbc887763ae86f7 # initialize rs2
c.sub x14, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x3ad560670c2c8d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x152902da720f7e2d # initialize leagalized rd to a random value that should get changed
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.sub x11, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x40c15b418f8ec899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf92611fdd8d9c4e0 # initialize leagalized rd to a random value that should get changed
li x13, 0x5555555555555555 # initialize rs2
c.sub x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xbd442ced81cbfd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda8bd3045b69331d # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000ffffffff # initialize rs2
c.sub x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x467ee1ae47b4d3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8fb7af4d01683023 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0x60123dfb858da506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd2427d5d6bf3f22d # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000000 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0x4eebf2ce9ffc5cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8cc8876ac28485d2 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000100000001 # initialize rs2
c.sub x13, x8 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.ldsp.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x56799d9f8b87ba01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x129e742d71d1407e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x15, 208(sp)   # store value to put something in memory
c.ldsp x1, 208(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe016b9d5c9746cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc1d811396a947703 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x18, 360(sp)   # store value to put something in memory
c.ldsp x2, 360(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf803d18183624e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb769e5f58f804521 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x12, 56(sp)   # store value to put something in memory
c.ldsp x3, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1dbf1bff86dd0fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa0962c95ad79886f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x31, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9c5b515bc4d59330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6626d0fa28307c78 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x22, 448(sp)   # store value to put something in memory
c.ldsp x5, 448(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x37e5115e2ebeb7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ceb931f617d9690 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x12, 392(sp)   # store value to put something in memory
c.ldsp x6, 392(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xf1e1ace5d232709f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe529f08ee8fd6b76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x12, 192(sp)   # store value to put something in memory
c.ldsp x7, 192(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xced67943be870f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0ee0e5fe1d97a844 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x29, 296(sp)   # store value to put something in memory
c.ldsp x8, 296(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x5d44164303d459f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbb249bb8cfc1576f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x16, 136(sp)   # store value to put something in memory
c.ldsp x9, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaa1510a96dab5bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x679d1fafc8004607 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x16, 456(sp)   # store value to put something in memory
c.ldsp x10, 456(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x99381cab9a145286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x025206963d898c35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x26, 504(sp)   # store value to put something in memory
c.ldsp x11, 504(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x298d6c0bbb84ce8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xde28c5dedfe1e318 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x8, 480(sp)   # store value to put something in memory
c.ldsp x12, 480(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2abfded478cc4df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe321c21836767c9e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x30, 400(sp)   # store value to put something in memory
c.ldsp x13, 400(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7abf039d4f82eb9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa46a8dce33875321 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x30, 336(sp)   # store value to put something in memory
c.ldsp x14, 336(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe5220399c16e030c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0f83946caff4d767 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x3, 200(sp)   # store value to put something in memory
c.ldsp x15, 200(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x08f6ecf1823e4d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd5f4d54f81137701 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x25, 336(sp)   # store value to put something in memory
c.ldsp x16, 336(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x977a3ccbd2f3233c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa2111baafc7e0b28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x14, 272(sp)   # store value to put something in memory
c.ldsp x17, 272(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x130388d74881a596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x66d5fc702e751a88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x31, 456(sp)   # store value to put something in memory
c.ldsp x18, 456(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x2ad8aa223b382077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1aa0f85fa565e344 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x25, 48(sp)   # store value to put something in memory
c.ldsp x19, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb072a3213b172a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4c9d072134413dc3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x15, 48(sp)   # store value to put something in memory
c.ldsp x20, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x889750a86420e30d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x419ae1c610fbe43e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x6, 64(sp)   # store value to put something in memory
c.ldsp x21, 64(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x98ca3004bd6908e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x34d835da68d59217 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x26, 160(sp)   # store value to put something in memory
c.ldsp x22, 160(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x298e2294710bf4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc0d9709c6b59e94e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x27, 96(sp)   # store value to put something in memory
c.ldsp x23, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x781afd2aa7d4f6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0e27633e768996c5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x15, 384(sp)   # store value to put something in memory
c.ldsp x24, 384(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x62e721999c9d523b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x01f87f7f3e911ea4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x23, 32(sp)   # store value to put something in memory
c.ldsp x25, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd85b20ad8a7c7ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0a178d923274d6f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x11, 40(sp)   # store value to put something in memory
c.ldsp x26, 40(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xd1de8f25dca79302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5336f215437cbf10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x6, 280(sp)   # store value to put something in memory
c.ldsp x27, 280(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa6b1d20f1f6ae91d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x04e03fb10344d469 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x9, 80(sp)   # store value to put something in memory
c.ldsp x28, 80(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa96f09d6d5c4a922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe95a2bdb7afa8de7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x9, 288(sp)   # store value to put something in memory
c.ldsp x29, 288(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x19c50fedc990d57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x62f84d738183740d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x23, 440(sp)   # store value to put something in memory
c.ldsp x30, 440(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7a905425e5196d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x807dbf43012804e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x24, 376(sp)   # store value to put something in memory
c.ldsp x31, 376(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x49d967886c3ae5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43284a5937d0b125 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x73aedc375fd38a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x8, 0(sp)   # store value to put something in memory
c.ldsp x21, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x9b77ffb684ee7aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x15, 504(sp)   # store value to put something in memory
c.ldsp x29, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xd538980f7481e925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x73a2dd9a8696edf2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0xd6a742f9b88af7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x27, 8(sp)   # store value to put something in memory
c.ldsp x15, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x66808f4ed178d050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x30, 504(sp)   # store value to put something in memory
c.ldsp x31, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x9556abc1041a7ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x15ecc8706fcd12a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0x14616cf768f516e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x30, 16(sp)   # store value to put something in memory
c.ldsp x12, 16(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xec90badedaf930d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x13, 504(sp)   # store value to put something in memory
c.ldsp x23, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x9, 0x1156977f571c989f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x10b8efecc62558ac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x9, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x13, 0x537baebc1f6f4886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x24, 0(sp)   # store value to put something in memory
c.ldsp x13, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x24, 0x6789ce011fbb84a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x6, 504(sp)   # store value to put something in memory
c.ldsp x24, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x4, 0x694ed64ca246919f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xab82fd0f95bdc2ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0xfd95e87b4c7944a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x10, 8(sp)   # store value to put something in memory
c.ldsp x9, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x3, 0x79caadf97ff60a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x23, 504(sp)   # store value to put something in memory
c.ldsp x3, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0x368d47f36800fa3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe34cc485a65615eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x7, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0x0bfdd82ef4462c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x1, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x24, 0xd8c34844b50817f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x1, 504(sp)   # store value to put something in memory
c.ldsp x24, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x22, 0x2cb94e13eef3cca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc2aec7c5d0361831 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x22, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0xe2717c55845e6920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x31, 496(sp)   # store value to put something in memory
c.ldsp x15, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x20, 0xd5a01fa58fdb468c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x20, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x16, 0xe536f188d689522b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x824dd81c0535aadd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x16, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x23, 0x59fac5a68a92d7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x27, 504(sp)   # store value to put something in memory
c.ldsp x23, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x25, 0x1ff344b8e3195b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x11, 504(sp)   # store value to put something in memory
c.ldsp x25, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x16, 0x9686273f2b8f9b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x856fba895bc5bd06 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x16, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x14, 0x90daf91b075faa4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x23, 496(sp)   # store value to put something in memory
c.ldsp x14, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xf851be7120609ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x17, 504(sp)   # store value to put something in memory
c.ldsp x11, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x29, 0xa9121739e564a10e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8fd7a974182305db # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x29, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x20, 0x19d931fe5cddccc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x22, 440(sp)   # store value to put something in memory
c.ldsp x20, 440(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x22, 0x3ff0591298c1add9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x8, 504(sp)   # store value to put something in memory
c.ldsp x22, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xcee92fa1636345ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x85b9614c41ab0291 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x14, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x2bce7f9578a54b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x9, 336(sp)   # store value to put something in memory
c.ldsp x4, 336(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xf555f09afe98fbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x15, 504(sp)   # store value to put something in memory
c.ldsp x1, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x6, 0x83bdf2610ace36ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe8dd7eb0b4f83db6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0xbba6a1903b03e06d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x13, 168(sp)   # store value to put something in memory
c.ldsp x26, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x6, 0x7afa161200437d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x22, 504(sp)   # store value to put something in memory
c.ldsp x6, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0xd8737213c8fc60e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe26513c66de6d754 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x21, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0xe8f95a77a0362d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x10, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x9e20cac31b4cddbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x8, 504(sp)   # store value to put something in memory
c.ldsp x2, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x3713d260d0a23820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x37b65a2484d902ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x15, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x2b2c9a15d73a9b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x29, 496(sp)   # store value to put something in memory
c.ldsp x7, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0xb9b20c850a8d2e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x6, 504(sp)   # store value to put something in memory
c.ldsp x4, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x29, 0x5abfcff01df7a683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x55cfbf04d111c3f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x29, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x1, 0x119bf1cc27beabe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x27, 0(sp)   # store value to put something in memory
c.ldsp x1, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xb7e9ebb082dbe89f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x17, 504(sp)   # store value to put something in memory
c.ldsp x5, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0x2bf0e96904664b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1649384682682a68 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x31, 0x9457abc7f6eff664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x10, 8(sp)   # store value to put something in memory
c.ldsp x31, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x25, 0x433af814f27efdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x21, 504(sp)   # store value to put something in memory
c.ldsp x25, 504(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x9942d91fa73f3a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc129e6722ec6059d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x30, 0(sp)   # store value to put something in memory
c.ldsp x28, 0(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0xa5540f75f41e025f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd0a77c579b5891f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x27, 8(sp)   # store value to put something in memory
c.ldsp x8, 8(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x849668f52319bd80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdeea5939572879c5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x22, 16(sp)   # store value to put something in memory
c.ldsp x20, 16(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xec86e228827f086c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4e1f5f0beeebc5fe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x3, 24(sp)   # store value to put something in memory
c.ldsp x13, 24(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x8b63897aa520305b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3977f63497ad55b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x27, 32(sp)   # store value to put something in memory
c.ldsp x31, 32(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x04583ea47bdc3596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa149aa24ee1e56e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x7, 40(sp)   # store value to put something in memory
c.ldsp x29, 40(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0xf9bd9e7758cd3e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fa54b5f96057dff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x31, 48(sp)   # store value to put something in memory
c.ldsp x20, 48(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xa6b705ff1f1edb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9751fe013c1e3580 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x20, 56(sp)   # store value to put something in memory
c.ldsp x5, 56(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x146542470e597313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4328a6706da9c830 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x31, 64(sp)   # store value to put something in memory
c.ldsp x9, 64(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd4da007164ee9776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4326b2320bb429d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.sdsp x19, 72(sp)   # store value to put something in memory
c.ldsp x16, 72(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x2896c5d0c89982bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x201539a9434e000e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x15, 80(sp)   # store value to put something in memory
c.ldsp x25, 80(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf9e730a876b84c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5107f99937cc793e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.sdsp x8, 88(sp)   # store value to put something in memory
c.ldsp x18, 88(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xe7830a114062bc9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbfffa665bf5b0007 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x29, 96(sp)   # store value to put something in memory
c.ldsp x2, 96(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xbb418e8e0e8272e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd380462a06877a88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.sdsp x5, 104(sp)   # store value to put something in memory
c.ldsp x26, 104(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x183602a1ab6d5403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d91d711c211913f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x9, 112(sp)   # store value to put something in memory
c.ldsp x19, 112(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x258e2b1fadef886f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcdb71277da93cf49 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.sdsp x21, 120(sp)   # store value to put something in memory
c.ldsp x13, 120(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x0c1557eccd5bcbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x94f4e393891360c0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.sdsp x29, 128(sp)   # store value to put something in memory
c.ldsp x2, 128(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x91452334d2428754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x29c96b75e58f8ccd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x31, 136(sp)   # store value to put something in memory
c.ldsp x17, 136(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x317c66f4064025f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x94242a66801d07ce # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x8, 144(sp)   # store value to put something in memory
c.ldsp x25, 144(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xd66779b5e86aa07b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b934bacf2c9b07a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.sdsp x16, 152(sp)   # store value to put something in memory
c.ldsp x15, 152(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x04a77ded8201b07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcd452fdba7db9aa9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x12, 160(sp)   # store value to put something in memory
c.ldsp x24, 160(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x887fd8ee15605ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd18e7b78eed07e97 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x27, 168(sp)   # store value to put something in memory
c.ldsp x23, 168(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x1bdf03d8e688bb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x141758ccb939ca41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x18, 176(sp)   # store value to put something in memory
c.ldsp x26, 176(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x57c0d542d322bf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9ea7285773ba6d2a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x17, 184(sp)   # store value to put something in memory
c.ldsp x1, 184(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x1b911f249084f291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5ae0552e564a3079 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x14, 192(sp)   # store value to put something in memory
c.ldsp x11, 192(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x71f8b40d049903c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x72fbd1311f91ab0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x24, 200(sp)   # store value to put something in memory
c.ldsp x19, 200(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xabdaf693214198a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x20ea212420c0a2c4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x4, 208(sp)   # store value to put something in memory
c.ldsp x29, 208(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x4ae5f2cfd3e5cd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x95b9c8889a143c28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x20, 216(sp)   # store value to put something in memory
c.ldsp x30, 216(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0xaabe4d8a4f5bd702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf375a061b1112540 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.sdsp x30, 224(sp)   # store value to put something in memory
c.ldsp x3, 224(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x75f230dd04db105e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x46107869be59108f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.sdsp x16, 232(sp)   # store value to put something in memory
c.ldsp x10, 232(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xad535160ca54700b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x399afb316fecd5f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.sdsp x25, 240(sp)   # store value to put something in memory
c.ldsp x15, 240(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xf03400c223d22d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0319c6519dd9a159 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x18, 248(sp)   # store value to put something in memory
c.ldsp x19, 248(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x7aeaac3cd6ed7a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa653a000c398de39 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
c.sdsp x5, 256(sp)   # store value to put something in memory
c.ldsp x28, 256(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x5eb8d29c5aa418be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x79783df0888c3137 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
c.sdsp x22, 264(sp)   # store value to put something in memory
c.ldsp x10, 264(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x6ef20c42abc242bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb72ee50a090ff004 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x12, 272(sp)   # store value to put something in memory
c.ldsp x27, 272(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0x5846eeb972228741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x26ebf2cb13b18616 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x17, 280(sp)   # store value to put something in memory
c.ldsp x22, 280(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0xa34d3e68637fddef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6e14c1da8f33626e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x3, 288(sp)   # store value to put something in memory
c.ldsp x8, 288(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xb49297e91f500445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x120c0776cef893d7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x28, 296(sp)   # store value to put something in memory
c.ldsp x26, 296(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0xb3a6ed7155a0e905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc21d7486388afa92 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
c.sdsp x1, 304(sp)   # store value to put something in memory
c.ldsp x21, 304(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x7a0c9d610b5345f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x338e42df5f51906a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
c.sdsp x29, 312(sp)   # store value to put something in memory
c.ldsp x28, 312(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xe655fa1a6520ce44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa13eb77aa8919d61 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
c.sdsp x27, 320(sp)   # store value to put something in memory
c.ldsp x1, 320(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x0c0b3558ce703da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdef980398fc1d167 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x25, 328(sp)   # store value to put something in memory
c.ldsp x5, 328(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x24e76f424cd10c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x95c5aea4a7ba5755 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x31, 336(sp)   # store value to put something in memory
c.ldsp x13, 336(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xaab6360fe79f40ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdf382b62e21652a5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
c.sdsp x29, 344(sp)   # store value to put something in memory
c.ldsp x30, 344(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0xa32f6c8efbd712f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x36926c6d886d5d90 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x4, 352(sp)   # store value to put something in memory
c.ldsp x23, 352(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x5b136a614ef5ce1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dcaee1663c092f5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x7, 360(sp)   # store value to put something in memory
c.ldsp x11, 360(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x19e86f2321d2917e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba75b195da80e102 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
c.sdsp x10, 368(sp)   # store value to put something in memory
c.ldsp x20, 368(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xe436d25282395b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd894d8f2cdd43d6d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x15, 376(sp)   # store value to put something in memory
c.ldsp x19, 376(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xd901da7cb7402153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd3648924cc5fe4e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x18, 384(sp)   # store value to put something in memory
c.ldsp x13, 384(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xc2db7aafdd033840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x063a2532d0e94e8f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x31, 392(sp)   # store value to put something in memory
c.ldsp x30, 392(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x2e76242dd84cdf0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x126c93ff8da7c7da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x3, 400(sp)   # store value to put something in memory
c.ldsp x9, 400(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xfe962f872fe1ebf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xebef5912c1a58e91 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x15, 408(sp)   # store value to put something in memory
c.ldsp x30, 408(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x7d23c1554f48ca93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2509e6e456b126c9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x23, 416(sp)   # store value to put something in memory
c.ldsp x13, 416(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8ddc08e2f89974f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x831c96f85f2658cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x28, 424(sp)   # store value to put something in memory
c.ldsp x10, 424(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf74e518da37d4a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x85f2243df42d6c97 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
c.sdsp x25, 432(sp)   # store value to put something in memory
c.ldsp x2, 432(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x2ffc1bcebbc42270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4994e0835c8a16f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x5, 440(sp)   # store value to put something in memory
c.ldsp x24, 440(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x89d06ea2015ab3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6387acb306fc07d3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x4, 448(sp)   # store value to put something in memory
c.ldsp x17, 448(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb8cbdc4c269550de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x088349fbd4e4b1fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x31, 456(sp)   # store value to put something in memory
c.ldsp x22, 456(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xbaf329e833f487f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdca0371270c6ca84 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
c.sdsp x17, 464(sp)   # store value to put something in memory
c.ldsp x13, 464(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x2e89aa0e9d5f784b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2843c016dcdfa56b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
c.sdsp x4, 472(sp)   # store value to put something in memory
c.ldsp x12, 472(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x443e8bff592370af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x85c7a12f0c618e19 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x20, 480(sp)   # store value to put something in memory
c.ldsp x10, 480(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xab5641eba148e504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5a80f46a81a3b7a8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x30, 488(sp)   # store value to put something in memory
c.ldsp x17, 488(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xae3b18fa776fa84b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x27b1bc03cf3ac5bf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x3, 496(sp)   # store value to put something in memory
c.ldsp x14, 496(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0xf7b466d24cbe3249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3faf33e0776ad219 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x19, 504(sp)   # store value to put something in memory
c.ldsp x9, 504(sp) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lui.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc0cbfbe996cec123 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x1, 16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x72b53a7adc558d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048567 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfecab96b03f35096 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x3, 1048566 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x84ee573d4b8a0366 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x4, 1048564 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf9e494e28db2deb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 1048569 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x45379fd0793dd04b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x6, 19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x84397ee6e691223b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x7, 7 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x845acd9e1d9bb799 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x8, 1048558 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf34baae01a27ec09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048557 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd465942e89e6176e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x10, 1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x57d85d89df9c915f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048560 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x127108738750ec23 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x809418e745c0ef2e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x87050da3f98ecd1f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2128844215befc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 1048563 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x2d44223b646d5c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x16, 3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x09afa27d2a5a8e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x67ef8e6f4f49c75e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1048561 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x05ac7326d5c69d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048551 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc38a01b6cf54471c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x20, 1048560 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xbc74d407f21af374 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc1910fc85fc12f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048550 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x010873664ae1b142 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9886fc25cfac00ca # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x24, 19 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x2ae08d76e8db082c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x25, 11 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x52d97205cf5f15d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x26, 1048544 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6d83f8d1f3fe4824 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1d835007a154f659 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 24 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe9712865a39191e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x29, 29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1fca47d8170b645f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x30, 1048558 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa6254e04ce9f41df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x4efb18c47cfd5c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0xd2357da1f57cb641 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xa950c95f7f0c7a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x27, 0x25292a2a514e767e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1048544 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x2, 0xbe299dbab80daacd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048545 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x5, 0xa28ea6c627c03a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x15, 0x226a29e977ff2d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0xd45e46911c5b1050 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048575 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x22, 0x6eaae40ad126c5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048574 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x11, 0xd58dcea0ac39fb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048554 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x23, 0xb6df4e92c09fcc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x17, 0x7f963d5af14b4ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 22 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lwsp.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x562b43250533fa07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4fdf079dac5668d7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x27, 168(sp)   # store value to put something in memory
c.lwsp x1, 168(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xbcc0de031348f96b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x982fc21c273b9da2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x13, 28(sp)   # store value to put something in memory
c.lwsp x2, 28(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7b4ec13a23d05a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6036a2a0fffbc810 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x11, 112(sp)   # store value to put something in memory
c.lwsp x3, 112(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf36836c6059ba85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xae2fb9e0394319dc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x14, 156(sp)   # store value to put something in memory
c.lwsp x4, 156(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb2e8179170237e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd815f8a45ceaa387 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x18, 208(sp)   # store value to put something in memory
c.lwsp x5, 208(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6f3690e887bb7e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb01275948e4f073d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x18, 68(sp)   # store value to put something in memory
c.lwsp x6, 68(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa458b0aa6b924ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcb767fcd3ac79374 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x16, 88(sp)   # store value to put something in memory
c.lwsp x7, 88(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb8626a9e83900677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2c1339cfbb46afab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x18, 240(sp)   # store value to put something in memory
c.lwsp x8, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x43b2bf46ff7c5a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd4aa9f35e595b18c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x14, 204(sp)   # store value to put something in memory
c.lwsp x9, 204(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x906d65d73414b4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9043a332908c7d9b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x13, 72(sp)   # store value to put something in memory
c.lwsp x10, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x204ddd37a10de5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x20a1795a3ba4cca7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x6, 196(sp)   # store value to put something in memory
c.lwsp x11, 196(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x65beb3df871195ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x047a2e5e19d57670 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x7, 152(sp)   # store value to put something in memory
c.lwsp x12, 152(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb961cb96604f9646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15ab5c8ec71f095c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x10, 48(sp)   # store value to put something in memory
c.lwsp x13, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xac636cfabddf9e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb39bd9c88c7304d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x24, 188(sp)   # store value to put something in memory
c.lwsp x14, 188(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x32b0b7c26dab0fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd3700bbd6cbf70ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x5, 12(sp)   # store value to put something in memory
c.lwsp x15, 12(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x38a707f9987619ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x053092410e73f2eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x24, 220(sp)   # store value to put something in memory
c.lwsp x16, 220(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x31d33ebbf1cec708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xeaf37999ba03a46d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x10, 144(sp)   # store value to put something in memory
c.lwsp x17, 144(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xdbbbc68a15b3185d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc6e1a1b89f24b0a8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x16, 76(sp)   # store value to put something in memory
c.lwsp x18, 76(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xffd551e2577fb265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa215095e5ba4d9bd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x3, 240(sp)   # store value to put something in memory
c.lwsp x19, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe94a2fd61b8193a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xabec19d993149b34 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x4, 96(sp)   # store value to put something in memory
c.lwsp x20, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x29b345a26b5aad0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x075aa7335c82d0f0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x12, 84(sp)   # store value to put something in memory
c.lwsp x21, 84(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb2b44a788df98206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x917f151d46c845b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x12, 80(sp)   # store value to put something in memory
c.lwsp x22, 80(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x72048d6a0b536b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x99208f8272a9e66e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x17, 48(sp)   # store value to put something in memory
c.lwsp x23, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x1c3639b758dc5ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2d2e4a8cd76ddab3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x4, 84(sp)   # store value to put something in memory
c.lwsp x24, 84(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9d2e5496b5c323a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xba43e4789217030d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x16, 112(sp)   # store value to put something in memory
c.lwsp x25, 112(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x44c80351d2b5edda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x195560b1e5f46fa6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x13, 32(sp)   # store value to put something in memory
c.lwsp x26, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7104fe07088bb373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x71a0f0baa35a8253 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x7, 244(sp)   # store value to put something in memory
c.lwsp x27, 244(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0b4627e680bae0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8812fd2e16ccdc14 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x6, 48(sp)   # store value to put something in memory
c.lwsp x28, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x060bec2b85d3dfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2dfafda3eeb06078 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x6, 100(sp)   # store value to put something in memory
c.lwsp x29, 100(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x928332346fbf013a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83b52361221a622f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x1, 68(sp)   # store value to put something in memory
c.lwsp x30, 68(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xceca41cb20ef2b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x13855578a56faf1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x27, 184(sp)   # store value to put something in memory
c.lwsp x31, 184(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xa9ca718c32a949a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x62609653922fcd22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x5a89864951f983e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x25, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x9f6879eca729d45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0xd7c847700d67f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x36cd835fa2f11145 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x589c401dd1f1f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x19, 4(sp)   # store value to put something in memory
c.lwsp x9, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x7a294f20b2a71e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x16, 252(sp)   # store value to put something in memory
c.lwsp x22, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x921afdb4ba18bfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe970753e104dcf4d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x8, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0xae053d29f060aecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x9, 8(sp)   # store value to put something in memory
c.lwsp x6, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x674bb23acbc3e18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x27, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x7522913926fa99b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x027c4909bdb25a3d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0xf85f13ebc4f00a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x10, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0x9bbef6627b866223 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000080000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x12, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0x2195ab5bab42d70e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6b6b9af7878f2537 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x25, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x10, 0x7bdb679b13d3c18c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000080000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x27, 4(sp)   # store value to put something in memory
c.lwsp x10, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0x88b5dfa9c95953e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000080000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x27, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x26, 0xc67abc1692b44539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf35b309c3c9c69f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x1f709ceb7cff0826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x830c062f8bf8f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x4, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0xb56592152c2250c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4c9aac53bcb400fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x4, 0xedf38ceec4fd1084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x000000007ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x22, 248(sp)   # store value to put something in memory
c.lwsp x4, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0xc245f6016e16bd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x3, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x0d4444da9be9ba37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8d53ab2d908dcef3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x24, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x3d0ee75d39b909f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x21, 252(sp)   # store value to put something in memory
c.lwsp x1, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xf853356766498ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x3db858444fcc08b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x263b0005374b675b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x11, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0xcf441eb3ac8b0bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x29, 248(sp)   # store value to put something in memory
c.lwsp x17, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x2531c346296a2ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x12, 252(sp)   # store value to put something in memory
c.lwsp x11, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x2652a0f69c3591d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6da24d13369ed1df # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x8, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0xc00edbc8aa952adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000aaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x17, 168(sp)   # store value to put something in memory
c.lwsp x9, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0xb762ef35efafde36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000aaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x4, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xab7add77c8a6b1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6a2c09001ceff22f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xa755e5df8d9f8473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000055555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x22, 84(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x24, 0xa322f8d0c6a8d6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000055555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x24, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x31, 0x1f3b1cbca22f8645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x64ad115e573000d2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x31, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0xe062d60585dc895e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000063ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x23, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0xa941eb5e20e257f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x14, 252(sp)   # store value to put something in memory
c.lwsp x23, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0x19c8e9bc91a9909f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe34d23f7fbb56a25 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x23, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0xfb0ff32c6d78e0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000e3ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x23, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x21, 0x140d3c708d079f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000e3ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x21, 252(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xed870b545376ff93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa8ea8bbdd1d95776 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x16, 0(sp)   # store value to put something in memory
c.lwsp x14, 0(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x02a1cb847ee614fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f9116c58b009628 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x11, 4(sp)   # store value to put something in memory
c.lwsp x25, 4(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xdb04cfdba25c0c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x707ad3be94938501 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x14, 8(sp)   # store value to put something in memory
c.lwsp x16, 8(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0xcd9f35bbd6774a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x350969a9362fca3f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x19, 12(sp)   # store value to put something in memory
c.lwsp x3, 12(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x0f42dace63590408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x51fed31d60e28930 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x23, 16(sp)   # store value to put something in memory
c.lwsp x3, 16(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x50df364e41014939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4a5212d8ccdcc321 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x15, 20(sp)   # store value to put something in memory
c.lwsp x31, 20(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xee8c8c9e2da62e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4ab521894e848b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x14, 24(sp)   # store value to put something in memory
c.lwsp x29, 24(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x7baff3a15c55d246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd1edd466dd62c30a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x25, 28(sp)   # store value to put something in memory
c.lwsp x16, 28(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x54bff4db6140eb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9183ba88b83b6a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x1, 32(sp)   # store value to put something in memory
c.lwsp x29, 32(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x965216cbe894f8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x38b139b255c8a5f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x1, 36(sp)   # store value to put something in memory
c.lwsp x9, 36(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x37ce0b19974a2294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xff7f0106a353e403 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x25, 40(sp)   # store value to put something in memory
c.lwsp x23, 40(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x8a2484a7c8dc0993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3d7ca8a853b73d76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x11, 44(sp)   # store value to put something in memory
c.lwsp x24, 44(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x90be3aded8a866e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5d46b7ddda6fd06e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x8, 48(sp)   # store value to put something in memory
c.lwsp x11, 48(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xb2b9ff9f9c689796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x42d2f5063e82611e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x21, 52(sp)   # store value to put something in memory
c.lwsp x10, 52(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0xd595d12c17d1ba08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1db0d51b27ffef90 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x5, 56(sp)   # store value to put something in memory
c.lwsp x24, 56(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xcda25d5df1c1d992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x021d4f488bd5ec38 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x22, 60(sp)   # store value to put something in memory
c.lwsp x26, 60(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x920ca053ad396ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x277dc2c1216c056d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x16, 64(sp)   # store value to put something in memory
c.lwsp x8, 64(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xc3ca2d02a0a7940e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc49271c3098e6315 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x25, 68(sp)   # store value to put something in memory
c.lwsp x15, 68(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x62871387a406d6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0f437911f2fe35cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x22, 72(sp)   # store value to put something in memory
c.lwsp x10, 72(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x739413267e6832b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb1e87cb388ecf275 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x31, 76(sp)   # store value to put something in memory
c.lwsp x26, 76(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x8601f5eef4695b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x20ee4f202afd0a13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x17, 80(sp)   # store value to put something in memory
c.lwsp x7, 80(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xf9a6ab301e1b66a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3c0724504cbf6d47 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x1, 84(sp)   # store value to put something in memory
c.lwsp x15, 84(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x0308292d673a8efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8e45b5e384d6c5c7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x24, 88(sp)   # store value to put something in memory
c.lwsp x17, 88(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xcb98abb2a77e86ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe0fbbdf12f20a07c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x12, 92(sp)   # store value to put something in memory
c.lwsp x5, 92(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xb3e96197a1cfb0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x50f6987c1ce392a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x17, 96(sp)   # store value to put something in memory
c.lwsp x14, 96(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xb416f1df17f50506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x99f40c254429f159 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x28, 100(sp)   # store value to put something in memory
c.lwsp x1, 100(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x0b03947ce5507fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa23b37911effa002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x25, 104(sp)   # store value to put something in memory
c.lwsp x11, 104(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x92d60a887df0f6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x022777673c8403d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x23, 108(sp)   # store value to put something in memory
c.lwsp x1, 108(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xa0340ffabac89ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x53bfcc16689f7f32 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x9, 112(sp)   # store value to put something in memory
c.lwsp x15, 112(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xa8bd9bac5e2a7cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3d33e162edeea4da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x10, 116(sp)   # store value to put something in memory
c.lwsp x16, 116(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe6f73a861d19c9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfb40d5bb6c9ff194 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x21, 120(sp)   # store value to put something in memory
c.lwsp x27, 120(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xb49bbaca223d41e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x360a4acda635cd6c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x24, 124(sp)   # store value to put something in memory
c.lwsp x27, 124(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xb33a8083df605fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef8eb3d98f9159d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x12, 128(sp)   # store value to put something in memory
c.lwsp x5, 128(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xa4b3d02d393cb819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x19c1175b1f9a0dad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x5, 132(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x446f12066b982dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1e9a0c6e756557ab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x30, 136(sp)   # store value to put something in memory
c.lwsp x10, 136(sp) # perform operation

# Testcase cp_imm_mul
li x4, 0x15cf0143ac012c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x01d092384191ea02 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x26, 140(sp)   # store value to put something in memory
c.lwsp x4, 140(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x9962db26a518b070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f6c581b864e3c3c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x16, 144(sp)   # store value to put something in memory
c.lwsp x17, 144(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xb110e5e82ee8aa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x020b1af5849091b5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x13, 148(sp)   # store value to put something in memory
c.lwsp x26, 148(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x6235d4ddc7224d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x81f7951747c91899 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x11, 152(sp)   # store value to put something in memory
c.lwsp x14, 152(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x2c9959b74e6bc611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53e65ba98e77f31b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x25, 156(sp)   # store value to put something in memory
c.lwsp x15, 156(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x46e9adceb9250bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6a97460efaa5ea26 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x30, 160(sp)   # store value to put something in memory
c.lwsp x1, 160(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0xdfa52ce3f0bbaac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bc69db2508f59e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x29, 164(sp)   # store value to put something in memory
c.lwsp x20, 164(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xb368187c7b046f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x57919cb4693fc948 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x10, 168(sp)   # store value to put something in memory
c.lwsp x19, 168(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x70f2c341338f507d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9d2a9eaf1376f530 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x13, 172(sp)   # store value to put something in memory
c.lwsp x27, 172(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xefbd723df16fdec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x467d81d0fd0c24cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x14, 176(sp)   # store value to put something in memory
c.lwsp x6, 176(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x7e1c7589ad129f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5ac6f516af49c96c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x16, 180(sp)   # store value to put something in memory
c.lwsp x27, 180(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xd0c12d496812dc4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3c78e4696eab791e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x27, 184(sp)   # store value to put something in memory
c.lwsp x19, 184(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0xbe667b793f4f60f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x70f4aa642094ade3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x18, 188(sp)   # store value to put something in memory
c.lwsp x25, 188(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x1c992db5e2b18442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7d38c7e212ce2293 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x24, 192(sp)   # store value to put something in memory
c.lwsp x15, 192(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x3a24b041ff171a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd89c3b3d96b891a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x3, 196(sp)   # store value to put something in memory
c.lwsp x16, 196(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x763271b7263a8efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x13b6f39b66a6bbcf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x17, 200(sp)   # store value to put something in memory
c.lwsp x1, 200(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x5be3670d932ba8e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fce3399aec3689d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x18, 204(sp)   # store value to put something in memory
c.lwsp x19, 204(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x17e81ed5a3969bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x69a32417ef9d4de2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x12, 208(sp)   # store value to put something in memory
c.lwsp x18, 208(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x2a10ddf094bdb3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaa7d295000317190 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x4, 212(sp)   # store value to put something in memory
c.lwsp x20, 212(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe679f48d628428ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2bd75278cda51133 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x18, 216(sp)   # store value to put something in memory
c.lwsp x27, 216(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x662d6e4af15179f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x28c02ddd82eaffbd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x4, 220(sp)   # store value to put something in memory
c.lwsp x18, 220(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x5c59d6f90fa30d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9c789cea904064f6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x15, 224(sp)   # store value to put something in memory
c.lwsp x6, 224(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x85cb3f21cd44de74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xefe698cf123ad66e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x24, 228(sp)   # store value to put something in memory
c.lwsp x11, 228(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x29a239f7d17a3f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8e0f0b3f4cbf7b66 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x27, 232(sp)   # store value to put something in memory
c.lwsp x23, 232(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xea0d4f0302082fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xadd87c261bc565b9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x8, 236(sp)   # store value to put something in memory
c.lwsp x17, 236(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xae24752611f9b1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7698a7ca2c79c45b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x5, 240(sp)   # store value to put something in memory
c.lwsp x16, 240(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe106ca970e06a17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42a3c0c3c5235ba5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x6, 244(sp)   # store value to put something in memory
c.lwsp x27, 244(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x8f5d9c744b704f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7a7d4c19ae9ace60 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x10, 248(sp)   # store value to put something in memory
c.lwsp x27, 248(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x7a548db63b3fe341 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9c9eb18f6a69594a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x9, 252(sp) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi16sp.S
// ******************


    
# Testcase cp_imm_zero
li x30, 0x77fe37586db5c23b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x13, 0xa23aa3d01ff9d4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -512 # perform operation

# Testcase cp_imm_mul
li x30, 0x96e30ceeb9785436 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -496 # perform operation

# Testcase cp_imm_mul
li x31, 0x1462365b45066f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -480 # perform operation

# Testcase cp_imm_mul
li x15, 0x1cf4b41f082ccd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -464 # perform operation

# Testcase cp_imm_mul
li x23, 0xb1ad46983284f406 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -448 # perform operation

# Testcase cp_imm_mul
li x18, 0xc3290c7d3b8ed754 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -432 # perform operation

# Testcase cp_imm_mul
li x10, 0x64d1ea6094d6b13a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -416 # perform operation

# Testcase cp_imm_mul
li x4, 0x1967552a70c999b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -400 # perform operation

# Testcase cp_imm_mul
li x4, 0x13e74becef7648e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -384 # perform operation

# Testcase cp_imm_mul
li x24, 0x3159711c3759024d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -368 # perform operation

# Testcase cp_imm_mul
li x23, 0x0469c4ba1cae9230 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -352 # perform operation

# Testcase cp_imm_mul
li x24, 0xe04f52d6ffaec8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -336 # perform operation

# Testcase cp_imm_mul
li x4, 0x997940996755b39a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -320 # perform operation

# Testcase cp_imm_mul
li x18, 0xeee9275c4de13941 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -304 # perform operation

# Testcase cp_imm_mul
li x29, 0xee74d83b755552fd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -288 # perform operation

# Testcase cp_imm_mul
li x20, 0x50fe7aa29e2ec88e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -272 # perform operation

# Testcase cp_imm_mul
li x17, 0xd78de4e966f767e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -256 # perform operation

# Testcase cp_imm_mul
li x16, 0x7448070093c36938 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -240 # perform operation

# Testcase cp_imm_mul
li x30, 0xb73ce9381698fa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -224 # perform operation

# Testcase cp_imm_mul
li x11, 0xb1f1918581f0d8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -208 # perform operation

# Testcase cp_imm_mul
li x31, 0x1964ba173acf179b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -192 # perform operation

# Testcase cp_imm_mul
li x18, 0x749b4396fbe530b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -176 # perform operation

# Testcase cp_imm_mul
li x17, 0xa115eabbe46bc4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -160 # perform operation

# Testcase cp_imm_mul
li x9, 0x8cb9f8624ab51fee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -144 # perform operation

# Testcase cp_imm_mul
li x4, 0x79c3285f3fd10d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -128 # perform operation

# Testcase cp_imm_mul
li x8, 0xbf4963d14d843496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -112 # perform operation

# Testcase cp_imm_mul
li x29, 0x2b1fe898f81f24ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -96 # perform operation

# Testcase cp_imm_mul
li x26, 0xebed13db23012c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -80 # perform operation

# Testcase cp_imm_mul
li x12, 0x18bbc0baa01d3231 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -64 # perform operation

# Testcase cp_imm_mul
li x30, 0xa8611c0ea3a3f045 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -48 # perform operation

# Testcase cp_imm_mul
li x8, 0xecaf276d6cf92e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -32 # perform operation

# Testcase cp_imm_mul
li x11, 0x82d7c56bf8ec290a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -16 # perform operation

# Testcase cp_imm_mul
li x31, 0x8dac0131897d0bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x27, 0xf61c7b1ec441a677 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x23, 0xfb4d587b3245156d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 32 # perform operation

# Testcase cp_imm_mul
li x6, 0x23ecd44cca1de024 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 48 # perform operation

# Testcase cp_imm_mul
li x24, 0x535201260fff6d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 64 # perform operation

# Testcase cp_imm_mul
li x18, 0x89131b45ca961f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 80 # perform operation

# Testcase cp_imm_mul
li x1, 0xbf0e7bf546db6027 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 96 # perform operation

# Testcase cp_imm_mul
li x16, 0x57d5098bb95f3f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 112 # perform operation

# Testcase cp_imm_mul
li x8, 0x52f9292df7cd6579 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 128 # perform operation

# Testcase cp_imm_mul
li x18, 0x39bbd80a2c38a8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 144 # perform operation

# Testcase cp_imm_mul
li x4, 0xe646d5f227df36dd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 160 # perform operation

# Testcase cp_imm_mul
li x18, 0xfcc0a1999f80198a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 176 # perform operation

# Testcase cp_imm_mul
li x17, 0xaff101806c72eda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 192 # perform operation

# Testcase cp_imm_mul
li x5, 0x4865fd947cd5dd38 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 208 # perform operation

# Testcase cp_imm_mul
li x15, 0x1e1db8d92c0847ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 224 # perform operation

# Testcase cp_imm_mul
li x16, 0xf220b4b080935720 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 240 # perform operation

# Testcase cp_imm_mul
li x22, 0x62cdf4773448b7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 256 # perform operation

# Testcase cp_imm_mul
li x20, 0x098e4e615446aa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 272 # perform operation

# Testcase cp_imm_mul
li x17, 0xdab9005012271992 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 288 # perform operation

# Testcase cp_imm_mul
li x20, 0xf71de85fb4de07a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 304 # perform operation

# Testcase cp_imm_mul
li x7, 0x8dbed394cecc39da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 320 # perform operation

# Testcase cp_imm_mul
li x28, 0xefc27d47a0235343 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 336 # perform operation

# Testcase cp_imm_mul
li x6, 0xf55cc206f2bc1bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 352 # perform operation

# Testcase cp_imm_mul
li x2, 0x451776ed5c80bec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 368 # perform operation

# Testcase cp_imm_mul
li x30, 0x442cd3a3871488a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 384 # perform operation

# Testcase cp_imm_mul
li x31, 0xef00da66ae14a56a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 400 # perform operation

# Testcase cp_imm_mul
li x20, 0xd4c20eb4f9a3944e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 416 # perform operation

# Testcase cp_imm_mul
li x2, 0x65b15de7ebb99ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 432 # perform operation

# Testcase cp_imm_mul
li x31, 0x757754529f4dcb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 448 # perform operation

# Testcase cp_imm_mul
li x8, 0xa5c9cb7b3515333a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 464 # perform operation

# Testcase cp_imm_mul
li x17, 0xc06a060c465b0411 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 480 # perform operation

# Testcase cp_imm_mul
li x14, 0x6285d71f709ad791 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 496 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.srli.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-c.li.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x1b49cd764ca060e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x0, 9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x557b1aedc0f982e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 8 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x140cdd7d08e7a7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1db6b1baa1227b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 11 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb0036ca414787cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x4, 29 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x43fe43a9d3b86894 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 7 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x2b29a11fa69090e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, -32 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe1f54048f33e3b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, -30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb3b1e8a99b2f5fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -18 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x068d484832c3704c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, 28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xece544d506d4ec85 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4088234448e4658d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, 30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x178a38c809555209 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x45205ccb7eb18313 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x13, 5 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2bb2b2e190ba73af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xaa75875b4a619b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -6 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0e7443f3621265b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6e5415e202ef64f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, -24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9bd70f40a304a154 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9ced79534542351c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, -23 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x219620ac7a7ed426 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, -5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x89e006efa321ca29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, 27 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xddd5a80c693ba7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 6 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5282f131d74b8854 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -4 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa315272642de4778 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, 13 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x45a3d29578d99ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, -1 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb1e56a6a60a8fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, 30 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x8a21e1089b15d766 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x3870aab791ac4cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -12 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x59629eb2b293d43f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc3772ce93cbded24 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, 31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x15ab571c346eb87d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 9 # perform operation

# Testcase cp_imm_zero
li x31, 0x0cccaac4e7d9aa66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x2531126e42d85dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0xb3080dacfed4fd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xda17b816850569ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xd779c2aca684a893 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x3efadb75e4346673 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x0402984875cc5e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0xd6d83d1f8413926a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0x158663bf66e5cb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x71141a2dbb83a978 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x29, 0xbdb5e5596afcdc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x9, 0xe2fcd948edcbcece # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, -32 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x26, 0x635f768260144392 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x28, 0xff1a7bc2b3146801 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x12, 0x370714afb2e689e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x29, 0x92fa75648c633ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x16, 0x8afb4147b976c914 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x7, 0xa44669cc7b3045a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x29, 0x65a0ca779d747b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x7, 0xbf7f0e19fbb7dae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x18, 0x087e973e94c87e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x8, 0x2cd2a09915b320d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x6, 0x05ffdc3e7f2fe64d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0xef2e6eb5bd33f3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x30, 0xe9ce2057fe621388 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x5, 0xa69d8bcf6d9bdf12 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x1, 0x44a2b5af7fdbb83c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x10, 0x1176ca2165d27c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x9, 0x265c03b789213207 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x14, 0x911a85ba4c8b71b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x2, 0xd3fd3f1b1267afa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x14, 0x29c68825a81859f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x16, 0x0375b6beb511068f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x28, 0xbeaf4e4cbf73b8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x14, 0x526164c6e6bbedcb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x29, 0x558c5fbc59a6dd6d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x16, 0x8af84c164cbf5789 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, -1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.andi.S
// ******************


    
# Testcase cp_imm_zero
li x1, 0x99a60246ace33bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x99a60246ace33bbc
c.andi x9, 0 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 0 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 1 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 2 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 31 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, 30 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -32 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -31 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -2 # perform operation

# Testcase cp_imm_corners
li x27, 0x287d008ca91058e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x287d008ca91058e6
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001
c.andi x11, -1 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9b9774aa6c5bd75c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9b9774aa6c5bd75c
c.andi x8, -8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6929874eb8305dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6929874eb8305dfc
c.andi x9, 24 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x545636fc981bef3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x545636fc981bef3b
c.andi x10, -20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x32683fba34853bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x32683fba34853bbc
c.andi x11, -32 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x065919d8bf343fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x065919d8bf343fc5
c.andi x12, 26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x1c6feb4edb963d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1c6feb4edb963d49
c.andi x13, -20 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcc1f5b041b460149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcc1f5b041b460149
c.andi x14, 15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9630faba7223aeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9630faba7223aeaf
c.andi x15, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000
c.andi x11, 29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001
c.andi x12, -4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002
c.andi x8, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000
c.andi x8, -15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001
c.andi x14, -5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff
c.andi x14, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe
c.andi x13, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff
c.andi x9, -7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe
c.andi x12, -8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x21, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7
c.andi x13, -32 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa
c.andi x14, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555
c.andi x12, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff
c.andi x14, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe
c.andi x13, -2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000
c.andi x11, -2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001
c.andi x13, -9 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.j.S
// ******************


    
# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.j 1b # backward branch
3: nop # done with sequence

# Testcase cp_imm_ones_zeros 2
c.j 1f # jump to aligned address to stress immediate
.align 2
1:

# Testcase cp_imm_ones_zeros 3
c.j 1f # jump to aligned address to stress immediate
.align 3
1:

# Testcase cp_imm_ones_zeros 4
c.j 1f # jump to aligned address to stress immediate
.align 4
1:

# Testcase cp_imm_ones_zeros 5
c.j 1f # jump to aligned address to stress immediate
.align 5
1:

# Testcase cp_imm_ones_zeros 6
c.j 1f # jump to aligned address to stress immediate
.align 6
1:

# Testcase cp_imm_ones_zeros 7
c.j 1f # jump to aligned address to stress immediate
.align 7
1:

# Testcase cp_imm_ones_zeros 8
c.j 1f # jump to aligned address to stress immediate
.align 8
1:

# Testcase cp_imm_ones_zeros 9
c.j 1f # jump to aligned address to stress immediate
.align 9
1:

# Testcase cp_imm_ones_zeros 10
c.j 1f # jump to aligned address to stress immediate
.align 10
1:

# Testcase cp_imm_ones_zeros 11
c.j 1f # jump to aligned address to stress immediate
.align 11
1:

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
