///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-slli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.982599
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7c02d750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x03fedf31 # initialize rs1
slli x0, x3, 29 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcbca88a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe38e263c # initialize rs1
slli x1, x20, 27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x4610cc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8b798a94 # initialize rs1
slli x2, x26, 19 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xdeffea49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xae97023e # initialize rs1
slli x3, x26, 14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x6eeff7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf108fd05 # initialize rs1
slli x4, x14, 2 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x95ea166a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd47da10e # initialize rs1
slli x5, x20, 19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x889f858d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4414d893 # initialize rs1
slli x6, x27, 29 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x4d077910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaa16a600 # initialize rs1
slli x7, x10, 17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe19d8f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1b79ed5f # initialize rs1
slli x8, x20, 23 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x5f4152bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xef8b137d # initialize rs1
slli x9, x11, 1 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x0960d604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6bf055e5 # initialize rs1
slli x10, x12, 25 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5925505c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x82fe631e # initialize rs1
slli x11, x5, 1 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x40cf0f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcd442829 # initialize rs1
slli x12, x25, 2 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xdbc3c5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf8674408 # initialize rs1
slli x13, x2, 28 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x31843946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1aca1cf1 # initialize rs1
slli x14, x8, 31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x13cc487c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3c5a4ea1 # initialize rs1
slli x15, x5, 4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x61f9b777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3168403c # initialize rs1
slli x16, x18, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xdd18ac41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6d4d290d # initialize rs1
slli x17, x12, 18 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x86d332f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x010d71d4 # initialize rs1
slli x18, x28, 14 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6f07230a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x20261ff3 # initialize rs1
slli x19, x30, 9 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa2ef3dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcf0df010 # initialize rs1
slli x20, x18, 5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb3a8db3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5c242a0b # initialize rs1
slli x21, x29, 19 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x01680e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x41ed5107 # initialize rs1
slli x22, x25, 28 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x900757fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x22e27b6e # initialize rs1
slli x23, x4, 28 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4ae85114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4e2b6f68 # initialize rs1
slli x24, x15, 17 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x68d676ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb0a9f4a1 # initialize rs1
slli x25, x17, 30 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x77746509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x94c5e75e # initialize rs1
slli x26, x3, 3 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf60888f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa2078006 # initialize rs1
slli x27, x5, 4 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe05c4312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1268472c # initialize rs1
slli x28, x31, 9 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x91ca4e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x70ac2738 # initialize rs1
slli x29, x31, 23 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x677ed8e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0aadd8ec # initialize rs1
slli x30, x6, 25 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xfab16439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8321aa0c # initialize rs1
slli x31, x21, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x2, 0xc54c99b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0eac10ba # initialize rs1
slli x2, x0, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x37048617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1ec82696 # initialize rs1
slli x25, x1, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x750d6772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x74f83eed # initialize rs1
slli x10, x2, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0x946cad07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x28b02717 # initialize rs1
slli x24, x3, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x2, 0x2a2bb168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb749eef4 # initialize rs1
slli x2, x4, 4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x18, 0x1e9266ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe923f732 # initialize rs1
slli x18, x5, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0xfac15141 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd81a4bcf # initialize rs1
slli x26, x6, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x1, 0x096a3e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xadd042bc # initialize rs1
slli x1, x7, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0xa3ca5863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa1f89f6a # initialize rs1
slli x29, x8, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x5dd018d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x13a90c25 # initialize rs1
slli x11, x9, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x4, 0xdc4e5bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x93ae190c # initialize rs1
slli x4, x10, 7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0x2e633f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd535a48c # initialize rs1
slli x26, x11, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x18bc6ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x477fd194 # initialize rs1
slli x1, x12, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x52daeb9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5474dca9 # initialize rs1
slli x1, x13, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0x5830b72e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a8d8e54 # initialize rs1
slli x25, x14, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0x51a10493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26ccde43 # initialize rs1
slli x19, x15, 29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x3cbca620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f49f881 # initialize rs1
slli x29, x16, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0x50471c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdc60a2a1 # initialize rs1
slli x7, x17, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0x4c073dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf27783f9 # initialize rs1
slli x20, x18, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0x2a78aaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x279098ab # initialize rs1
slli x16, x19, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0xd86e3229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc0fee2c8 # initialize rs1
slli x21, x20, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x92b38cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf7a56182 # initialize rs1
slli x26, x21, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0x7ef7dbd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcb8a3580 # initialize rs1
slli x27, x22, 18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x21, 0x2abb6094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe4abac6c # initialize rs1
slli x21, x23, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0x893b6d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x494984d3 # initialize rs1
slli x27, x24, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x22, 0xc043f44d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xef166f30 # initialize rs1
slli x22, x25, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x15, 0x6b6c24ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8b74ba3c # initialize rs1
slli x15, x26, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0xb9eece5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc6ba494c # initialize rs1
slli x20, x27, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0x17957408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0fa2a2bd # initialize rs1
slli x27, x28, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xaf44e124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8994f83d # initialize rs1
slli x1, x29, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0xce558e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb750b06c # initialize rs1
slli x9, x30, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x553416ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf4b45803 # initialize rs1
slli x9, x31, 11 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x3045dcf7)
li x5, 0x891c0b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x891c0b5c # initialize rs1
slli x5, x24, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x9333ba84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
slli x25, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x61de3073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # initialize rs1
slli x16, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0xf0401c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
slli x13, x4, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0xbb65b1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
slli x22, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x26684731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
slli x2, x17, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x11f254cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
slli x30, x24, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xd952102c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
slli x1, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x5aae419a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
slli x10, x29, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x209e455b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
slli x8, x19, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x4, 0xc07472d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
slli x4, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0xc068a1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
slli x15, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0xde808867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
slli x15, x23, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x27, 0x80be07ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
slli x27, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0xbb17c17f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
slli x3, x31, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0xf890fb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
slli x22, x27, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x0dd81618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
slli x18, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x27, 0xb85b4fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
slli x27, x14, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0xd4ffad3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
slli x25, x23, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x11, 0x13d370f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
slli x11, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0x9cf43df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
slli x15, x31, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0xa1598eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
slli x19, x16, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xc591499d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
slli x20, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x26, 0x391e6404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
slli x26, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x2a46aadd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
slli x9, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x60a39601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
slli x28, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0x636d1f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slli x22, x11, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x43ac6d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
slli x1, x29, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x10, 0x79a7472e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
slli x10, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0xafc29f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
slli x14, x15, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x1e875e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
slli x19, x5, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x28, 0xb2a34c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
slli x28, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0x866373ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
slli x26, x18, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0xac1d6aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
slli x4, x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0x03ad9cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slli x31, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x69bc83b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x55555555 # initialize rs1
slli x5, x18, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0xefdbf7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
slli x9, x1, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0xdaa9073a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
slli x28, x9, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x9133a5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
slli x30, x29, 5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0xbe698afa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
slli x21, x9, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x8315c956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
slli x10, x31, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x9ea473a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
slli x21, x12, 17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x82c26ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
slli x29, x6, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x5, 0x91402940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
slli x5, x2, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x6908683b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
slli x3, x27, 30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x5c567447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
slli x13, x19, 18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x30, 0xdd8f4adc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
slli x30, x28, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0x4998e6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
slli x13, x5, 8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x1, 0x3fe09537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
slli x1, x27, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6d55d896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xac9caf89 # initialize rs1
slli x0, x0, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2edc4e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe350ec0d # initialize rs1
slli x1, x1, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf8978223 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x46761949 # initialize rs1
slli x2, x2, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x496b2acb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbae93ac8 # initialize rs1
slli x3, x3, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x1b2b6379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xed7d06c0 # initialize rs1
slli x4, x4, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2db3a896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9a77c8e7 # initialize rs1
slli x5, x5, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xbf641cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa59ca8c6 # initialize rs1
slli x6, x6, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xa4e6474d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb58491b7 # initialize rs1
slli x7, x7, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf8cd51f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x556b43a4 # initialize rs1
slli x8, x8, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb266f943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2387e6ed # initialize rs1
slli x9, x9, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x11a37894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x82b30a24 # initialize rs1
slli x10, x10, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf81aaaeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x47c8d86d # initialize rs1
slli x11, x11, 23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2676aa09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3c46c63c # initialize rs1
slli x12, x12, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x92d43680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ebc630a # initialize rs1
slli x13, x13, 23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1424193e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf09d79c1 # initialize rs1
slli x14, x14, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xcd2f2558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbf5eb149 # initialize rs1
slli x15, x15, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x23f3e457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa455e690 # initialize rs1
slli x16, x16, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4f39e5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf8f676c0 # initialize rs1
slli x17, x17, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x262f1c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0668b40b # initialize rs1
slli x18, x18, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x88af33ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf0380585 # initialize rs1
slli x19, x19, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x11af5294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb74d383c # initialize rs1
slli x20, x20, 23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa87c17f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x54fc3273 # initialize rs1
slli x21, x21, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe933cb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf8108907 # initialize rs1
slli x22, x22, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x38192040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xff287311 # initialize rs1
slli x23, x23, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf6f34555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8da45866 # initialize rs1
slli x24, x24, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xbd398c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3884cf43 # initialize rs1
slli x25, x25, 2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x07f16e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5af28aad # initialize rs1
slli x26, x26, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0f008894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fb45e54 # initialize rs1
slli x27, x27, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfded0e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x63dba7bd # initialize rs1
slli x28, x28, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e1aa8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3fca3bc2 # initialize rs1
slli x29, x29, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x0e3c62ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd4881118 # initialize rs1
slli x30, x30, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3e1a6f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xdec54128 # initialize rs1
slli x31, x31, 24 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x3b5d0782)
li x9, 0x7f187192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3b5d0782 # initialize rs1
slli x9, x1, 15 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1448d066)
li x24, 0x027b330a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xebb72f9a # initialize rs1
slli x24, x8, 31 # perform operation

# Testcase cp_imm_shift
li x7, 0x157b33bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xde7f3c27 # initialize rs1
slli x7, x16, 0 # perform operation

# Testcase cp_imm_shift
li x22, 0xe54564c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa90314cd # initialize rs1
slli x22, x4, 1 # perform operation

# Testcase cp_imm_shift
li x11, 0x79f8aaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x63f10170 # initialize rs1
slli x11, x6, 2 # perform operation

# Testcase cp_imm_shift
li x10, 0xb3f9a887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x73a9b220 # initialize rs1
slli x10, x24, 3 # perform operation

# Testcase cp_imm_shift
li x26, 0x09d20d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb1421669 # initialize rs1
slli x26, x21, 4 # perform operation

# Testcase cp_imm_shift
li x14, 0x8d466b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4947dca0 # initialize rs1
slli x14, x7, 5 # perform operation

# Testcase cp_imm_shift
li x22, 0xe97dacf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3fbcb78c # initialize rs1
slli x22, x10, 6 # perform operation

# Testcase cp_imm_shift
li x19, 0x479a60bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa8276db0 # initialize rs1
slli x19, x18, 7 # perform operation

# Testcase cp_imm_shift
li x28, 0x7850e37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7f91901e # initialize rs1
slli x28, x8, 8 # perform operation

# Testcase cp_imm_shift
li x15, 0xfc84629f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x424cb788 # initialize rs1
slli x15, x8, 9 # perform operation

# Testcase cp_imm_shift
li x1, 0x492f3993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x99d5cc46 # initialize rs1
slli x1, x28, 10 # perform operation

# Testcase cp_imm_shift
li x29, 0x9354ef76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x251a9918 # initialize rs1
slli x29, x27, 11 # perform operation

# Testcase cp_imm_shift
li x25, 0x4390d6ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9c377dfa # initialize rs1
slli x25, x5, 12 # perform operation

# Testcase cp_imm_shift
li x14, 0x74eccf6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4f0febf8 # initialize rs1
slli x14, x20, 13 # perform operation

# Testcase cp_imm_shift
li x27, 0x796c1205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4c0d0071 # initialize rs1
slli x27, x21, 14 # perform operation

# Testcase cp_imm_shift
li x28, 0x4b3008d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xca9fe244 # initialize rs1
slli x28, x1, 15 # perform operation

# Testcase cp_imm_shift
li x18, 0xeb2138dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0e5a15b9 # initialize rs1
slli x18, x21, 16 # perform operation

# Testcase cp_imm_shift
li x18, 0xe8f264b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x70561994 # initialize rs1
slli x18, x17, 17 # perform operation

# Testcase cp_imm_shift
li x28, 0x82692dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x075f4389 # initialize rs1
slli x28, x18, 18 # perform operation

# Testcase cp_imm_shift
li x16, 0x6019980b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xda220c9a # initialize rs1
slli x16, x22, 19 # perform operation

# Testcase cp_imm_shift
li x24, 0x73a654db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9bbeb9eb # initialize rs1
slli x24, x12, 20 # perform operation

# Testcase cp_imm_shift
li x29, 0xabb279f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xec8b60ab # initialize rs1
slli x29, x10, 21 # perform operation

# Testcase cp_imm_shift
li x25, 0x6aa0a1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcc0022ab # initialize rs1
slli x25, x12, 22 # perform operation

# Testcase cp_imm_shift
li x30, 0xd7f8e361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2d9b3a88 # initialize rs1
slli x30, x5, 23 # perform operation

# Testcase cp_imm_shift
li x5, 0xe9ad99a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x655a10a5 # initialize rs1
slli x5, x21, 24 # perform operation

# Testcase cp_imm_shift
li x30, 0x18458742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd380f454 # initialize rs1
slli x30, x25, 25 # perform operation

# Testcase cp_imm_shift
li x3, 0xe60ec462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbbd792bc # initialize rs1
slli x3, x22, 26 # perform operation

# Testcase cp_imm_shift
li x24, 0x588cbc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9e1be470 # initialize rs1
slli x24, x1, 27 # perform operation

# Testcase cp_imm_shift
li x17, 0xea509b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x485d0fd8 # initialize rs1
slli x17, x10, 28 # perform operation

# Testcase cp_imm_shift
li x2, 0xb4c99064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x080d2ffa # initialize rs1
slli x2, x4, 29 # perform operation

# Testcase cp_imm_shift
li x23, 0xc971e3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8084cdb7 # initialize rs1
slli x23, x28, 30 # perform operation

# Testcase cp_imm_shift
li x26, 0x3b4d6d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc9951a99 # initialize rs1
slli x26, x15, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
