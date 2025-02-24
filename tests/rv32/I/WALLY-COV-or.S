///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-or.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.971147
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfcaf2fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9016ed93 # initialize rs1
li x19, 0x4481aa3f # initialize rs2
or x0, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x9d0e17ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x88ac5b95 # initialize rs1
li x17, 0xf3975ae1 # initialize rs2
or x1, x10, x17 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x7d34faa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7cbb29e8 # initialize rs1
li x1, 0x3fdeb6b2 # initialize rs2
or x2, x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa0ba0a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3706395e # initialize rs1
li x31, 0x3d70fa32 # initialize rs2
or x3, x9, x31 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x0b07f951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcf1acd43 # initialize rs1
li x26, 0xa614afea # initialize rs2
or x4, x4, x26 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x2a841638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb2f777 # initialize rs1
li x2, 0xd2a8c648 # initialize rs2
or x5, x4, x2 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6711c047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x36b1368f # initialize rs1
li x9, 0xc47220ff # initialize rs2
or x6, x5, x9 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb5bde9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x75c420c1 # initialize rs1
li x30, 0xdd3363ce # initialize rs2
or x7, x2, x30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2d1b797d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x72ac2a13 # initialize rs1
li x28, 0x7c8f604e # initialize rs2
or x8, x12, x28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2021089e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x15011f82 # initialize rs1
li x8, 0x8704fe65 # initialize rs2
or x9, x30, x8 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xafec7685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa7b0d7f9 # initialize rs1
li x4, 0xf2d09eda # initialize rs2
or x10, x10, x4 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x18bbe85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x81a745a9 # initialize rs1
li x1, 0xd4a34c49 # initialize rs2
or x11, x10, x1 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x692c925c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcedd0664 # initialize rs1
li x27, 0x8bff0cef # initialize rs2
or x12, x31, x27 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0b3fd4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe3ea5a42 # initialize rs1
li x12, 0xf13311e2 # initialize rs2
or x13, x27, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0f4641ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6913a371 # initialize rs1
li x31, 0x4a289f86 # initialize rs2
or x14, x20, x31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa5281d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xadcdc61a # initialize rs1
li x19, 0x0d24727d # initialize rs2
or x15, x4, x19 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x063ecd0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa86c53df # initialize rs1
li x11, 0x738ebd5f # initialize rs2
or x16, x1, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x92aca7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x949f05b0 # initialize rs1
li x4, 0x380f412f # initialize rs2
or x17, x18, x4 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x20ec2d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x86687c50 # initialize rs1
li x30, 0xf2441dfb # initialize rs2
or x18, x14, x30 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x80377639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7eb4d654 # initialize rs1
li x5, 0x5f8f8bfe # initialize rs2
or x19, x31, x5 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x838628d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2a79775a # initialize rs1
li x15, 0x6b8dced7 # initialize rs2
or x20, x28, x15 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa56da645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xafb7a343 # initialize rs1
li x11, 0x06a1ad89 # initialize rs2
or x21, x26, x11 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf2d67c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6173d10a # initialize rs1
li x26, 0xd5e5a33c # initialize rs2
or x22, x27, x26 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x15b9f9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc82b6f6a # initialize rs1
li x19, 0xfd2cf80c # initialize rs2
or x23, x15, x19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc8437fda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6f93ad75 # initialize rs1
li x3, 0x5cbc40e2 # initialize rs2
or x24, x11, x3 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x406c597d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3e8c6a89 # initialize rs1
li x7, 0x788a8f8c # initialize rs2
or x25, x6, x7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa38e34c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8f9569ff # initialize rs1
li x5, 0xf97363b1 # initialize rs2
or x26, x4, x5 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x2c2b3287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfaf9ac36 # initialize rs1
li x2, 0xf96aa17b # initialize rs2
or x27, x19, x2 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x55c3ba86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2c2906d9 # initialize rs1
li x20, 0xeaf61922 # initialize rs2
or x28, x4, x20 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x05d3915c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd8931576 # initialize rs1
li x15, 0x789e753c # initialize rs2
or x29, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbc9d603b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbf15c0dd # initialize rs1
li x3, 0xdc50f260 # initialize rs2
or x30, x5, x3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd8e45f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9ae8d223 # initialize rs1
li x18, 0x5a2a6bdf # initialize rs2
or x31, x28, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x3, 0x209d7ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x764d6ee8 # initialize rs1
li x31, 0xf78f553a # initialize rs2
or x3, x0, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x30, 0xc06791be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83702a0a # initialize rs1
li x2, 0x481a0dd6 # initialize rs2
or x30, x1, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0x66be3d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xac9d6717 # initialize rs1
li x29, 0x9236b449 # initialize rs2
or x20, x2, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x17, 0xf719b259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x63dc3d19 # initialize rs1
li x5, 0x9f0479ed # initialize rs2
or x17, x3, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0xc4358511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x002e32b5 # initialize rs1
li x16, 0x858b3322 # initialize rs2
or x6, x4, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0xf2b57fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa4f21c51 # initialize rs1
li x16, 0x41035a30 # initialize rs2
or x8, x5, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0x225dae3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x24cb35c8 # initialize rs1
li x17, 0xa60eb42f # initialize rs2
or x5, x6, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0xebcb1830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9b0df8de # initialize rs1
li x27, 0xd2160380 # initialize rs2
or x21, x7, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x3d25d289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd022d75b # initialize rs1
li x9, 0x25e5ea75 # initialize rs2
or x12, x8, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xd628c494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2791eea1 # initialize rs1
li x10, 0x9e5e6483 # initialize rs2
or x20, x9, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0x26b9b2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x16540a90 # initialize rs1
li x7, 0xf520ef85 # initialize rs2
or x6, x10, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x694bb5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xecbc6e75 # initialize rs1
li x13, 0x979a320d # initialize rs2
or x17, x11, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x0f74308e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x036936b3 # initialize rs1
li x30, 0xfc157575 # initialize rs2
or x21, x12, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0xf5225187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x33e42afb # initialize rs1
li x8, 0x6546c50e # initialize rs2
or x18, x13, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x5e25c970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfae79035 # initialize rs1
li x22, 0xf0fcfd8e # initialize rs2
or x9, x14, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x187ef7c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x89936ffa # initialize rs1
li x28, 0x5d54761b # initialize rs2
or x10, x15, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0xfccd5178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9c7e3e0d # initialize rs1
li x29, 0x347acf0a # initialize rs2
or x27, x16, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0x0705f5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1b023403 # initialize rs1
li x23, 0xd74465f6 # initialize rs2
or x24, x17, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0xfd5ee6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1f90c9b2 # initialize rs1
li x10, 0x6b2a91ab # initialize rs2
or x25, x18, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x2605e3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x79fe203f # initialize rs1
li x23, 0x8767496d # initialize rs2
or x3, x19, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0xb8a84f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x49845d3f # initialize rs1
li x6, 0x597993f3 # initialize rs2
or x21, x20, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0xc7fe49dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xec7db700 # initialize rs1
li x15, 0x4900dc0a # initialize rs2
or x14, x21, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0x22e70c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8dac456d # initialize rs1
li x30, 0xb67cfe78 # initialize rs2
or x6, x22, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x18, 0xde87f0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6ded9bad # initialize rs1
li x6, 0xd8080ec8 # initialize rs2
or x18, x23, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x4, 0x56a86429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x43e95842 # initialize rs1
li x27, 0x74c5394a # initialize rs2
or x4, x24, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0xd95ebfc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x81f498f0 # initialize rs1
li x2, 0x3941a4a9 # initialize rs2
or x15, x25, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0xd530404b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8949ee21 # initialize rs1
li x28, 0x68ff2f1b # initialize rs2
or x9, x26, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0xe5d8c275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe07b1971 # initialize rs1
li x4, 0x95afa26b # initialize rs2
or x5, x27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0x31a67923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa8c6d302 # initialize rs1
li x2, 0xbb42d296 # initialize rs2
or x15, x28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0xf467a510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x37a3bb8f # initialize rs1
li x13, 0xedf9385d # initialize rs2
or x15, x29, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0xf187036c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x534c2411 # initialize rs1
li x11, 0x1fca5412 # initialize rs2
or x28, x30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x15, 0xbb554f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x231c9b0e # initialize rs1
li x22, 0x9d7049b5 # initialize rs2
or x15, x31, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0xa7380431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4e2cac80 # initialize rs1
li x0, 0x0d2353db # initialize rs2
or x30, x19, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xbc3ae869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x43e0a473 # initialize rs1
li x1, 0x06df6713 # initialize rs2
or x6, x5, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xbb03a70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x231d1a45 # initialize rs1
li x2, 0xfdf9b818 # initialize rs2
or x16, x6, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x9d1d24fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0d4466e7 # initialize rs1
li x3, 0x7c3b71e6 # initialize rs2
or x30, x24, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x22, 0xdce686a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc0a9bae5 # initialize rs1
li x4, 0xbeda81b8 # initialize rs2
or x22, x3, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0xa8ad513e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8757aed1 # initialize rs1
li x5, 0x0fbeff28 # initialize rs2
or x21, x11, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0xe6d4c033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1f93bab1 # initialize rs1
li x6, 0x3fea8694 # initialize rs2
or x2, x27, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x29, 0x0574ccad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x302caf09 # initialize rs1
li x7, 0xa400d07a # initialize rs2
or x29, x16, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x4, 0x30362a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5e19e7b0 # initialize rs1
li x8, 0x4510e272 # initialize rs2
or x4, x20, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x1278cb3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd24dc5df # initialize rs1
li x9, 0x9b9c7b5c # initialize rs2
or x13, x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x5bf14d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf5e6ad93 # initialize rs1
li x10, 0x87e89951 # initialize rs2
or x24, x29, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0xc9ef0163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf3f2f9ee # initialize rs1
li x11, 0x576529fe # initialize rs2
or x27, x21, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x02518d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1ca2ada5 # initialize rs1
li x12, 0x7712d889 # initialize rs2
or x22, x27, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0x67e79d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7c1ec20e # initialize rs1
li x13, 0x2de8fb73 # initialize rs2
or x16, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x20, 0x16b95077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb154632d # initialize rs1
li x14, 0x9e6c24c5 # initialize rs2
or x20, x27, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0x65bc228c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1c23b453 # initialize rs1
li x15, 0xf6fa082f # initialize rs2
or x26, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0x9e946246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4ddb3172 # initialize rs1
li x16, 0x82f59cc8 # initialize rs2
or x5, x11, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x3, 0x2b065cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe4b83bb7 # initialize rs1
li x17, 0x226bff22 # initialize rs2
or x3, x30, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0x3174b905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcacf0218 # initialize rs1
li x18, 0x3b1ed0a9 # initialize rs2
or x21, x24, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x565b0430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x52faa02b # initialize rs1
li x19, 0x98d8c4ec # initialize rs2
or x8, x6, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0xf223286d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5167b05a # initialize rs1
li x20, 0xd36f3441 # initialize rs2
or x14, x10, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x3, 0x5d7fd035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xac1d458d # initialize rs1
li x21, 0x3f72077e # initialize rs2
or x3, x11, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x6f118b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7458c379 # initialize rs1
li x22, 0x785734c8 # initialize rs2
or x3, x4, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x3036a62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4f9864de # initialize rs1
li x23, 0x2cc85b45 # initialize rs2
or x17, x4, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x2adbd52e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x08610fd1 # initialize rs1
li x24, 0x5ec71fd0 # initialize rs2
or x18, x31, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xf5916c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7a784323 # initialize rs1
li x25, 0xcca8a3cd # initialize rs2
or x24, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x29, 0xb26ae457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3d4008fe # initialize rs1
li x26, 0xd4c3eec1 # initialize rs2
or x29, x19, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x158c8ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0a744089 # initialize rs1
li x27, 0x4a6d34ab # initialize rs2
or x1, x16, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x8, 0x5887a66d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe35bc285 # initialize rs1
li x28, 0xffbc7ad9 # initialize rs2
or x8, x12, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x2, 0x626b921c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3260a346 # initialize rs1
li x29, 0x55adeedb # initialize rs2
or x2, x18, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x47f910be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe129a97f # initialize rs1
li x30, 0x5a3f0afc # initialize rs2
or x26, x17, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0x2cd1bd2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6a7d9089 # initialize rs1
li x31, 0x8a5fdb19 # initialize rs2
or x8, x4, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xf7716702)
li x4, 0x849ff130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x849ff130 # initialize rs1
li x0, 0x3f09ce51 # initialize rs2
or x4, x10, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x121d8858)
li x14, 0x121d8858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x121d8858 # initialize rs1
li x24, 0x121d8858 # initialize rs2
or x14, x0, x24 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe414411a)
li x9, 0xfce426a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe414411a # initialize rs1
li x2, 0xe414411a # initialize rs2
or x9, x26, x2 # perform operation

# Testcase cmp_gpr_hazard raw test
or x26, x30, x4 # perform first operation
or x2, x26, x17 # perform second operation

# Testcase cmp_gpr_hazard raw test
or x7, x26, x15 # perform first operation
or x23, x12, x7 # perform second operation

# Testcase cmp_gpr_hazard waw test
or x19, x1, x26 # perform first operation
or x19, x11, x21 # perform second operation

# Testcase cmp_gpr_hazard waw test
or x25, x18, x7 # perform first operation
or x25, x31, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
or x16, x14, x26 # perform first operation
or x14, x7, x28 # perform second operation

# Testcase cmp_gpr_hazard war test
or x6, x2, x18 # perform first operation
or x18, x15, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x38a1721f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x0, 0xa4903afc # initialize rs2
or x27, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0xba87f3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
or x15, x2, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0x1a531d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
or x2, x1, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x9dc068a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x0, 0xf1d0d069 # initialize rs2
or x6, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0xb3c1d8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
or x26, x31, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0xd87d118c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
or x25, x29, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0xacf394f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x0, 0xaab6f37d # initialize rs2
or x28, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x0146c85c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
or x28, x27, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xf5d4ed58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
or x3, x20, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0x4ae0188c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x0, 0xb1752c14 # initialize rs2
or x21, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x23, 0x4aff6b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
or x23, x2, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x23, 0xc985d7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
or x23, x17, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0xc292634c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x0, 0x6426e2d7 # initialize rs2
or x25, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x12, 0x260f7db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
or x12, x23, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0x1b98044d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x27, 0x80000001 # initialize rs2
or x28, x16, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x63ded90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x0, 0x13f760da # initialize rs2
or x8, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x20, 0x57d675f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
or x20, x28, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0xea742203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x4, 0x7fffffff # initialize rs2
or x14, x8, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x27, 0x0578210c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x0, 0x4676335f # initialize rs2
or x27, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0xc1ce4f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
or x30, x18, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0xb8ff0b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
or x13, x14, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0x72fa2673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x0, 0x93b2743f # initialize rs2
or x16, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0x2a7977ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
or x12, x17, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x25879f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
or x29, x8, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0xad2b9182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x0, 0xb4c1de1e # initialize rs2
or x28, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x5c2db407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
or x30, x14, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x16, 0xb5baee9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x22, 0xfffffffe # initialize rs2
or x16, x24, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x6203082c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x0, 0xa6c13713 # initialize rs2
or x13, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x27, 0x016e6e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
or x27, x11, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x20, 0x945b0b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
or x20, x9, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x11, 0xc30c42d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x0, 0x6646984a # initialize rs2
or x11, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x23, 0x3c711bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
or x23, x14, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x1, 0x35612471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
or x1, x14, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xda292e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x0, 0x4b4f379f # initialize rs2
or x5, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0x16ea524d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
or x13, x20, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0xa084f065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x24, 0x55555555 # initialize rs2
or x17, x7, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x63993313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x29, 0xf98c2402 # initialize rs2
or x17, x5, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xdc0511e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x30, 0xc4364b91 # initialize rs2
or x6, x14, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0xd4e3d605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x26, 0xfe68d1dd # initialize rs2
or x9, x29, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0x061f72e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x1, 0xf9104abc # initialize rs2
or x8, x22, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x3, 0x76e54462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x1, 0xf2cbb3b2 # initialize rs2
or x3, x2, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x1e5a246d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x31, 0xdcb5e439 # initialize rs2
or x8, x10, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x580ee4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x13, 0xed44b5e9 # initialize rs2
or x7, x6, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x46e02eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x3, 0x52961b5f # initialize rs2
or x28, x2, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x62b8f6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x3, 0x69a50fe1 # initialize rs2
or x6, x5, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x11, 0x0cb1f306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x24, 0x4c8f4539 # initialize rs2
or x11, x14, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0x4d7891b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0x63af0392 # initialize rs2
or x24, x12, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x3e3d1b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x31, 0x35f4bb91 # initialize rs2
or x7, x1, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xfe81000f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0b5eeeb2 # initialize rs1
li x1, 0x00000000 # initialize rs2
or x8, x23, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x83d61266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xce52af25 # initialize rs1
li x3, 0x00000001 # initialize rs2
or x14, x22, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x19, 0xcc7cfbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4bd73a38 # initialize rs1
li x11, 0x00000002 # initialize rs2
or x19, x18, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x22, 0xe12ad0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3135dbcc # initialize rs1
li x3, 0x80000000 # initialize rs2
or x22, x11, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x3aa3c790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xee6e04ec # initialize rs1
li x11, 0x80000001 # initialize rs2
or x15, x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0xa75b096b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x50517e6c # initialize rs1
li x9, 0x7fffffff # initialize rs2
or x22, x19, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x7, 0x2aa73e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xac08e7b3 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
or x7, x3, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0x9de3aed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc06d125b # initialize rs1
li x28, 0xffffffff # initialize rs2
or x20, x8, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x62625e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbb29f559 # initialize rs1
li x3, 0xfffffffe # initialize rs2
or x11, x26, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x3, 0x4b2e30dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc3b2ab50 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
or x3, x23, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0x9faa234e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x884aac86 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
or x27, x7, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x55d10c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7416838d # initialize rs1
li x31, 0x55555555 # initialize rs2
or x16, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x995e24ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
or x2, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0xcc38d9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
or x18, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0xb6e6cce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
or x21, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x20, 0xd445ad5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
or x20, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x20, 0x8034f4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
or x20, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0xe38d03e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
or x25, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x13, 0x5d4b6ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
or x13, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x6, 0xbe3a6bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
or x6, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x62da7271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
or x25, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x11, 0xdd4e00b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
or x11, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x29, 0x53767841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
or x29, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0xdb931803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
or x11, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x6b751bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
or x8, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x3cb3ced8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
or x15, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x5ae4ba4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
or x9, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x38ceace0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x17, 0x80000000 # initialize rs2
or x31, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x25, 0x11444695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
or x25, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x356b44b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
or x24, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x21, 0xec4c5ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
or x21, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x7f3fb865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
or x21, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x18e88119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x2, 0xfffffffe # initialize rs2
or x27, x19, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x6, 0xd5cbf3dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
or x6, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x17, 0x33d18514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
or x17, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x1, 0xceadb729 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
or x1, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x25, 0x12c0b00b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x15, 0x00000000 # initialize rs2
or x25, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0xdaf1b395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
or x30, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x758c97ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
or x13, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x26, 0x1e0915f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x14, 0x80000000 # initialize rs2
or x26, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x9, 0x43797115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x2, 0x80000001 # initialize rs2
or x9, x19, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0xa3295481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x30, 0x7fffffff # initialize rs2
or x17, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x24, 0x2e7a157b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
or x24, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0xcea40789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x23, 0xffffffff # initialize rs2
or x6, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0xaaed2c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
or x23, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x8, 0x0d502f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
or x8, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x21, 0x8f5dae02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
or x21, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x13, 0x5a5d06d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x26, 0x55555555 # initialize rs2
or x13, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x4, 0x21b7fe26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
or x4, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x7fdc8949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
or x24, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x11, 0xb0e6515c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x23, 0x00000002 # initialize rs2
or x11, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x2, 0xb976d425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
or x2, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x24, 0xe8bde8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
or x24, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x10, 0xc7986b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x9, 0x7fffffff # initialize rs2
or x10, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x6, 0x34e59cce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
or x6, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x14, 0xe75e4adc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
or x14, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x9, 0x5eaa5e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
or x9, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x12, 0xb146b9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
or x12, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x29, 0xbc0d126b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
or x29, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x27, 0xac548b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x4, 0x55555555 # initialize rs2
or x27, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x4, 0xddc300a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
or x4, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x4, 0x0709fd24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
or x4, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x17, 0xc4d82891 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
or x17, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x13, 0x12f92b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
or x13, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x26, 0xcb1da880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
or x26, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0xbf97effa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
or x17, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x17, 0xf3536b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
or x17, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x16, 0xefc1537b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x25, 0xffffffff # initialize rs2
or x16, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x23cdcb6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
or x29, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x21, 0xc36c332b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
or x21, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0xd8073616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
or x25, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x16, 0x7b96f048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
or x16, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x27, 0x939cf66c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
or x27, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x20, 0xcd95b889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
or x20, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x31, 0x793135ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
or x31, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x30, 0x8fafabad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
or x30, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x19, 0x7d20940c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
or x19, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0xaf4872aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
or x30, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x31, 0x1d20ee1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
or x31, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x3, 0xa37f1103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
or x3, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x3, 0x8b1d3560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
or x3, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x7, 0x0f9399d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
or x7, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x93004f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
or x27, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x3671b3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
or x20, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0xfbb7fbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
or x17, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x4, 0x6ce9592b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x16, 0x00000001 # initialize rs2
or x4, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x1e16537b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
or x21, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0x6b49f9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
or x6, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x27, 0xa1a4d62c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
or x27, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x14, 0xce06866d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
or x14, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x6, 0x19a91dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
or x6, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x84942216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
or x13, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x4, 0x48c28092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x9, 0xfffffffe # initialize rs2
or x4, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x3, 0x314f7572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
or x3, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x2, 0x18c48852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
or x2, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x29c66b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
or x17, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xd9ea9c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
or x23, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x13, 0x3e4a17bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x8, 0x00000001 # initialize rs2
or x13, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x11a7a419 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x2, 0x00000002 # initialize rs2
or x9, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x4, 0x837afa01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x24, 0x80000000 # initialize rs2
or x4, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x3, 0x6a8e6051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
or x3, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x16, 0x683ade88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
or x16, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x8, 0xf2ea55da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
or x8, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0x76784d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
or x14, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x40a620a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
or x11, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x11, 0x4ee1027a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
or x11, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x28, 0xae6823b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
or x28, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xb1976229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
or x17, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0x7d835ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
or x23, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0x153f8370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
or x11, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x26, 0xb2c0255e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
or x26, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xe0733875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x4, 0x80000000 # initialize rs2
or x22, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0x767ce61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
li x31, 0x80000001 # initialize rs2
or x25, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x17, 0x774b4468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
or x17, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x27, 0x587d6a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
or x27, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0x06701e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
or x12, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0xb9c7d9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
or x25, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x28, 0xc0b822b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
or x28, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x10, 0x8c9573f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
or x10, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x25, 0x67e1272c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
or x25, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x31, 0xa0ae34b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x4, 0x00000000 # initialize rs2
or x31, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x18, 0x73973815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x10, 0x00000001 # initialize rs2
or x18, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x25, 0x0118c056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x28, 0x00000002 # initialize rs2
or x25, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x9, 0x62a9b04f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x20, 0x80000000 # initialize rs2
or x9, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x28, 0x7cb33321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x21, 0x80000001 # initialize rs2
or x28, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x18, 0x3efb9d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x23, 0x7fffffff # initialize rs2
or x18, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x2, 0x9190a321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
or x2, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x18, 0xb9da9082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x26, 0xffffffff # initialize rs2
or x18, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x6, 0xdf6f0512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x31, 0xfffffffe # initialize rs2
or x6, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x30, 0xf55bfd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
or x30, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x9, 0xa7637fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
or x9, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x26, 0x27a1d009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x28, 0x55555555 # initialize rs2
or x26, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xb3734d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x28, 0x00000000 # initialize rs2
or x16, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x9, 0x3a370363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x3, 0x00000001 # initialize rs2
or x9, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x8, 0x7993721a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x22, 0x00000002 # initialize rs2
or x8, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x16, 0x744fe14b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x19, 0x80000000 # initialize rs2
or x16, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0xce89f439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
or x22, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xe12a666d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x3, 0x7fffffff # initialize rs2
or x13, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x11, 0xbee2e7a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
or x11, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x26, 0xb2e0d9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
or x26, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x2, 0x23aeae5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x4, 0xfffffffe # initialize rs2
or x2, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x20, 0x14bc8959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
or x20, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x21, 0x2374d3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
or x21, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x9, 0xa82f994e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x15, 0x55555555 # initialize rs2
or x9, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x29, 0x571e75b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
or x29, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x20822bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x9, 0x00000001 # initialize rs2
or x20, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x30, 0x807a4966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x10, 0x00000002 # initialize rs2
or x30, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0xa33a8e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
or x6, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x4, 0xba7ba2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x28, 0x80000001 # initialize rs2
or x4, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x19, 0x33811f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x30, 0x7fffffff # initialize rs2
or x19, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x2, 0xc042d3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
or x2, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x25, 0x90c4c7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x18, 0xffffffff # initialize rs2
or x25, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0xc2e37ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x18, 0xfffffffe # initialize rs2
or x31, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x19, 0x81cabde7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
or x19, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0x97d915a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
or x28, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x20, 0xe406ea26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
or x20, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9016ca72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x92300699 # initialize rs1
li x23, 0xa458c297 # initialize rs2
or x0, x0, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9d7a1b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc85381ae # initialize rs1
li x30, 0x7669bcad # initialize rs2
or x1, x1, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xac4aa6db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd7f467e7 # initialize rs1
li x8, 0xe863f51a # initialize rs2
or x2, x2, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x186ae824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x381a755b # initialize rs1
li x21, 0xe08948a5 # initialize rs2
or x3, x3, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x36e6d7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6bd8b481 # initialize rs1
li x2, 0x527580f5 # initialize rs2
or x4, x4, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xdc0f9724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7f53e2d4 # initialize rs1
li x14, 0x7cb6eba8 # initialize rs2
or x5, x5, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x685ceb20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4bb9872b # initialize rs1
li x7, 0x2df5913c # initialize rs2
or x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1afdea72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x208adc8f # initialize rs1
li x21, 0x20248c45 # initialize rs2
or x7, x7, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa14706d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcd984658 # initialize rs1
li x12, 0xd2fa7148 # initialize rs2
or x8, x8, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x16b2befe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7cf7145d # initialize rs1
li x21, 0x8c41512e # initialize rs2
or x9, x9, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc3a32805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2871cea8 # initialize rs1
li x26, 0xbe75c3f4 # initialize rs2
or x10, x10, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x695e9472 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f1fc20a # initialize rs1
li x11, 0xe1e9e017 # initialize rs2
or x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7b629608 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb21912c3 # initialize rs1
li x2, 0x939b8c37 # initialize rs2
or x12, x12, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x08960c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfa1b060c # initialize rs1
li x28, 0x9740ae8a # initialize rs2
or x13, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaa96833e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x10b36219 # initialize rs1
li x6, 0xf827a6e2 # initialize rs2
or x14, x14, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc701a6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbef5d6f8 # initialize rs1
li x21, 0x70c52953 # initialize rs2
or x15, x15, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd8513de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6b7cc319 # initialize rs1
li x2, 0x4023ae8c # initialize rs2
or x16, x16, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x40559779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa246def0 # initialize rs1
li x23, 0xe5ca522b # initialize rs2
or x17, x17, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc76c789d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8f1a92ba # initialize rs1
li x16, 0x329694d6 # initialize rs2
or x18, x18, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc3c36734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x07287f52 # initialize rs1
li x29, 0x46a43291 # initialize rs2
or x19, x19, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfd846bd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcf33adc0 # initialize rs1
li x27, 0x344e307b # initialize rs2
or x20, x20, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x537d164e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0b258052 # initialize rs1
li x2, 0x452eb064 # initialize rs2
or x21, x21, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x688996ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x41623fed # initialize rs1
li x14, 0xb2f43f2a # initialize rs2
or x22, x22, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x68c36f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x91cc1d09 # initialize rs1
li x5, 0xb571d8f8 # initialize rs2
or x23, x23, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3fb699d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9a6cc2ed # initialize rs1
li x16, 0x049f46b7 # initialize rs2
or x24, x24, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xafb84e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x879d6eb8 # initialize rs1
li x17, 0x9bd142f3 # initialize rs2
or x25, x25, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7dcdda62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1c77d6fd # initialize rs1
li x5, 0x17ef73c2 # initialize rs2
or x26, x26, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe0f201ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4ab8c769 # initialize rs1
li x4, 0xb03054d4 # initialize rs2
or x27, x27, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbb9dca25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfd6587c4 # initialize rs1
li x16, 0xd8c745fc # initialize rs2
or x28, x28, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6af8ca3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x71edf75f # initialize rs1
li x27, 0x6256bac1 # initialize rs2
or x29, x29, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf73c660f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2c9df7d3 # initialize rs1
li x23, 0x570a533d # initialize rs2
or x30, x30, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf36cb5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa26d3e57 # initialize rs1
li x15, 0x45e9af6f # initialize rs2
or x31, x31, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xb2d50866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2451af80 # initialize rs1
li x0, 0xcd92bbb3 # initialize rs2
or x0, x26, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xd53d3be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x87de3391 # initialize rs1
li x1, 0x06568a15 # initialize rs2
or x1, x7, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x4aca3698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x86d1ed1f # initialize rs1
li x2, 0x3d5b68a9 # initialize rs2
or x2, x9, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xe26692ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbfa00728 # initialize rs1
li x3, 0x5a54d92d # initialize rs2
or x3, x25, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xbd3eb4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x21fa57ea # initialize rs1
li x4, 0xf7067cba # initialize rs2
or x4, x21, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x6b2ba3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x15c778d7 # initialize rs1
li x5, 0x0a05bfb6 # initialize rs2
or x5, x21, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xb30107b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x99d314f7 # initialize rs1
li x6, 0x265a486e # initialize rs2
or x6, x20, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x0dd23b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xca14a59a # initialize rs1
li x7, 0x57539f2e # initialize rs2
or x7, x16, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xf7eaf7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0e0946e1 # initialize rs1
li x8, 0xce73b34d # initialize rs2
or x8, x5, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x1c6c3b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x10a06309 # initialize rs1
li x9, 0x1a67c8f9 # initialize rs2
or x9, x24, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xb6b7e0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5dc0a674 # initialize rs1
li x10, 0x3bda8f30 # initialize rs2
or x10, x1, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x2b5d3386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd1ee754e # initialize rs1
li x11, 0x6d9a0d2d # initialize rs2
or x11, x24, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x28f4528d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd4b64d3a # initialize rs1
li x12, 0x27ef5981 # initialize rs2
or x12, x8, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xc07afa06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1a6f89d4 # initialize rs1
li x13, 0x39a2d1cc # initialize rs2
or x13, x24, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x646ca783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa14f663b # initialize rs1
li x14, 0xb68d701b # initialize rs2
or x14, x2, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x128d2d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2bbae76a # initialize rs1
li x15, 0xd301290a # initialize rs2
or x15, x29, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xab240209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x933861c0 # initialize rs1
li x16, 0xebeccf7e # initialize rs2
or x16, x19, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x519a6ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x84248528 # initialize rs1
li x17, 0xd73b96a2 # initialize rs2
or x17, x18, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd48168e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x521cbec0 # initialize rs1
li x18, 0x55293b84 # initialize rs2
or x18, x11, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x9dc8105b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9e50853f # initialize rs1
li x19, 0xe4c19186 # initialize rs2
or x19, x6, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xc5ae0e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6a89e4f5 # initialize rs1
li x20, 0x1e370bd3 # initialize rs2
or x20, x16, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xedd242e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9166cb84 # initialize rs1
li x21, 0xaa68c91e # initialize rs2
or x21, x20, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xdff9216e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x17779e1f # initialize rs1
li x22, 0x3acefc62 # initialize rs2
or x22, x6, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x0565efa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1cba693e # initialize rs1
li x23, 0xdd841b06 # initialize rs2
or x23, x9, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x5fd3bba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb6676d7e # initialize rs1
li x24, 0x6f7daaba # initialize rs2
or x24, x28, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x580986f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x14ad6bba # initialize rs1
li x25, 0x481d97a5 # initialize rs2
or x25, x19, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xa8874ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7663cd18 # initialize rs1
li x26, 0xb2bca835 # initialize rs2
or x26, x11, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xbc13ddf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0ba82d81 # initialize rs1
li x27, 0xd31e1353 # initialize rs2
or x27, x4, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x39faa4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x06cd651f # initialize rs1
li x28, 0xc121f31a # initialize rs2
or x28, x2, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xda3ad3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9bcbe115 # initialize rs1
li x29, 0x45c8559c # initialize rs2
or x29, x8, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x8145900e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xef9e69f8 # initialize rs1
li x30, 0x372ab90e # initialize rs2
or x30, x20, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x8aa1fc65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x31ba711b # initialize rs1
li x31, 0x62dda5b9 # initialize rs2
or x31, x18, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6b7edd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb680466c # initialize rs1
li x0, 0x0b8a3d6e # initialize rs2
or x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x57baee17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x48821b1b # initialize rs1
li x1, 0x991c4b75 # initialize rs2
or x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x18f7164f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5b5418b5 # initialize rs1
li x2, 0x8fe583d7 # initialize rs2
or x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1b767c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0bc25fd9 # initialize rs1
li x3, 0x378c37ee # initialize rs2
or x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x0e861c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x036b3ac1 # initialize rs1
li x4, 0x40082c41 # initialize rs2
or x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xeca3aff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3c6eb964 # initialize rs1
li x5, 0x3fabc9de # initialize rs2
or x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xa2ced068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91d8d25a # initialize rs1
li x6, 0x37fd107d # initialize rs2
or x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x31495637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x41788f0e # initialize rs1
li x7, 0xa0b560da # initialize rs2
or x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x081e0239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x623a8567 # initialize rs1
li x8, 0x6e399dd1 # initialize rs2
or x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd636639c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb59d7634 # initialize rs1
li x9, 0xb43ffecd # initialize rs2
or x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf8ad938f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1be893d2 # initialize rs1
li x10, 0xf970cd72 # initialize rs2
or x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x761f9f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf82e0d2a # initialize rs1
li x11, 0x15bc6d65 # initialize rs2
or x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x03e720c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x62383822 # initialize rs1
li x12, 0xccaa34ef # initialize rs2
or x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7a1482dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x671c341a # initialize rs1
li x13, 0xcabf38c1 # initialize rs2
or x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x3cca45c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x30162694 # initialize rs1
li x14, 0x5c7b394a # initialize rs2
or x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1409d8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef523d1a # initialize rs1
li x15, 0xd08847a8 # initialize rs2
or x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd5b8e74e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb6c12abf # initialize rs1
li x16, 0xe5490fea # initialize rs2
or x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8bc2c48c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5989e726 # initialize rs1
li x17, 0xa018e667 # initialize rs2
or x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd5b64fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf89f293f # initialize rs1
li x18, 0x27edd396 # initialize rs2
or x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x67325d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcb6ae555 # initialize rs1
li x19, 0x7592f922 # initialize rs2
or x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5c41dd80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2003d68e # initialize rs1
li x20, 0xabcdf5ad # initialize rs2
or x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5d41602a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcb4ecd35 # initialize rs1
li x21, 0x350b6f3b # initialize rs2
or x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x279839cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6862a0bf # initialize rs1
li x22, 0xdcee95f5 # initialize rs2
or x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb8d0b7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8c569ac2 # initialize rs1
li x23, 0x6c6146bd # initialize rs2
or x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x245a12be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc2270057 # initialize rs1
li x24, 0x6d9e64f8 # initialize rs2
or x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6d1f0ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4c230f05 # initialize rs1
li x25, 0xd5f2b578 # initialize rs2
or x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7634069f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2b30fd5a # initialize rs1
li x26, 0xd6ef1f88 # initialize rs2
or x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x0343c103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8478e0fc # initialize rs1
li x27, 0xad639910 # initialize rs2
or x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x837519bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xeb607aa5 # initialize rs1
li x28, 0x4f17f980 # initialize rs2
or x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3500748b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x20c8b7bb # initialize rs1
li x29, 0x72355b43 # initialize rs2
or x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcc730b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xecfb554c # initialize rs1
li x30, 0x2c8b97d7 # initialize rs2
or x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6500cfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xece0279b # initialize rs1
li x31, 0x23b481db # initialize rs2
or x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x7, 0xa6d0e269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc5c6facf # initialize rs1
li x0, 0x8e38ad21 # initialize rs2
or x7, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x2, 0xd0449424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0441d7e7 # initialize rs1
li x1, 0xb1942641 # initialize rs2
or x2, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x13, 0x967d57e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd13d8db2 # initialize rs1
li x2, 0xea1845ca # initialize rs2
or x13, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x31, 0xa7c89c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x616e126a # initialize rs1
li x3, 0x8acb859b # initialize rs2
or x31, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x18, 0x5ce0f7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x92957109 # initialize rs1
li x4, 0x67a80800 # initialize rs2
or x18, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x12, 0xa08bb967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xca884e0d # initialize rs1
li x5, 0x9273b35e # initialize rs2
or x12, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x8, 0x1d9bac16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x02fda025 # initialize rs1
li x6, 0xb9c13ea1 # initialize rs2
or x8, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x26, 0x133380cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x78beba8c # initialize rs1
li x7, 0x263e3384 # initialize rs2
or x26, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x27, 0x3fe9d6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb7266cec # initialize rs1
li x8, 0xe0b583ac # initialize rs2
or x27, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x19, 0x4a911bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5d410d3 # initialize rs1
li x9, 0x1bc47e95 # initialize rs2
or x19, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x16, 0xed942a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9595b5a3 # initialize rs1
li x10, 0xd0221f6f # initialize rs2
or x16, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x3, 0x823246a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe09358d2 # initialize rs1
li x11, 0x50a42cc1 # initialize rs2
or x3, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x29, 0xe440d5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8419dbfe # initialize rs1
li x12, 0xa7dfcc7f # initialize rs2
or x29, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x19, 0xd30825a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5af81b8b # initialize rs1
li x13, 0x544f4dc3 # initialize rs2
or x19, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x5, 0xec7d2900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb3bc5924 # initialize rs1
li x14, 0x83f6d010 # initialize rs2
or x5, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x27, 0x3da8952b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4ae53d7c # initialize rs1
li x15, 0x93e7e3f5 # initialize rs2
or x27, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x9, 0xfb028ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xab0e0b40 # initialize rs1
li x16, 0xc6740d72 # initialize rs2
or x9, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x8, 0x8983a02e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbf3087e8 # initialize rs1
li x17, 0x1107f650 # initialize rs2
or x8, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x5, 0x52ecab97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2f3b9d9d # initialize rs1
li x18, 0xf34020a3 # initialize rs2
or x5, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0x879d0e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1abd11a1 # initialize rs1
li x19, 0x3c0319ef # initialize rs2
or x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x17, 0xf57bd4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4803e7de # initialize rs1
li x20, 0xa8aa1857 # initialize rs2
or x17, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x3, 0xd65e7eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fd1c7da # initialize rs1
li x21, 0x425b3b77 # initialize rs2
or x3, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x10, 0x8997993b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe1a6365e # initialize rs1
li x22, 0xde33714c # initialize rs2
or x10, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x8953c11d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5fcfac50 # initialize rs1
li x23, 0x8c7bf52a # initialize rs2
or x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x15, 0x4001024e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8c8efd46 # initialize rs1
li x24, 0xa806ef4e # initialize rs2
or x15, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x16, 0x48d38660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2ff762dd # initialize rs1
li x25, 0xd7ada1fc # initialize rs2
or x16, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x7, 0xa04934b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc6809185 # initialize rs1
li x26, 0x45041223 # initialize rs2
or x7, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x2, 0x4999ea32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa289bcfe # initialize rs1
li x27, 0x139a0d16 # initialize rs2
or x2, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x6, 0x3c6c74b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc9ed66e7 # initialize rs1
li x28, 0x5c64f9ac # initialize rs2
or x6, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x27, 0x9e413b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6b55b478 # initialize rs1
li x29, 0xd3963a89 # initialize rs2
or x27, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x41e1a799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x29a94a16 # initialize rs1
li x30, 0x43badbe6 # initialize rs2
or x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x19, 0x2845793c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80100767 # initialize rs1
li x31, 0x3c27acff # initialize rs2
or x19, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x35670df5)
li x28, 0xe517d06d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x35670df5 # initialize rs1
li x5, 0xc882e6be # initialize rs2
or x28, x15, x5 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x60dea5a0)
li x9, 0xfa615b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9f215a60 # initialize rs1
li x13, 0x4cc69138 # initialize rs2
or x9, x11, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x25218)
li x17, 0x03de7208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x48c4017f # initialize rs1
li x29, 0x00025218 # initialize rs2
or x17, x23, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3f2ed61c)
li x9, 0x7880d824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5c52d30e # initialize rs1
li x15, 0xc0d129e4 # initialize rs2
or x9, x23, x15 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
