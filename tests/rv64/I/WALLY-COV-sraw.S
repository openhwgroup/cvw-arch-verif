///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sraw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.507837
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x19c729a83d1cb09f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x74bb302762ce84b6 # initialize rs1
li x8, 0xbe360461c7c50ba7 # initialize rs2
sraw x0, x12, x8 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1cdb1ade2ff5347f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe22617231c1c60f0 # initialize rs1
li x29, 0x34fa31aced298824 # initialize rs2
sraw x1, x3, x29 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x65fe6afa1a9d38a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x65b30a0c733a1887 # initialize rs1
li x7, 0xfb027948707aea5b # initialize rs2
sraw x2, x13, x7 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1b190f3944386326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5d0e8ed5195f839f # initialize rs1
li x23, 0x3d7c56561cc24eec # initialize rs2
sraw x3, x26, x23 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xdb0db4c3fa2deea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd6cf83fd407a2cb8 # initialize rs1
li x9, 0xca69543f23b56982 # initialize rs2
sraw x4, x4, x9 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xeaada526b3ee45a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6fcb85253ee7b077 # initialize rs1
li x29, 0x9ce7929f802e8693 # initialize rs2
sraw x5, x5, x29 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x3d627b84c9270a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x19999e44963456b4 # initialize rs1
li x22, 0x2f71e9bd2f822d87 # initialize rs2
sraw x6, x1, x22 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5b646ac1ba3fa103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2a3d2f980fc9729b # initialize rs1
li x29, 0xbeb5042e0dbae1d6 # initialize rs2
sraw x7, x9, x29 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x542de79a6e94a900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfe6eb521842e4c4b # initialize rs1
li x4, 0xaa6e3b0bee685562 # initialize rs2
sraw x8, x7, x4 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8f7edbecfbf97f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaf24a4058909b027 # initialize rs1
li x22, 0xc43a171727b6510d # initialize rs2
sraw x9, x1, x22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xee988a7792cafe96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x65ebd48f6b39c8d8 # initialize rs1
li x20, 0x8aacb59c08af75b1 # initialize rs2
sraw x10, x14, x20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x43319abd55715a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x20bcf146434c8b66 # initialize rs1
li x11, 0xa1ea3656bb909cdd # initialize rs2
sraw x11, x6, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4a0730d8effe3ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x26453e39def69a3b # initialize rs1
li x13, 0x1df876db0ec55958 # initialize rs2
sraw x12, x21, x13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xec351a8cf8fa6f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa6402880ad34d502 # initialize rs1
li x3, 0x181a2a97a35766dc # initialize rs2
sraw x13, x21, x3 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6713f4ffa0586693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x88c52dfdfe832c29 # initialize rs1
li x12, 0xb108cb0e9441a93b # initialize rs2
sraw x14, x25, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x93c2d7565cf621dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa98799d904752a05 # initialize rs1
li x2, 0x67b5c888c7197e9c # initialize rs2
sraw x15, x6, x2 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x43c9764541280b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x44d6f5fccd6f99ff # initialize rs1
li x8, 0xdbfe4f8a0bff86a0 # initialize rs2
sraw x16, x31, x8 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd6f07fda10841c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x842f5732b730333a # initialize rs1
li x13, 0xbba97c77cee1aeef # initialize rs2
sraw x17, x24, x13 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5e9dec73efa1a801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf1fa1695c9efbf43 # initialize rs1
li x23, 0x451a9ec169a30acf # initialize rs2
sraw x18, x6, x23 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x02a0daff1b2199c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc2a3e296179f207d # initialize rs1
li x1, 0x853f95d12319c433 # initialize rs2
sraw x19, x5, x1 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf556ac78c38087c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbf03fd2be7275e5f # initialize rs1
li x21, 0x44386cd22ff2dace # initialize rs2
sraw x20, x18, x21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x9bd4953a7598e1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9b04c10357c61f8f # initialize rs1
li x6, 0xbbb1bb85096406ea # initialize rs2
sraw x21, x3, x6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x59927947d50dfbb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x11414bcb73c78cf4 # initialize rs1
li x22, 0x68f18e3b44aafaae # initialize rs2
sraw x22, x19, x22 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x641adfd22f4e9f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xde325c0e00290317 # initialize rs1
li x25, 0xecb4250812a50056 # initialize rs2
sraw x23, x23, x25 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x57cd9545a0005877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3c8e8fb7f09183b0 # initialize rs1
li x20, 0x09e995f382694277 # initialize rs2
sraw x24, x5, x20 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb7e0a891f5f3146d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x18ee4969280be048 # initialize rs1
li x7, 0xe5c6453046432946 # initialize rs2
sraw x25, x4, x7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x10f600283fdeaaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7be35bf5f9f475e5 # initialize rs1
li x6, 0x3ec21045122556d9 # initialize rs2
sraw x26, x22, x6 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1969571ff1eda498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa43a4caee9bd0fac # initialize rs1
li x5, 0x0336468b15574175 # initialize rs2
sraw x27, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xfd5f3162fb2b5386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa7b45863be687c18 # initialize rs1
li x8, 0x49f2ab0641c13aba # initialize rs2
sraw x28, x22, x8 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xec17b4d8ab524c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1dd35aca524f8995 # initialize rs1
li x29, 0x1994dc48513a038f # initialize rs2
sraw x29, x22, x29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x83e44f5310ed103f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd7cfc255c0cfca52 # initialize rs1
li x30, 0x2336d763b88030dc # initialize rs2
sraw x30, x14, x30 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x530058a34aaf3007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdabb5ecf672f4d6a # initialize rs1
li x4, 0xb990b1319d6ca1b0 # initialize rs2
sraw x31, x1, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x24, 0x4279f41480f5f90a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3bee9b4b55bb7f28 # initialize rs1
li x7, 0x35d646c6bef7c784 # initialize rs2
sraw x24, x0, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0xe182e22bc60d30f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0eecef68fc2818fb # initialize rs1
li x7, 0xb5149b45f1dc9fa1 # initialize rs2
sraw x24, x1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0x6d87667efeb5cb79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x187b43a46d042f45 # initialize rs1
li x15, 0x4322a0c5ab5141d8 # initialize rs2
sraw x16, x2, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xdc0dc2cdba38454d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7d19ffcb489eac53 # initialize rs1
li x18, 0x4cccb698bd179fd7 # initialize rs2
sraw x16, x3, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0xcb0822c2d7b1b379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x06715647fe280120 # initialize rs1
li x2, 0x4130cd62622ba3c6 # initialize rs2
sraw x22, x4, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0xa0f3a4f40d52aaed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x16803a114bdf89b1 # initialize rs1
li x19, 0x5edabe6c4d48c5ec # initialize rs2
sraw x16, x5, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x21, 0x2beef61af1b6c70c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x384cb79e0b99b02d # initialize rs1
li x20, 0x49505954fc561507 # initialize rs2
sraw x21, x6, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0xacbfce061cbc06e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x87b1be62119ff5b7 # initialize rs1
li x8, 0x0296a39dc9563eb2 # initialize rs2
sraw x25, x7, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x6335e766b9a5a280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf318f28a54a6c88e # initialize rs1
li x15, 0x1309e003fcb7c90f # initialize rs2
sraw x28, x8, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0x587d9835c6b71331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd247fb33c4fcf4e6 # initialize rs1
li x13, 0xa15e921b28455662 # initialize rs2
sraw x3, x9, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x6e9f042c2e504997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8a9d1f892bb1876a # initialize rs1
li x21, 0x1612a5681607c4e4 # initialize rs2
sraw x9, x10, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x2714cb6102fe2066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d733eba1dcd93e3 # initialize rs1
li x7, 0x83116f1f625ce0e4 # initialize rs2
sraw x31, x11, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x7915526cb6f026cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3ac3fbdbc845dabf # initialize rs1
li x27, 0x9d1efe72d1646aa0 # initialize rs2
sraw x21, x12, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0xf1463f2c03f0a055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x06e18020ad18cb73 # initialize rs1
li x8, 0x499d929e705a2f0d # initialize rs2
sraw x24, x13, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0x9d413b49bed3fadb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x082c8dd666dcfa59 # initialize rs1
li x23, 0xf1002160eb412723 # initialize rs2
sraw x26, x14, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x94e07391d432d1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa0b725e81c92eabe # initialize rs1
li x3, 0xd5be2169fa1adb2e # initialize rs2
sraw x9, x15, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0x1fb14fb00ea0987b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaf2d18cfaebafffb # initialize rs1
li x30, 0x3ff76ee818fbb883 # initialize rs2
sraw x8, x16, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x7367a61caadbeeec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe1bb56b1848a37b0 # initialize rs1
li x19, 0x2ae8946a3386d2f2 # initialize rs2
sraw x30, x17, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0xc18adbe228cc2b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x321bda642cf5cba1 # initialize rs1
li x7, 0x6e8e731880c75753 # initialize rs2
sraw x5, x18, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x2, 0xcd159d310c94299e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcc73001ef80c75e3 # initialize rs1
li x9, 0x6b3d6a13a1e1629c # initialize rs2
sraw x2, x19, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x3cb4a79d3922fc10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5712e939a7b77a7a # initialize rs1
li x24, 0xa0436fe53bfca8da # initialize rs2
sraw x23, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0xa783cfdb07d441b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x51ac733ee903f078 # initialize rs1
li x31, 0x94c097134b33dc43 # initialize rs2
sraw x23, x21, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0xa34b8b6df023ace6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x98490181d30ecfed # initialize rs1
li x5, 0x7a83082bb25e5da9 # initialize rs2
sraw x4, x22, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x6b1097d77aa7d5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x693a0ff91837b61e # initialize rs1
li x30, 0x95131f791be6294c # initialize rs2
sraw x5, x23, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0x8969b186d9e29d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8194cdc534417897 # initialize rs1
li x12, 0x7d378d4e7d7d34b3 # initialize rs2
sraw x5, x24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0xbf7659d4c8d0c96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdf7be868a476647e # initialize rs1
li x13, 0x466c317ca3b29d98 # initialize rs2
sraw x17, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x24, 0x974fff5afd195dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x51ef1387a3923045 # initialize rs1
li x2, 0xfc60082d5fea5324 # initialize rs2
sraw x24, x26, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xd557cafec49ac5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdb9cf94de0f05e5b # initialize rs1
li x18, 0x1833a069bf749fac # initialize rs2
sraw x17, x27, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0x294c91f1680a5891 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0adc4cf4a453ee10 # initialize rs1
li x10, 0xd581ceaf8b86018b # initialize rs2
sraw x15, x28, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0x20d51f8d10353a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8cf3442885ed1039 # initialize rs1
li x3, 0x21bfdb54ed49be67 # initialize rs2
sraw x19, x29, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x35c022fa6993c53d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf9eeebb5cf1ce320 # initialize rs1
li x5, 0x39630f04f8b8253e # initialize rs2
sraw x25, x30, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x18, 0x00ddf19de60c6480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc4e264393217eaab # initialize rs1
li x15, 0xb0a3eb1a59e92299 # initialize rs2
sraw x18, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x676eb83ba7ace1be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x59ed24f34098082e # initialize rs1
li x0, 0x328481262e2d0f75 # initialize rs2
sraw x25, x4, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x4, 0x5756761b835d9b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0248f5521d4ba29e # initialize rs1
li x1, 0x97970fa02777524b # initialize rs2
sraw x4, x25, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x17, 0xeb50f37eabd2f4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9d9244d39d48ca4d # initialize rs1
li x2, 0xde4be52a049736b0 # initialize rs2
sraw x17, x12, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0x9397da7824143343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf08a53de09e70704 # initialize rs1
li x3, 0xe157dde81c7f7335 # initialize rs2
sraw x1, x5, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0x7ffbf1e71bf815c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8dec3454d1e94699 # initialize rs1
li x4, 0xb874fab00ec23a7f # initialize rs2
sraw x17, x19, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x27, 0xefd25407e41fc98a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcc1800a249767713 # initialize rs1
li x5, 0x93797b4fd7a0b5be # initialize rs2
sraw x27, x11, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x13, 0x60c7ecfa394b04a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7dac20994868d85c # initialize rs1
li x6, 0xea017d6cd33134fb # initialize rs2
sraw x13, x17, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x22, 0x280c8e44e17be3db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x59ce2ef26ba14264 # initialize rs1
li x7, 0x52d1eb085eb8d6f7 # initialize rs2
sraw x22, x20, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xb1d12e7ebab0e5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x15eb20b074b261db # initialize rs1
li x8, 0xa92aa26990b52b60 # initialize rs2
sraw x13, x23, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xc4d27cfe1f1984a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8c461778ad3384fb # initialize rs1
li x9, 0xe85ab1e59a044a3f # initialize rs2
sraw x22, x3, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x85a1c0c518702551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaa0ee03e4e35387b # initialize rs1
li x10, 0xaa451dce48ec0c36 # initialize rs2
sraw x5, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x22a6beca986677c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb321b69b864d65ff # initialize rs1
li x11, 0x546db3cdc6e7b110 # initialize rs2
sraw x21, x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0x67b52710b03c6f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x92cb17b7c97c8511 # initialize rs1
li x12, 0x223231ab81ffcedb # initialize rs2
sraw x11, x20, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0xef1838d9bff3a3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6bb459d2b7a4b5e6 # initialize rs1
li x13, 0x23978388d2d9a317 # initialize rs2
sraw x2, x27, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0xfbf59bceec2d77ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc2d6ef54b7c7b75 # initialize rs1
li x14, 0x16ebdd7e96db4e5f # initialize rs2
sraw x18, x8, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x4, 0x618e07a4106d4fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfeb7f37579d55f80 # initialize rs1
li x15, 0x6ad6ecb73e0e3165 # initialize rs2
sraw x4, x25, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0xd3f04172538e197d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa4a519e916cc3c40 # initialize rs1
li x16, 0x340ea8a9b6b58ae5 # initialize rs2
sraw x14, x12, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x77fdbdb5dc2e2e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3e751e008f191cf4 # initialize rs1
li x17, 0x14fe146a404564ec # initialize rs2
sraw x13, x4, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0x6b3335c0db56955f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb28ea50ddeab1a43 # initialize rs1
li x18, 0xa60a7c5a96c4918e # initialize rs2
sraw x2, x24, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x2966114b8ee7af3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4e6adebf1025b8df # initialize rs1
li x19, 0x582d651f667ca945 # initialize rs2
sraw x30, x17, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0x3629160a2000bbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x889652d7051f4611 # initialize rs1
li x20, 0xab130e8b086e6583 # initialize rs2
sraw x3, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x301885df126a781b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0faac7ea9c273ce9 # initialize rs1
li x21, 0xaf244601045e9a81 # initialize rs2
sraw x2, x14, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x6b45707ef959a28d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc7df06d0d491c652 # initialize rs1
li x22, 0x68145246413fbae7 # initialize rs2
sraw x19, x28, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0xb13e014243f38948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf4ed1a37ce800cbb # initialize rs1
li x23, 0x6e834794fcbe650c # initialize rs2
sraw x14, x3, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x3, 0x9f91b94f37002517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x45907cd35ae7c8cd # initialize rs1
li x24, 0xa02f4410940e9e27 # initialize rs2
sraw x3, x10, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x12, 0xc978ace1aca6e45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf711188fcc5eedb2 # initialize rs1
li x25, 0xcde0ffdef0859f3a # initialize rs2
sraw x12, x7, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x515db0c3e90d115e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc111cb903e92429e # initialize rs1
li x26, 0xee849139fd7b850a # initialize rs2
sraw x6, x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x9dc155b8df04ab28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0dff8c2167e37452 # initialize rs1
li x27, 0x467e05a533a9b1ed # initialize rs2
sraw x10, x23, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x08cf820f3a3eb556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa205577a46d72a9a # initialize rs1
li x28, 0x57adf2e14cdc5d0f # initialize rs2
sraw x16, x13, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xd79fe76acc678577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x03e213f94a797c6d # initialize rs1
li x29, 0xbff43611f3d39446 # initialize rs2
sraw x22, x14, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x3dde82d7e44638e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf64b269af3e3e092 # initialize rs1
li x30, 0x79adada92626f3cc # initialize rs2
sraw x24, x22, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x776eb62b541bb2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x98d07cdc922c864b # initialize rs1
li x31, 0x4d0815d2323e8005 # initialize rs2
sraw x11, x17, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcf7c1f9d93982b5f)
li x9, 0x36b067cef3d4ed0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x36b067cef3d4ed0b # initialize rs1
li x0, 0x63d6dece17768841 # initialize rs2
sraw x9, x11, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xcbdc5f8968b8a8ec)
li x3, 0xcbdc5f8968b8a8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcbdc5f8968b8a8ec # initialize rs1
li x5, 0xcbdc5f8968b8a8ec # initialize rs2
sraw x3, x0, x5 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe89aeeafd9c967df)
li x15, 0x14050e31db56fbee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe89aeeafd9c967df # initialize rs1
li x19, 0xe89aeeafd9c967df # initialize rs2
sraw x15, x18, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xbe5afd75d24db216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x0, 0x266e35fbac7f4e84 # initialize rs2
sraw x12, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x3a0a43bb866c281d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sraw x25, x5, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x06cee20e0bbfaf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sraw x25, x14, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0xcf41d820b4fd237e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x0, 0xc6b0972df3697f76 # initialize rs2
sraw x12, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x22ab78c0ba887c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sraw x12, x19, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x7020113752b1de56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sraw x9, x8, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0xc4682e41644720b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x0, 0xfca475b3b8619e2b # initialize rs2
sraw x6, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xff204a33106a6aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sraw x13, x1, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0xae79ff6eb84ab379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sraw x27, x21, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x19, 0x717b00c4c39b3681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000080000000 # initialize rs1
li x0, 0x3ff7d6e8a829dbf5 # initialize rs2
sraw x19, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0xe0427f616d110d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000080000000 # initialize rs1
li x11, 0x0000000080000000 # initialize rs2
sraw x21, x18, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0x4497db86ca1e2020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000080000000 # initialize rs2
sraw x15, x29, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0xf5d2d8a943596e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000080000001 # initialize rs1
li x0, 0xe0deb413574bdd38 # initialize rs2
sraw x28, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x791625dca0b18566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000001 # initialize rs1
li x12, 0x0000000080000001 # initialize rs2
sraw x1, x10, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x61317dc2cbb9ec8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000080000001 # initialize rs2
sraw x1, x29, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0x444b3ab4e4a610ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs1
li x0, 0xef76433b8e8479ef # initialize rs2
sraw x17, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0xfaa0ca19cf8533f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x000000007fffffff # initialize rs1
li x16, 0x000000007fffffff # initialize rs2
sraw x25, x28, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x25ff76879fa6fb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x000000007fffffff # initialize rs2
sraw x31, x16, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x7c3efc525c4aa38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000007ffffffe # initialize rs1
li x0, 0x6bf4093c5021f15a # initialize rs2
sraw x17, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0x2f25618b6b0f674d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x000000007ffffffe # initialize rs1
li x8, 0x000000007ffffffe # initialize rs2
sraw x14, x1, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x9, 0xc01bc7d25bf05a02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x14, 0x000000007ffffffe # initialize rs2
sraw x9, x6, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x15, 0xa0924aec86492ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x0, 0x7388e876c32238cd # initialize rs2
sraw x15, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x88833c4bbae50239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
sraw x17, x31, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xaacd8f649818182e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sraw x6, x2, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0x388405f064ebe20b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x0, 0x35eebd86bba9f1a0 # initialize rs2
sraw x26, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0xba901e9086411652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sraw x26, x14, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x3, 0x1a6c9a4b1404728e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sraw x3, x9, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x18, 0xaad36dcb9c9683bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x5c61002cbb5a4d6e # initialize rs2
sraw x18, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x24, 0x344d01b737dca617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000aaaaaaaa # initialize rs1
li x7, 0x00000000aaaaaaaa # initialize rs2
sraw x24, x14, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x29, 0x3d1e22a85c42f372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000aaaaaaaa # initialize rs2
sraw x29, x28, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0x88654b98cef46bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000055555555 # initialize rs1
li x0, 0x22e831c928c1d566 # initialize rs2
sraw x11, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x10, 0xfc81437b6c5bf6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000055555555 # initialize rs1
li x2, 0x0000000055555555 # initialize rs2
sraw x10, x23, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x21, 0x731c6eebb06c465c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000055555555 # initialize rs2
sraw x21, x3, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x11, 0xa1d71103f8d73f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000063ae86f7 # initialize rs1
li x0, 0x558155b5c3f695bd # initialize rs2
sraw x11, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x18, 0x35d3dccb9568d79a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize rs1
li x3, 0x0000000063ae86f7 # initialize rs2
sraw x18, x14, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x31, 0xee073566a5c78508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000063ae86f7 # initialize rs2
sraw x31, x19, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x9, 0xb9b9f70a1e93fe32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x5d74dae890927481 # initialize rs2
sraw x9, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x10, 0x44afcd7084f77582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000e3ae86f7 # initialize rs1
li x1, 0x00000000e3ae86f7 # initialize rs2
sraw x10, x12, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x22, 0x769f2d6e27b77b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000e3ae86f7 # initialize rs2
sraw x22, x31, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x8766eab25a1022af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x27, 0x76f71056f5b4d522 # initialize rs2
sraw x7, x1, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x8b5f73c5254b4fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x5, 0xad9702d2a43949e5 # initialize rs2
sraw x7, x9, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x1aad794600ff33ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x17, 0x8cff0b337f87a3c6 # initialize rs2
sraw x20, x27, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x831262a681aa7ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x13, 0x042b8002c9da053d # initialize rs2
sraw x14, x18, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0xc7eb6b282361d878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x18, 0xa857c6a1e6242d7e # initialize rs2
sraw x6, x21, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x28, 0xff1dd2a029b46536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x11, 0xedafc03bf82f6417 # initialize rs2
sraw x28, x29, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x35ee9f1949000a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0x24508b6465cd63f1 # initialize rs2
sraw x15, x27, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x1, 0x77038069a655a039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x3d65cfc15583030a # initialize rs2
sraw x1, x16, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0x7357895b26fcfd4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x23, 0xa659d1aedb18292a # initialize rs2
sraw x7, x17, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x59e8d7b0c01ab5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0xacc1dd4cc15ff4d2 # initialize rs2
sraw x12, x27, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0x59995b8a007c223e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x1e9d90e6135ee068 # initialize rs2
sraw x17, x27, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x23, 0xe6b19df8d8855ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x10, 0x999b678904975a19 # initialize rs2
sraw x23, x12, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xe41ec9132b5d9d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x15, 0x994a4ff41ebff9dd # initialize rs2
sraw x9, x22, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0x380fa56499799b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0xe17865255f3acaa4 # initialize rs2
sraw x1, x20, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x83841527122b2495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x16, 0xf4ee1727fdc49e66 # initialize rs2
sraw x19, x14, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0xdf3e3bd066ecd286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x11, 0xd2cf3fb30142a29f # initialize rs2
sraw x26, x17, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0xa42da60319f5d517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc4d01686ea86f923 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
sraw x9, x4, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x11a8f97e6ce8cb8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3190e91ee597afa4 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sraw x31, x4, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x2eb6deb9dc63c263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x868cec49a8eea6ca # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sraw x21, x12, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0x2e1d72329affa23c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0663807dab28fd93 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sraw x23, x20, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0xee6383823abf7c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb93e7bf2ca2a8b79 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sraw x2, x8, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x82f574fb7c4709b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1aff3d35f8455830 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sraw x10, x11, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x27, 0xb0715baf694bf300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x076b8d12f1d68885 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sraw x27, x12, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0xe13fbb0eec45be11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd07097789ad40150 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sraw x13, x22, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x17, 0xed1acbb255e80c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0587fbd3aa2d1598 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sraw x17, x23, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x2, 0x30aac15c5fb831eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x61bd06b78cad3ac2 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
sraw x2, x23, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x5e9ee86d7c74ff23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa58546a2ed6bfc0b # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x5, x19, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x4500bebac09c6073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x49014be7dde9ea30 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sraw x24, x1, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x25c646cec4897b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x43f3d7064e40d474 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sraw x3, x5, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x1ade29ca8820a2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x655bc56d519bd1a6 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sraw x18, x22, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x85bc1d9daaab63b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdf77073e8a39286b # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sraw x6, x18, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0xbbaa68eb5796ba01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc05b1dd7d0dcce09 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sraw x14, x23, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x056d81fc2da614d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x82d3085fa97bdf24 # initialize rs1
li x7, 0x0930681e541d6659 # initialize rs2
sraw x0, x0, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb6dbb99af5a6f959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbfff4d4cdd6c03d1 # initialize rs1
li x29, 0x8f05f151c5435038 # initialize rs2
sraw x1, x1, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8c3ff242eec7e997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x378012f5849210e6 # initialize rs1
li x15, 0x09463727fae925ff # initialize rs2
sraw x2, x2, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3cb239355543c39d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x54338d4aebae7932 # initialize rs1
li x1, 0xabdb9586c4a71639 # initialize rs2
sraw x3, x3, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xb0de6d6725c17fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8b99be176791cb80 # initialize rs1
li x5, 0xe19cd16d40b35566 # initialize rs2
sraw x4, x4, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x5f21f6ab948e043a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x451e6e78d58342e4 # initialize rs1
li x22, 0xa7891686958b2b6e # initialize rs2
sraw x5, x5, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc9bb8518940f0d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe5b74b06b5b9d3bd # initialize rs1
li x15, 0x14bd1f731eabb454 # initialize rs2
sraw x6, x6, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1649e10b0a062b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3ec02186f5325010 # initialize rs1
li x28, 0x079ab42b9e83591c # initialize rs2
sraw x7, x7, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x314b0a91a31b8138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x431b94824e0824a5 # initialize rs1
li x25, 0x0e3862163656660d # initialize rs2
sraw x8, x8, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa1f23ce64ff6f3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa5985c22fb98c83b # initialize rs1
li x23, 0x58546ad8e4546bfd # initialize rs2
sraw x9, x9, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x008b07746d1510d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8817b6e23cfadc14 # initialize rs1
li x19, 0x866835b39d246b92 # initialize rs2
sraw x10, x10, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8f70271b9b340bda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfab08b3884be44c9 # initialize rs1
li x25, 0xd664c2555fb636ee # initialize rs2
sraw x11, x11, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7581df6926a3f0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc544dcb8e36d7f03 # initialize rs1
li x21, 0x9f63b58a60ceee6c # initialize rs2
sraw x12, x12, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdc6f9f561187a2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3705e1e1f00be1a2 # initialize rs1
li x16, 0x40c1329a5e550c39 # initialize rs2
sraw x13, x13, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x6d1db00bf712a3f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1065cb9c36abe5f8 # initialize rs1
li x4, 0x1d390d3a7ff85e5a # initialize rs2
sraw x14, x14, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2d809b47520bfa52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3b909a05fa953b89 # initialize rs1
li x8, 0x1fd83cff3c7be1b7 # initialize rs2
sraw x15, x15, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x880e02f86cf715ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfc01ea858044e0f7 # initialize rs1
li x8, 0x195986520fb1eb22 # initialize rs2
sraw x16, x16, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8778769eedb83792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7f79844cc57c3e54 # initialize rs1
li x28, 0xb269f0e829d8d422 # initialize rs2
sraw x17, x17, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2dbba1e7067a96cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x178588c57ae9e17c # initialize rs1
li x21, 0xfcfa28dee81739a2 # initialize rs2
sraw x18, x18, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x428bfb90e5b25009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf29641157881ff0d # initialize rs1
li x20, 0xca73cfbe4ba7b7f3 # initialize rs2
sraw x19, x19, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7cd2daf92b2cb5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x89334c2b27600d97 # initialize rs1
li x2, 0xb68c0773a3eb73db # initialize rs2
sraw x20, x20, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2eb0cf8af5a75e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2dde7abdcd5752d0 # initialize rs1
li x20, 0x3c2048000804a155 # initialize rs2
sraw x21, x21, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x20e81d59a414f640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x49d8294e62fd8871 # initialize rs1
li x11, 0xb267806192a74672 # initialize rs2
sraw x22, x22, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcb01af8bf9b34002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x624a83bbb385aa62 # initialize rs1
li x15, 0xf32a3efb472235fe # initialize rs2
sraw x23, x23, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3ae2e0d0f5a6ac48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd4e269f8c36c8d25 # initialize rs1
li x20, 0x268b1fb2cca6b356 # initialize rs2
sraw x24, x24, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x79ebf03eea68f449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5822ad039e6c378b # initialize rs1
li x13, 0x9157f1616262f541 # initialize rs2
sraw x25, x25, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x62dae4703c2b2841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x724d915d475c250c # initialize rs1
li x16, 0x751e65d86ca6b32a # initialize rs2
sraw x26, x26, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb54dad8a5fae3caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x93cbe0a6198d5d0a # initialize rs1
li x21, 0x4896f34ccea278b3 # initialize rs2
sraw x27, x27, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf2edc1988aa9ba5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x509f5a45bc503ab6 # initialize rs1
li x28, 0x06050303451ae09f # initialize rs2
sraw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3f253d3c7c93f51b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08e59562aea76e99 # initialize rs1
li x21, 0x7d7c1b5838f9b5ee # initialize rs2
sraw x29, x29, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe70154d6dd513854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5fe898c6ffcb170f # initialize rs1
li x31, 0x8ee795ef10dd2289 # initialize rs2
sraw x30, x30, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x68ba2ff0702ca034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x69eb9fd5b0627267 # initialize rs1
li x19, 0x8d05b800a856b33f # initialize rs2
sraw x31, x31, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x7ff4ff32516c4323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe86d046e13691c09 # initialize rs1
li x0, 0x6b7176137b7b5b62 # initialize rs2
sraw x0, x18, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x308df5034f0ad896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x209e754b82ba3655 # initialize rs1
li x1, 0xd6145e6ca66dc0d8 # initialize rs2
sraw x1, x24, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xd841ead4a17eac5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8d637a2f4c61de18 # initialize rs1
li x2, 0xa1e2dfc19054aadc # initialize rs2
sraw x2, x29, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xe6a1a6d1231a9baa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8522fee5efcf749e # initialize rs1
li x3, 0xa3fe78968b199b0c # initialize rs2
sraw x3, x12, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xf66e209f71a8586f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7f6554c6d0614b73 # initialize rs1
li x4, 0x646a9c80ad7bb484 # initialize rs2
sraw x4, x7, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x144785db69910263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4b3802ae70410aca # initialize rs1
li x5, 0xe21dfa8f9b62d67d # initialize rs2
sraw x5, x22, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xe13e72d54fd5e413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x92c0613361274312 # initialize rs1
li x6, 0x2e49124e6d010911 # initialize rs2
sraw x6, x27, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xe8a97c0d2f8af467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x53036dc11c3198e1 # initialize rs1
li x7, 0xf155187d1b23b1d4 # initialize rs2
sraw x7, x1, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xdce83bcb53e26d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcdeb1d3e09b63686 # initialize rs1
li x8, 0x0554e2838172be1d # initialize rs2
sraw x8, x26, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xd350e1be13d5f5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x95b8630cc9dff82b # initialize rs1
li x9, 0xbeab8cccee607546 # initialize rs2
sraw x9, x30, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x0daa63f33c32d339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfcc8d27919d45405 # initialize rs1
li x10, 0x3dfdc4a63e1b0b8e # initialize rs2
sraw x10, x21, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x996c8d19ba1854af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1bb1afcf9e8f9ad4 # initialize rs1
li x11, 0x377b87bd1da0aacc # initialize rs2
sraw x11, x26, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x7e2598cd9dc11e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7e5601ff1aa5c52e # initialize rs1
li x12, 0xd9475651d446b884 # initialize rs2
sraw x12, x11, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xcd4acabb0d6de6cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc46917e28afee827 # initialize rs1
li x13, 0x3147db9c93845dc8 # initialize rs2
sraw x13, x7, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x102e3f87dce4026f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc7261a061b97d947 # initialize rs1
li x14, 0x8234de9a0ffe48a5 # initialize rs2
sraw x14, x30, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xddb3239a4f855e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0d792a68344f4963 # initialize rs1
li x15, 0xdd687e1f3a8066bb # initialize rs2
sraw x15, x31, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x2a03234f892520e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaab1db6678f205e9 # initialize rs1
li x16, 0x33ea3f23d2e223ec # initialize rs2
sraw x16, x12, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x7c26a53a1316cf95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa8a4b58b52f7b860 # initialize rs1
li x17, 0x25cc3dbefe8d799c # initialize rs2
sraw x17, x4, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x104fe6dbec12e87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x27da2def8d8d01a3 # initialize rs1
li x18, 0x64cc77c122f270ab # initialize rs2
sraw x18, x7, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xdd6a250f42e79b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe87b9c2d60f57f40 # initialize rs1
li x19, 0x6cd06b59c5e25a9e # initialize rs2
sraw x19, x18, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa99923ceaf5b1355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5485c2aeaf89b62f # initialize rs1
li x20, 0x80d97f1c8bfb9a6f # initialize rs2
sraw x20, x27, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x681479b930801d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdc81180c9f24ce3a # initialize rs1
li x21, 0x2d75b1e5dc89e1c1 # initialize rs2
sraw x21, x30, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xed0c049c8a869ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdf4af6b65fe24a6a # initialize rs1
li x22, 0xd813fdbabb90d517 # initialize rs2
sraw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x07a1ae688825a719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9d95a66f36277afd # initialize rs1
li x23, 0x456b4bed1c4e9a2c # initialize rs2
sraw x23, x30, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x9c2b62fdce4cdbda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3b48199d59a2d40f # initialize rs1
li x24, 0xcc275b58e9f19eaa # initialize rs2
sraw x24, x4, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xab2f8e7e252eadfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdef3994fb3791227 # initialize rs1
li x25, 0x050aec5f723de0e8 # initialize rs2
sraw x25, x9, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x31f392a7e9705e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xccb73321f620fb44 # initialize rs1
li x26, 0x0b1af161d38d3d38 # initialize rs2
sraw x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xe72b5174dcf11b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9b117a74ace8213d # initialize rs1
li x27, 0x420fc9c29d0efb4b # initialize rs2
sraw x27, x26, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x80f7e58065a5b843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x30b0f5efceb2c0bc # initialize rs1
li x28, 0x02804adb048783d3 # initialize rs2
sraw x28, x6, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa074d0fcc05b5957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8891807a53b4fe42 # initialize rs1
li x29, 0xeb4041f35cec85f9 # initialize rs2
sraw x29, x30, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x83c853ed603e4301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd428d80e807b0e71 # initialize rs1
li x30, 0xd2b3c7f49c2dce14 # initialize rs2
sraw x30, x5, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xf5d922bb4867fba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf3fd804931f67875 # initialize rs1
li x31, 0x8d517ce36cba93c1 # initialize rs2
sraw x31, x31, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xaad90aa202434f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa2b4e61c2888dacb # initialize rs1
li x0, 0x200223f9f0561aef # initialize rs2
sraw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x76d1874ea01cd3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x62d26c166142bdd6 # initialize rs1
li x1, 0xe0ac7df0587121f2 # initialize rs2
sraw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x500f1d938217f749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa7ca0794c567c8d5 # initialize rs1
li x2, 0xc5b0d1aa94bc0738 # initialize rs2
sraw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x83e7ad00487a886b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x253112d0caa70f77 # initialize rs1
li x3, 0x7c9dd3b24b177254 # initialize rs2
sraw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x5805b99d90812bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4a73a2d1c01d74c1 # initialize rs1
li x4, 0x3948464947bee945 # initialize rs2
sraw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x832039a2a4019577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf1f96d03de4ceb0a # initialize rs1
li x5, 0x1e77c78e13e86b43 # initialize rs2
sraw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x900083bead63a357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x985e5e260f06df9f # initialize rs1
li x6, 0x93448358b90d1483 # initialize rs2
sraw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x68b3a9cda04a8b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x76a0587cb80de6e9 # initialize rs1
li x7, 0xc496b47a111ac433 # initialize rs2
sraw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x34b7d9a12e531060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf7c14409671f9e86 # initialize rs1
li x8, 0xee8f2afb12776db4 # initialize rs2
sraw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcbfe48a34b3f9157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe30ea55b958bc135 # initialize rs1
li x9, 0xd55043bfa716411a # initialize rs2
sraw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x996ba4127bcf6576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x313d67377e39ed5e # initialize rs1
li x10, 0x38356d6bed6d1152 # initialize rs2
sraw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1b9629fb664bebd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb692a104337c723d # initialize rs1
li x11, 0xca23f1e46aaedc89 # initialize rs2
sraw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5a3111c8f55ca371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x21b7e9e0f7392029 # initialize rs1
li x12, 0x2d9412ae4fccf89d # initialize rs2
sraw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc8ca4a1413e54c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xee0daac971e87f98 # initialize rs1
li x13, 0x9e55f616dd7b69d1 # initialize rs2
sraw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xee88ed930c4fb752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x681fb3b3aec86fda # initialize rs1
li x14, 0x227aab1a00e6d3f0 # initialize rs2
sraw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5ac12e84fbd80213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x03fb1d7582de35ee # initialize rs1
li x15, 0x03fb3e1d7f90d7a7 # initialize rs2
sraw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1905b4736c1023bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x77cacf8d9a866585 # initialize rs1
li x16, 0x90712c2648e44de8 # initialize rs2
sraw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xebeaf623f82297d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x991e8e1185c4c8a8 # initialize rs1
li x17, 0x09e06e4128195f10 # initialize rs2
sraw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1c129d9d5c9cc19c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x918978252b48394d # initialize rs1
li x18, 0x52f5e0373476a7a5 # initialize rs2
sraw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xaccb3fe7dd08c881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc2e4d4413bbac4d2 # initialize rs1
li x19, 0xeb82b421075fc861 # initialize rs2
sraw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5ae7a842e100af14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdff42fb292cad621 # initialize rs1
li x20, 0x9218c813353fd94e # initialize rs2
sraw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x723aee2e767cbf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x872e59b8da58b7bf # initialize rs1
li x21, 0x1201805a2f7ae60b # initialize rs2
sraw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x88d73d869ceeae97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe433dfa1ccb3eb08 # initialize rs1
li x22, 0x55b295481b57c333 # initialize rs2
sraw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x2e193b2ce3c1ef68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5db9ec9ad4404343 # initialize rs1
li x23, 0x3db4d2797398a97b # initialize rs2
sraw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xee0aa1650bc3727d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x89c092027beb9c52 # initialize rs1
li x24, 0x8259a01631b12765 # initialize rs2
sraw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xebe82dd9836b80a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbb58c8cb4f6d4c50 # initialize rs1
li x25, 0x7ee92ce41b749752 # initialize rs2
sraw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x77fa085eb2f11342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x050e61f5c36925bb # initialize rs1
li x26, 0xe54f083c0ee3981e # initialize rs2
sraw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1982ba1db5f77006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd96fa68deb1bd93d # initialize rs1
li x27, 0xb0650dda37cb93ee # initialize rs2
sraw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x51caf30d8bf48460 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbf7807b19998ad5c # initialize rs1
li x28, 0xa7132e37650d51d5 # initialize rs2
sraw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbd6aeeb1acf51c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x179c3f35322e85df # initialize rs1
li x29, 0x0b0a7d4ad58b0459 # initialize rs2
sraw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe9a19a5a4355c018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9c32e6fa1524572 # initialize rs1
li x30, 0xabe72d438dac1bef # initialize rs2
sraw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf74b3f7c215686d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4e06b220eaefd324 # initialize rs1
li x31, 0x2f35212e342fe21f # initialize rs2
sraw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x592086c7c7bd4d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x213e4c6026f67db6 # initialize rs1
li x0, 0x4020c3d779f8aba7 # initialize rs2
sraw x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x4, 0xa827f44ae6026d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a4a7dd2016351a9 # initialize rs1
li x1, 0xcaa6034edd5ec390 # initialize rs2
sraw x4, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0x08ab60f7699b01d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5d17b951ed9d8858 # initialize rs1
li x2, 0xfea507793eb57feb # initialize rs2
sraw x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x26, 0xb6ebeab8da344fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf4e2e33b7788cf78 # initialize rs1
li x3, 0x029e200075c1d22f # initialize rs2
sraw x26, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x16, 0x6f03a2267f5fc8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa7c7dc40e855ac36 # initialize rs1
li x4, 0x09f8955e0b5b4020 # initialize rs2
sraw x16, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x11, 0x13260fbf883204ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbb6ef58e042651bc # initialize rs1
li x5, 0xd4598d3c8a9d800b # initialize rs2
sraw x11, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x23, 0x004f4b73c435502d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7a9ed2fc79bc7473 # initialize rs1
li x6, 0x422ae37d38111450 # initialize rs2
sraw x23, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x25, 0xdc884fa7742083b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdc77b07da828e2c1 # initialize rs1
li x7, 0xb12e28179fc08aa8 # initialize rs2
sraw x25, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x25, 0x257633a5e1e4b46a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf51fa7bdf16811d3 # initialize rs1
li x8, 0x5d759b6c7cf5f228 # initialize rs2
sraw x25, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe6f209d7e9cfc49b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb936e24fd40bec7a # initialize rs1
li x9, 0x998d9e5e77c1af41 # initialize rs2
sraw x9, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x15, 0x2f4262e48cb59cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x11f00cd1b1238f20 # initialize rs1
li x10, 0x52e0f142a9f38ec6 # initialize rs2
sraw x15, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x7, 0x53a1376ffd7230f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1c68a4cc46ecb01a # initialize rs1
li x11, 0x31d61b772c13ff57 # initialize rs2
sraw x7, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x9, 0x5e49d45b1c0f0677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7851799d216629c5 # initialize rs1
li x12, 0x40c2f671345ca468 # initialize rs2
sraw x9, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0xf42774e2b421db2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x91c900f3e99b3d44 # initialize rs1
li x13, 0x3e25b5082c6f0cc5 # initialize rs2
sraw x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x30, 0x380e652d5deb011c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb508d286cc4afc45 # initialize rs1
li x14, 0x5f82ee887956d7ff # initialize rs2
sraw x30, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x21, 0x5fc76c19efee319d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x44b4d02d0d02e7ac # initialize rs1
li x15, 0xb3baee2423f71ce9 # initialize rs2
sraw x21, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x14, 0xc6161799e6928777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaea546314c7c395d # initialize rs1
li x16, 0x20988a4d4e223a56 # initialize rs2
sraw x14, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x25, 0x17a40273464cd6b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf8e023fec42f1db1 # initialize rs1
li x17, 0x26ca81cb154e9cec # initialize rs2
sraw x25, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x8, 0x442ad8c0ab3a3302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6154e2ca1d01b596 # initialize rs1
li x18, 0xb811701337488cd1 # initialize rs2
sraw x8, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x2, 0x69bf802386c717cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x52ac2d775affcb2c # initialize rs1
li x19, 0x4ce255b21f2ae043 # initialize rs2
sraw x2, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x9, 0x1f27996f149e94d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8717ef3ba3d3c23e # initialize rs1
li x20, 0xc0543e1c2a95eb4f # initialize rs2
sraw x9, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x14, 0x7e56ddbb99e50efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3262e55c4bde8837 # initialize rs1
li x21, 0x74ee146c6c099d31 # initialize rs2
sraw x14, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x10, 0x85ea26d9676b018e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x02ce80a94f790556 # initialize rs1
li x22, 0xaa8d7d1e9a937e67 # initialize rs2
sraw x10, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x25, 0xff60af6ab176aad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4718a527d9e78a3f # initialize rs1
li x23, 0x956a85a6e2737e75 # initialize rs2
sraw x25, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x10, 0x80042df30a48a51a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5fba8be753d4d4c4 # initialize rs1
li x24, 0xd5e83eec1acfb10f # initialize rs2
sraw x10, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x27, 0x0c9b4c7e0e4ad6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x39c0626a184bcc80 # initialize rs1
li x25, 0x6d48ec0fd03b3e9c # initialize rs2
sraw x27, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x24, 0x5aa9a0ce79fa6231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2baa195a21a6b0aa # initialize rs1
li x26, 0x83fd45c941962061 # initialize rs2
sraw x24, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x6, 0x49ed9b76a7e6ece1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdabbe52ded56dd65 # initialize rs1
li x27, 0x59283561c4888f40 # initialize rs2
sraw x6, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x20, 0xf872a6b217baaa00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2ec1d63a839c5b77 # initialize rs1
li x28, 0xd8faa61dea8e36ad # initialize rs2
sraw x20, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x1, 0xbacd1a2187846be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6f6419faf27dad11 # initialize rs1
li x29, 0x673a6a326086ffbf # initialize rs2
sraw x1, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x8, 0x541d478b550268d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x18b21c9c24548da1 # initialize rs1
li x30, 0xe44713b6c100663a # initialize rs2
sraw x8, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x19, 0x5666380fb821d512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x52682fe293ba18a3 # initialize rs1
li x31, 0x8f836984a4590daa # initialize rs2
sraw x19, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x7bdc8572a2e9e725)
li x1, 0x927cf9ef86363fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7bdc8572a2e9e725 # initialize rs1
li x27, 0x31452daca3608882 # initialize rs2
sraw x1, x6, x27 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5c262520a5653532)
li x18, 0x98b66f7cf50b16cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa3d9dadf5a9acace # initialize rs1
li x31, 0xe1294be1016339a3 # initialize rs2
sraw x18, x3, x31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
