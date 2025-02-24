///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-srli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.511800
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x0e85254b46e5777f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5612ccf0f069b815 # initialize rs1
srli x0, x17, 46 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc2d5f6283f522d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe523180f788a6614 # initialize rs1
srli x1, x24, 12 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5fd5dd37d83b4c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x38df96412561b7d9 # initialize rs1
srli x2, x29, 57 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3bc3013315a21843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5897117e115c1acc # initialize rs1
srli x3, x13, 7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x6613c5f944b72897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x38d28256e3e823cb # initialize rs1
srli x4, x22, 26 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xef96284e643536a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3447a89fac6f378c # initialize rs1
srli x5, x7, 19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x22eba19868332ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x88f7fa1207ae4518 # initialize rs1
srli x6, x10, 13 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb939602b2b191206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x39db8da0be407b92 # initialize rs1
srli x7, x18, 57 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4326ffa1c62e0ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5ee131a405c3c99d # initialize rs1
srli x8, x21, 52 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x5807b9e684660998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcc88237ef3f2de16 # initialize rs1
srli x9, x1, 13 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf627c5b245e7ba0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb85d7be4fcb54019 # initialize rs1
srli x10, x16, 41 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xf1ba22c58252d78d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc38ecde113929015 # initialize rs1
srli x11, x28, 6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb7cdbfc02996c4da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeb06f9c8669fb6f6 # initialize rs1
srli x12, x3, 10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5b772ce23aba7915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2724168c8ea76909 # initialize rs1
srli x13, x1, 19 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc12fed4a799524a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x68a1bfa6008c55f9 # initialize rs1
srli x14, x9, 47 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xfc2cc73c9b125a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd384203a3710e0fe # initialize rs1
srli x15, x14, 11 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe506797cf581b043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc7882d8b58716609 # initialize rs1
srli x16, x30, 25 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5fe1cd7eb2a7fc38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6610b2293161f5e9 # initialize rs1
srli x17, x14, 50 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x07708a4d1adcf23a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe385dd3575f6981b # initialize rs1
srli x18, x24, 51 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbd8174c15450626b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x966e434c08a97f91 # initialize rs1
srli x19, x16, 41 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc6ddc1f01421a989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x627b40ab6edcaae1 # initialize rs1
srli x20, x20, 1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3d5f721e96b9c343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x515d164480a8e5cd # initialize rs1
srli x21, x26, 9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe9e6198cbba30f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf824f89eb3ea3f10 # initialize rs1
srli x22, x31, 42 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2e4e204f989201dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1d990385144612f8 # initialize rs1
srli x23, x19, 61 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x61714b1e114d481b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4dc16fae0021142a # initialize rs1
srli x24, x21, 14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xcb1743aa7810b0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd450cd2a0db54850 # initialize rs1
srli x25, x8, 53 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd03917b56c9f648a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x72a109b90b30b2f4 # initialize rs1
srli x26, x25, 42 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xcf9a40077d18544a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb3a8bdecf2d091eb # initialize rs1
srli x27, x17, 49 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x186ec94674628a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf3370d22564df524 # initialize rs1
srli x28, x24, 37 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xadf7cebc1c6783a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x73ef3915985fb302 # initialize rs1
srli x29, x29, 13 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x48f3885a6b6e8815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe501744162097a20 # initialize rs1
srli x30, x3, 31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xace9cee89f6cc8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x065963092162e6ea # initialize rs1
srli x31, x14, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x25, 0xafe06cba58342689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x104806fe08206165 # initialize rs1
srli x25, x0, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x5e1d3e8f0e6707b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x45e97d0bd6f7a8c7 # initialize rs1
srli x26, x1, 59 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x89933871cb5e6d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6d52d3d1a04da7ab # initialize rs1
srli x12, x2, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x0bb52bf9a4238958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x24c3621130bc9428 # initialize rs1
srli x2, x3, 54 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0x778ded9000018cef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa605f0aa41b10ee2 # initialize rs1
srli x6, x4, 63 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x21, 0x1fbb8899c1b2cf05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x47e3c07e9506f0d2 # initialize rs1
srli x21, x5, 43 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0x05324a1d73356a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc0226e56f5b2ca77 # initialize rs1
srli x23, x6, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x13, 0xe27562a904b40f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55e38813a8582c70 # initialize rs1
srli x13, x7, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0x6dd6339769a39851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc4620bb41902dfd7 # initialize rs1
srli x25, x8, 55 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x7712ac0955529062 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a8b961469dc3e7b # initialize rs1
srli x30, x9, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x5f43039263c1cbda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1797e152366e57d6 # initialize rs1
srli x14, x10, 54 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0x68b8ca2c976840c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7c7bfc4ce394f05d # initialize rs1
srli x19, x11, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x397d565118ac63a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x99e654914c9b5990 # initialize rs1
srli x11, x12, 33 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0x94a2b95d1ae78ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce54fccff49d2a85 # initialize rs1
srli x21, x13, 52 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0xd9eca95c2bc07cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x712c5f7605b778f4 # initialize rs1
srli x12, x14, 51 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x1c964c82e66c54d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc4fc4830de16c3e8 # initialize rs1
srli x9, x15, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0x7f4a173ea62d6b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x46fa58c70dda498d # initialize rs1
srli x12, x16, 43 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0xd9d1f432dc4ac5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xea836739d4c8fde0 # initialize rs1
srli x18, x17, 47 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0x3a652631b2fea8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x19d047e61ea5a150 # initialize rs1
srli x15, x18, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0x0d673eca25db2165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xea8253ea381847bc # initialize rs1
srli x8, x19, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x6, 0x87594cc0c3f7f956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe273c98b803d36a5 # initialize rs1
srli x6, x20, 35 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x32283995dd96e16a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd67e6a5700133272 # initialize rs1
srli x29, x21, 44 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0xb6c7040806350f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb3b556b07e653bf4 # initialize rs1
srli x18, x22, 4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x336d9469ee784b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7d0ea0cd92aaf02c # initialize rs1
srli x5, x23, 45 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0xc704a8329e7d9bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb5b80abe8341c836 # initialize rs1
srli x15, x24, 59 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0xd239b627b4fadecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0ccf944c714a7f73 # initialize rs1
srli x2, x25, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x30, 0x468f298cd6de4228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x81aca2667b9035d1 # initialize rs1
srli x30, x26, 33 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x196f76710ac1e040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x788462a634d2dfaa # initialize rs1
srli x30, x27, 47 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0xac667c653f68f066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf65b9a4eb6dde0cb # initialize rs1
srli x23, x28, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0x3265e655b200f2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcdf44b64617ebdfc # initialize rs1
srli x22, x29, 50 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0xf922c05fdec6377a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x34e0530d6ef05518 # initialize rs1
srli x5, x30, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x26, 0x183c00cfe9852588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2a4d99d3e7a6815f # initialize rs1
srli x26, x31, 6 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x6802615394497ba2)
li x21, 0x3f6ea3ffd0db016e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f6ea3ffd0db016e # initialize rs1
srli x21, x16, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x3829e9521703c035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
srli x27, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0xa023df183471389e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
srli x29, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xe002919f0714443d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
srli x17, x10, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0x61dbd931fadff6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
srli x20, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0xdb10b05cc9c4f9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
srli x31, x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xb725964e212aee4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
srli x19, x9, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x3bce1cb04dc5b7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
srli x9, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x1e81aea2e943f8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
srli x22, x9, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x2868f0b2fa5403f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
srli x10, x26, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0x52f6437843150bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
srli x25, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0xa619a5d4b548c25f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
srli x25, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0x611eb8187c9bc49f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
srli x12, x8, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x8, 0xec295c89cd6067f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
srli x8, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x4, 0x168ecf0f09582183 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
srli x4, x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x13, 0xab77610840b78bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
srli x13, x11, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x15, 0x531a7179e442602e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
srli x15, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x9, 0x621e872b214bfae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
srli x9, x14, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x18, 0x095197e617bc4595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
srli x18, x29, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0xb903ed96ef7184e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
srli x15, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x3, 0x5c9def0615e8a973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
srli x3, x10, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x28, 0x51c4197e5fbc06a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
srli x28, x11, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0x7eb30c239b40b69f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
srli x22, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x7de18aa85a7976ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
srli x19, x2, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0x97f10e6fbcaa4343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
srli x3, x2, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x23, 0x1aa828533993d0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
srli x23, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x14, 0x822566a37578c521 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
srli x14, x20, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x0dee4e423a5b51eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
srli x17, x18, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x28, 0x0113897a354c5709 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
srli x28, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x29, 0xc4c79c5927f65368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
srli x29, x13, 55 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x1, 0x8610c587e9476379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
srli x1, x30, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x36aed9652717e368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
srli x5, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x76bba972728db887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
srli x8, x12, 42 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x75bbb669c110941d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
srli x29, x13, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0xce0735231ed9c3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
srli x14, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x8, 0x45b65f430d31898a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
srli x8, x31, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0x2d58c1e645cc00ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
srli x23, x12, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x14, 0xc909fa436b9ed6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
srli x14, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x25, 0xdee5ec20e3566e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
srli x25, x11, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x69cd8803f5f4035b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
srli x1, x24, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x3, 0x12568bcbec51814d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
srli x3, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0x83e2d0d1d5b99b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
srli x18, x15, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x60353585904ada8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
srli x7, x8, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x23, 0x017a71f50b512493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
srli x23, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x17, 0x921ecaa56f1ca8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
srli x17, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x5bcdb793a015f068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
srli x22, x18, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x27, 0x7df9135dc5d13bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
srli x27, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x27, 0xaf251a4dd3de2f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
srli x27, x24, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x22, 0x1fdbb34633f479a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
srli x22, x7, 63 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x16, 0x154cc77d4308731e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
srli x16, x3, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x8ab3df2296c2c95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
srli x9, x10, 34 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0xf4a23e854d042507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
srli x20, x3, 28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0xede763c313b114db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
srli x4, x6, 52 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0xaf8561b45ed27b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
srli x13, x12, 33 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x8c769d6b2b7c09ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
srli x19, x17, 21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0xcd18fa79034c04e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
srli x23, x28, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0x85cb3f9c531f556e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
srli x6, x29, 15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xcb12dffaee62ce62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
srli x10, x6, 41 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x17, 0x6deaeeedad3e6824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
srli x17, x2, 59 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x4c3c3037a63d5be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
srli x29, x12, 43 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x76a1cb3abf762de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
srli x16, x13, 15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x3bbf4ed7c8d8f22f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
srli x13, x4, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xb5b15c2e2959baa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
srli x2, x10, 20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x8a4cf81c36a2d807 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
srli x6, x1, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0xe0045045486208e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
srli x18, x30, 53 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x81d11cac38eedb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x62b41d7c2c708bab # initialize rs1
srli x0, x0, 2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa6efe03065a9d632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x26bcc591601074d8 # initialize rs1
srli x1, x1, 2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x299efadac30823fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3d43d457b36a1f3a # initialize rs1
srli x2, x2, 13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6a9727815ebaeeca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6a86d8e0b14a944a # initialize rs1
srli x3, x3, 63 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x991243089b936200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6f47d317bffedd10 # initialize rs1
srli x4, x4, 33 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6cf34d56642ef3a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x57998ea7bfc5a393 # initialize rs1
srli x5, x5, 54 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xacb8b07fc2d9c6da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9ab0305760134b45 # initialize rs1
srli x6, x6, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x451ebc0dedf8d293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x460b048c7683ef11 # initialize rs1
srli x7, x7, 54 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4f64023f508142d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4f2587feed81df21 # initialize rs1
srli x8, x8, 50 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb9d01054aedd7470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x64c7a1726e453ce3 # initialize rs1
srli x9, x9, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x58d530f349976c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3209014faeaf92f1 # initialize rs1
srli x10, x10, 63 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf3545ce41aa1e808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb10caa4920c3dc0d # initialize rs1
srli x11, x11, 31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe94e983efeb39ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdc0ca7b3511fa52d # initialize rs1
srli x12, x12, 57 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x423021270234b031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x54ff043e4d8607dd # initialize rs1
srli x13, x13, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xa6b17964e7c805ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8a90ef71fec8e070 # initialize rs1
srli x14, x14, 58 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xef41c69227046886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x112778e8fb675941 # initialize rs1
srli x15, x15, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbbf831224627e822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb4f2dcc4cdba8971 # initialize rs1
srli x16, x16, 59 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0379405da389ecbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xebb289139d6de9e4 # initialize rs1
srli x17, x17, 52 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x84143646fbc65558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9d659cd85134cd6a # initialize rs1
srli x18, x18, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9743f99c9511cde4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc272a8d7639fafd0 # initialize rs1
srli x19, x19, 42 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xce1b76f0bbc7b393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4551602b29815040 # initialize rs1
srli x20, x20, 55 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x0338b300472f6eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x880373d6242a7e1c # initialize rs1
srli x21, x21, 32 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf7431d58fede1a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6064d64a1d58ee57 # initialize rs1
srli x22, x22, 40 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc6c6ff1855cc74f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1f302019bad93817 # initialize rs1
srli x23, x23, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd064c18f73c2216f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x31f0b63235f9dde8 # initialize rs1
srli x24, x24, 63 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1ded622b0d1cf37c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x94728ba2bc724bda # initialize rs1
srli x25, x25, 59 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa9ecd9bbff4450ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x24f4b06ad09bdf6b # initialize rs1
srli x26, x26, 16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x17cbf92093dbee76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5978df7dc1dfa0cb # initialize rs1
srli x27, x27, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7cf196971099adcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0639241c7bbd313b # initialize rs1
srli x28, x28, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x063bb3ccb9ee1338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x31a2c6cf676e91a1 # initialize rs1
srli x29, x29, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x606578e2d3fb3a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf0dbb0f486a6a61e # initialize rs1
srli x30, x30, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9d4bce8d1e6998cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x16baf63d7e9e1677 # initialize rs1
srli x31, x31, 25 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x74419f360b2d4e7e)
li x11, 0x41eec806a268169c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x74419f360b2d4e7e # initialize rs1
srli x11, x26, 39 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7e2d638f5bd591ef)
li x25, 0x6b32f3057dd3b605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x81d29c70a42a6e11 # initialize rs1
srli x25, x26, 27 # perform operation

# Testcase cp_imm_shift
li x3, 0xc6c80d320b30c0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe054380f8778c9e1 # initialize rs1
srli x3, x18, 0 # perform operation

# Testcase cp_imm_shift
li x27, 0x129581bd424039d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdffafd6888316379 # initialize rs1
srli x27, x23, 1 # perform operation

# Testcase cp_imm_shift
li x30, 0x468212f3c5e306b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf831cdcdf133aa6b # initialize rs1
srli x30, x14, 2 # perform operation

# Testcase cp_imm_shift
li x31, 0xbbdde290769654e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe75c944db16b51f7 # initialize rs1
srli x31, x7, 3 # perform operation

# Testcase cp_imm_shift
li x10, 0x7d54b5402725e0ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xad160c33afe3fb84 # initialize rs1
srli x10, x21, 4 # perform operation

# Testcase cp_imm_shift
li x11, 0x8dd6b2bc28818be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8b7673cd1e675797 # initialize rs1
srli x11, x31, 5 # perform operation

# Testcase cp_imm_shift
li x3, 0x9f2ba1fde6e085ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3a060496fe4323fc # initialize rs1
srli x3, x4, 6 # perform operation

# Testcase cp_imm_shift
li x2, 0x58a07dfc924bdb76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x864f308399ba71fc # initialize rs1
srli x2, x23, 7 # perform operation

# Testcase cp_imm_shift
li x8, 0xa1739dde0e312d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb63ea7d191f0c358 # initialize rs1
srli x8, x1, 8 # perform operation

# Testcase cp_imm_shift
li x13, 0xcabc7e2e7d02edf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc6d0923241dca621 # initialize rs1
srli x13, x6, 9 # perform operation

# Testcase cp_imm_shift
li x12, 0x047d8115bd2d081d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec6d001204deed1e # initialize rs1
srli x12, x23, 10 # perform operation

# Testcase cp_imm_shift
li x11, 0xea4890872eb43585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7e47695b1ca1a7aa # initialize rs1
srli x11, x2, 11 # perform operation

# Testcase cp_imm_shift
li x19, 0x7f208d4d23531290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf02d61999711565f # initialize rs1
srli x19, x1, 12 # perform operation

# Testcase cp_imm_shift
li x17, 0xa00d345a2f08e7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x819fbed710981ca0 # initialize rs1
srli x17, x22, 13 # perform operation

# Testcase cp_imm_shift
li x1, 0x5d1e312575a3fde6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2adf26de127a0c31 # initialize rs1
srli x1, x26, 14 # perform operation

# Testcase cp_imm_shift
li x22, 0xc62ea082ccc37b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1eef1726546ff3f2 # initialize rs1
srli x22, x9, 15 # perform operation

# Testcase cp_imm_shift
li x5, 0xbf3d70cf77b854e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x03a6f2734d4a9648 # initialize rs1
srli x5, x4, 16 # perform operation

# Testcase cp_imm_shift
li x22, 0xa8dd321b3cc80cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb880d069c66625ed # initialize rs1
srli x22, x1, 17 # perform operation

# Testcase cp_imm_shift
li x23, 0x6946ce16e262c5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf38e7adeaebde8db # initialize rs1
srli x23, x9, 18 # perform operation

# Testcase cp_imm_shift
li x16, 0x66df14d6d19f286b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x57a93181ecc209d0 # initialize rs1
srli x16, x23, 19 # perform operation

# Testcase cp_imm_shift
li x21, 0xb5030d2548391e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfa399d1fcf660d83 # initialize rs1
srli x21, x23, 20 # perform operation

# Testcase cp_imm_shift
li x29, 0xe365cd75ef6a81a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf63c17b7b134649e # initialize rs1
srli x29, x2, 21 # perform operation

# Testcase cp_imm_shift
li x13, 0x7777e8d9bb02a035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x79f26ef096d9f62c # initialize rs1
srli x13, x28, 22 # perform operation

# Testcase cp_imm_shift
li x25, 0xb679b5e69f0122c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x65e200063ce8e200 # initialize rs1
srli x25, x26, 23 # perform operation

# Testcase cp_imm_shift
li x21, 0xd21c38f248d6667c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4ef368a95e6b12e8 # initialize rs1
srli x21, x31, 24 # perform operation

# Testcase cp_imm_shift
li x19, 0x30c28c4f50ea59f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd39b65cf4ecc6c37 # initialize rs1
srli x19, x5, 25 # perform operation

# Testcase cp_imm_shift
li x20, 0xc6f24dfaf71c6ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xeb041234c5e6536c # initialize rs1
srli x20, x6, 26 # perform operation

# Testcase cp_imm_shift
li x11, 0xf45c659b38cfacd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6abf99f8ab373b2c # initialize rs1
srli x11, x24, 27 # perform operation

# Testcase cp_imm_shift
li x5, 0x4b49db1cb87e9860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2f0ed7e139e906aa # initialize rs1
srli x5, x16, 28 # perform operation

# Testcase cp_imm_shift
li x11, 0xccc188bdb3dad10a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00fc3fe03e468c29 # initialize rs1
srli x11, x13, 29 # perform operation

# Testcase cp_imm_shift
li x23, 0x0c0ae033cf679699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x18979bbdb1ba10b6 # initialize rs1
srli x23, x2, 30 # perform operation

# Testcase cp_imm_shift
li x2, 0x0708ff164a3333fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0f0f143e187ed43d # initialize rs1
srli x2, x4, 31 # perform operation

# Testcase cp_imm_shift
li x12, 0x249eac9c8d11f01b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc341e1f8271e1d27 # initialize rs1
srli x12, x19, 32 # perform operation

# Testcase cp_imm_shift
li x23, 0x652acda0b79a6c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x93b78b12c95de409 # initialize rs1
srli x23, x21, 33 # perform operation

# Testcase cp_imm_shift
li x16, 0x0cac0cb913964e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2affa7824cb453bb # initialize rs1
srli x16, x30, 34 # perform operation

# Testcase cp_imm_shift
li x22, 0x031d797a6e489c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc8b64e059a2e23af # initialize rs1
srli x22, x11, 35 # perform operation

# Testcase cp_imm_shift
li x23, 0x45877ef13651ca94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4c85652547a14a91 # initialize rs1
srli x23, x19, 36 # perform operation

# Testcase cp_imm_shift
li x20, 0x2e509181ed8fcd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3bcf9f203c61c1bb # initialize rs1
srli x20, x31, 37 # perform operation

# Testcase cp_imm_shift
li x20, 0x339c97ff45388519 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0b30157672b31962 # initialize rs1
srli x20, x3, 38 # perform operation

# Testcase cp_imm_shift
li x6, 0x092f11735ed6e74a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc5b1b97bb7c7e524 # initialize rs1
srli x6, x12, 39 # perform operation

# Testcase cp_imm_shift
li x25, 0x7cb2fecc75bc8313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3fd2e6a95aa63be3 # initialize rs1
srli x25, x23, 40 # perform operation

# Testcase cp_imm_shift
li x4, 0x9ba3e3102c4fcb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd83dd6ec51fb83d8 # initialize rs1
srli x4, x14, 41 # perform operation

# Testcase cp_imm_shift
li x18, 0x818bf673348a2f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbe28ee07fa84cc54 # initialize rs1
srli x18, x2, 42 # perform operation

# Testcase cp_imm_shift
li x15, 0x6f8f662387691674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9edd24dcd74ee936 # initialize rs1
srli x15, x20, 43 # perform operation

# Testcase cp_imm_shift
li x12, 0xbeca28c21b4dd887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc3951f7ac071dfd7 # initialize rs1
srli x12, x9, 44 # perform operation

# Testcase cp_imm_shift
li x13, 0x359168c7c433e300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8492f0a1d7fe9365 # initialize rs1
srli x13, x14, 45 # perform operation

# Testcase cp_imm_shift
li x5, 0x3e8df943aa78d3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1c128c18c5c50506 # initialize rs1
srli x5, x27, 46 # perform operation

# Testcase cp_imm_shift
li x19, 0xc4e4e61280786417 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x14df347f4a114407 # initialize rs1
srli x19, x12, 47 # perform operation

# Testcase cp_imm_shift
li x9, 0x8802f7cf71017202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb3156269535a0e2d # initialize rs1
srli x9, x25, 48 # perform operation

# Testcase cp_imm_shift
li x1, 0xee026577f0c0ced5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4147a98520aa0e91 # initialize rs1
srli x1, x12, 49 # perform operation

# Testcase cp_imm_shift
li x14, 0xe6afb9df659d6a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6bc9d6fc73e825d0 # initialize rs1
srli x14, x30, 50 # perform operation

# Testcase cp_imm_shift
li x6, 0xff8c35b51949286c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbe33848eef8adb24 # initialize rs1
srli x6, x12, 51 # perform operation

# Testcase cp_imm_shift
li x8, 0x7b77e98baaa76f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8f3df830fe3c1580 # initialize rs1
srli x8, x23, 52 # perform operation

# Testcase cp_imm_shift
li x26, 0x8856a33964d201f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x75cd284d7467b387 # initialize rs1
srli x26, x16, 53 # perform operation

# Testcase cp_imm_shift
li x22, 0x42f6b3192ab26689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc2ac29bfff72ceaf # initialize rs1
srli x22, x1, 54 # perform operation

# Testcase cp_imm_shift
li x7, 0x19670a26acc0ea7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7015c9df538a8219 # initialize rs1
srli x7, x6, 55 # perform operation

# Testcase cp_imm_shift
li x12, 0x701b837d935dd4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe8cc1a08cb099bfd # initialize rs1
srli x12, x14, 56 # perform operation

# Testcase cp_imm_shift
li x17, 0x248ba19bd2027d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x59106bd197e09755 # initialize rs1
srli x17, x4, 57 # perform operation

# Testcase cp_imm_shift
li x14, 0x286beff366719e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb7bb7a0f84e5a437 # initialize rs1
srli x14, x24, 58 # perform operation

# Testcase cp_imm_shift
li x31, 0x87990df6313dbc87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x76b64bb3650ac90e # initialize rs1
srli x31, x29, 59 # perform operation

# Testcase cp_imm_shift
li x4, 0x5463264893af0fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x63d844f26a532681 # initialize rs1
srli x4, x25, 60 # perform operation

# Testcase cp_imm_shift
li x5, 0x6fe20e91cdbecc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x13391fafb46bc58a # initialize rs1
srli x5, x14, 61 # perform operation

# Testcase cp_imm_shift
li x13, 0x85554a839acea4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbc1a5f22da6404b1 # initialize rs1
srli x13, x16, 62 # perform operation

# Testcase cp_imm_shift
li x19, 0x7bd26ce882a8139d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8421eba8fe999c4d # initialize rs1
srli x19, x12, 63 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
