///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-slliw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.494250
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x9a2cb897870d27e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcfb3d68c62647e4c # initialize rs1
slliw x0, x11, 5 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc6d0ec7028c6b070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x43d15a30d933cb41 # initialize rs1
slliw x1, x31, 16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5bca6634ca6d6bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x32fd0261434e383a # initialize rs1
slliw x2, x5, 8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x27e93c5dd720e005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0cf19af10992dfb6 # initialize rs1
slliw x3, x1, 24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x5cc353893986b0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xced26000f63d1e67 # initialize rs1
slliw x4, x17, 13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xef8440a685bdefc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x83d862f055225b37 # initialize rs1
slliw x5, x27, 22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x53c8e901b08b559c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9a429ab904622e2e # initialize rs1
slliw x6, x27, 1 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x27f5747c69b5fd4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0b394690cdc12d15 # initialize rs1
slliw x7, x29, 25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x97dbaa76d309e2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf88f9ec19d2979f7 # initialize rs1
slliw x8, x16, 26 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x927608eb5e6eb394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5b6c0c72df016930 # initialize rs1
slliw x9, x21, 8 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc415fba56e42da2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf0bb1559252149d1 # initialize rs1
slliw x10, x29, 19 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x973364b80002b40c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4725c6df2a05faac # initialize rs1
slliw x11, x27, 12 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaa5c468c24992aec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x304a8d7c78b5b748 # initialize rs1
slliw x12, x19, 22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x28ec1848c54488d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb1f51cdbb755036e # initialize rs1
slliw x13, x17, 14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4b52643d204bb431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x290b2380bf767548 # initialize rs1
slliw x14, x25, 22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xae6c83313ce954b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xafc76c4f61588a54 # initialize rs1
slliw x15, x20, 30 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x35b0d43bdab2e17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3897ea91733d9881 # initialize rs1
slliw x16, x3, 12 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x8a55edead4665be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdcc0a9793c5ed36c # initialize rs1
slliw x17, x27, 3 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x95adbdf46d0f63cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd911baf47ee83d05 # initialize rs1
slliw x18, x26, 17 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd6e36cd395b54d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x48740c2457c6556e # initialize rs1
slliw x19, x11, 3 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe2cca85f6e0ba8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2951e86836bbeac8 # initialize rs1
slliw x20, x2, 7 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcebb9b4fe78fcd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4b1e06467f1cc752 # initialize rs1
slliw x21, x10, 27 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8a9ac7e4a43b6f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x39937138540971be # initialize rs1
slliw x22, x29, 10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2713cd7495acd0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3352052638536cbf # initialize rs1
slliw x23, x4, 7 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe92db05716576417 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa65094da12e70791 # initialize rs1
slliw x24, x14, 23 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1151c246543a4757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9a796b3f8e65d042 # initialize rs1
slliw x25, x26, 8 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xcd68a765ff5fe1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbfd4273f6886d7e4 # initialize rs1
slliw x26, x25, 7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa3e35466b07adab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa416eed8a9e66054 # initialize rs1
slliw x27, x29, 30 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x40cc18e3742bcb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe4d55c1d7108ffe7 # initialize rs1
slliw x28, x18, 29 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1f1d890670688ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5c088550f22ffab5 # initialize rs1
slliw x29, x22, 5 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdc4efbfe702f408b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7edf2f1381dc6b3b # initialize rs1
slliw x30, x15, 9 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xca49f274360c2ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6a5724a639a33b69 # initialize rs1
slliw x31, x29, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x15, 0x0e2c4372e1858276 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2f9a326ac68aef53 # initialize rs1
slliw x15, x0, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x21, 0xd5b216a17df325ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x39be126db1188c3e # initialize rs1
slliw x21, x1, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x14, 0x9bcd62b845b27662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x85032c25d2b5b8b9 # initialize rs1
slliw x14, x2, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x9bd5a8a448c1ae5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x74b5757005fcde6b # initialize rs1
slliw x9, x3, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0xab7fc9933ce6413e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe176302719146e20 # initialize rs1
slliw x8, x4, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0xebff071750d39952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6a46c96c8e1da222 # initialize rs1
slliw x30, x5, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0x7ff1ca7a31ab6ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9ad223d0c1aab015 # initialize rs1
slliw x15, x6, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0x874da89d1d97d6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6e6a0d1b76a7741c # initialize rs1
slliw x25, x7, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xbafc4e9294629df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x61e9275ac61fd327 # initialize rs1
slliw x13, x8, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0x9cec1a28d212c15d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x43e2695d71cd58e8 # initialize rs1
slliw x18, x9, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x244157841f037fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8bf9f12f6b2cf1a9 # initialize rs1
slliw x23, x10, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xda5efac8b3734671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x67a31de5fcfd6ab3 # initialize rs1
slliw x16, x11, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xf9efd0e81b4cded3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc8e2acf3272103b0 # initialize rs1
slliw x10, x12, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xbee290062b4a1fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdf6aeddd86edd9e6 # initialize rs1
slliw x15, x13, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0x4543a571a8b0d3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x87397732bd90db61 # initialize rs1
slliw x26, x14, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x94bc85a48b84cb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x53cd417ef1dcb8f7 # initialize rs1
slliw x18, x15, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0xee2e9baa9e6fdd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc75f8a2a612b850c # initialize rs1
slliw x31, x16, 15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x7cf4080bc9b2d10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xae0db8ce4e1548c9 # initialize rs1
slliw x2, x17, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x27, 0xcc559abca7e6b4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0a20d73e034758bf # initialize rs1
slliw x27, x18, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0xa3719e3a11c997eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0e5735bca1131169 # initialize rs1
slliw x29, x19, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0x7cdaea0636922adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7c0f358b38559e31 # initialize rs1
slliw x8, x20, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0x655895d31018c471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1e48966f85acdd06 # initialize rs1
slliw x14, x21, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x30, 0xf7638dcbceb456ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xeb96501b5d25b05e # initialize rs1
slliw x30, x22, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0x2056b21c18c63625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5799116026a15064 # initialize rs1
slliw x15, x23, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0xc76d609d05dc6628 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x92977adc016bb208 # initialize rs1
slliw x3, x24, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x9fb9d6369d921a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfc2293cf9993ab04 # initialize rs1
slliw x7, x25, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0xda50475077473281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x43da733df4cfccc6 # initialize rs1
slliw x22, x26, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x178f6aa09f63c8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7dd7e929f822ac33 # initialize rs1
slliw x5, x27, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0x8ca177e8440d00f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x527f761db5ad56a0 # initialize rs1
slliw x27, x28, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0x86935fc2f7d6ce83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7963f2fcc5348910 # initialize rs1
slliw x11, x29, 18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0xcfc5132ce720b4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5e45e3af0fd0038a # initialize rs1
slliw x31, x30, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0x5e4948aa527a466e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5a96af99e285ab66 # initialize rs1
slliw x8, x31, 15 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa4a1edde1f148c7e)
li x14, 0x2f6d94a0c8df84dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2f6d94a0c8df84dd # initialize rs1
slliw x14, x30, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x1e1c95c87e0bcb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
slliw x28, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x0a18fa52953f60e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
slliw x26, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0xe6aaf4f89649c422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
slliw x29, x30, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0xa1c6353a9b9da91b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
slliw x14, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0xe216fd01a9a5d0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
slliw x4, x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x09296c6e588ed1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
slliw x9, x20, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x9c0efa2166c37e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
slliw x28, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x5a4326d3457eda9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
slliw x21, x25, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x1b905d058ad2d624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
slliw x13, x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0x37031f1bec671024 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000000 # initialize rs1
slliw x7, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x20, 0x7be1f18459aa6c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000080000000 # initialize rs1
slliw x20, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x30, 0xbfadf47b63b195df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
slliw x30, x17, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x00cc154b5bb7a30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000080000001 # initialize rs1
slliw x1, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x9, 0x9c61a394c3260654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000080000001 # initialize rs1
slliw x9, x6, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x24, 0xc60dfcfb114ce4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
slliw x24, x17, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x7484746fd7ae22ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007fffffff # initialize rs1
slliw x5, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0xe5aee8d831fd1585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs1
slliw x12, x4, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0x77fda380b352ab6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
slliw x12, x15, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0x2e582fe27c3ba1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000007ffffffe # initialize rs1
slliw x6, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0xd7bc6da5c1e018a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000007ffffffe # initialize rs1
slliw x26, x5, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0x3eddf63320d73d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
slliw x16, x8, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0xa96b19f710042dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
slliw x29, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0x920af399dc9e7706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
slliw x4, x19, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xdc92cc6fc5ddf632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
slliw x28, x22, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x0aa34e4ae8e2f785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
slliw x29, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x4d34bd4d62a2e196 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
slliw x2, x6, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x81280014583c7a71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
slliw x19, x26, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0xd6c8f6eaa6e65bee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000aaaaaaaa # initialize rs1
slliw x8, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x25, 0xf426433d6dd361f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000aaaaaaaa # initialize rs1
slliw x25, x14, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0x859ba4acdbb267ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
slliw x15, x13, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0xfdf1dbec697ae147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000055555555 # initialize rs1
slliw x19, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x720373f5f674b0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000055555555 # initialize rs1
slliw x15, x18, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x30, 0x66fb51263a2318c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
slliw x30, x24, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x1, 0x485a32863fcf0c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000063ae86f7 # initialize rs1
slliw x1, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0x210d74e93a72afc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000063ae86f7 # initialize rs1
slliw x23, x8, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x3, 0x9a9416ba308ce0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
slliw x3, x6, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x17, 0xeca1a7a89cbd66c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000e3ae86f7 # initialize rs1
slliw x17, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x31, 0xc9dc36f8e1ded748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000e3ae86f7 # initialize rs1
slliw x31, x5, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x29, 0xdbf4a34250073300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
slliw x29, x17, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x4, 0x30dd764042431eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
slliw x4, x5, 0 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x6f1d9960cd412fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
slliw x6, x24, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0ffe677f5fbec1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
slliw x15, x3, 15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x0123b7aa74938211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
slliw x22, x31, 3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0xedab1437f51c4d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
slliw x30, x13, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0xf6ff97bd5c7861b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
slliw x19, x12, 4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x4, 0xa3b7efd16085b057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
slliw x4, x18, 4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x2, 0xdd98eb18719af501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
slliw x2, x6, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0x8f69c4dfa679c757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
slliw x18, x1, 9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x1, 0x081fc1018073ab95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slliw x1, x27, 23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x1466fb0e21b4694e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slliw x3, x27, 20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0xc74f48550d60ef90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
slliw x1, x19, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x34f376ad02e14ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
slliw x12, x14, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x81a2595377bb6f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
slliw x9, x30, 0 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x210fe69f4b82e562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
slliw x20, x7, 0 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x9429d619efa76252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
slliw x28, x8, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb1a0d9b01bda6d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x57767520923c2f32 # initialize rs1
slliw x0, x0, 23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x586848a00885f40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0c06879e012860c9 # initialize rs1
slliw x1, x1, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3bcfe6344374dca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdd1094c6e9358158 # initialize rs1
slliw x2, x2, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x49aae693083dbd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x343c3caa049366d6 # initialize rs1
slliw x3, x3, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe9e3c953f0fb43b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x712731dcfbd87e26 # initialize rs1
slliw x4, x4, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xda8167bedb83a957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6631075d81167c90 # initialize rs1
slliw x5, x5, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x15c1210c83a1d3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x31fbd0c8c7d9b318 # initialize rs1
slliw x6, x6, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xb0112a0f6f302755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x27aef7fb2cc1bf60 # initialize rs1
slliw x7, x7, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xda4438096908926b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe2d105c0eb8508e2 # initialize rs1
slliw x8, x8, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x22c2fb71731222eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x558a1c3df716acf1 # initialize rs1
slliw x9, x9, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xcdcd19246bf4c866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7bfb74c662609542 # initialize rs1
slliw x10, x10, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x75d7caeaf41b1df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0ca5a5e38e9019ba # initialize rs1
slliw x11, x11, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb75aee4ac63aedcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc03928235d219726 # initialize rs1
slliw x12, x12, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x930513557b343ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcb7da1182b3e2f25 # initialize rs1
slliw x13, x13, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x40ebbf1cfedac699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x59439a5a9e589e17 # initialize rs1
slliw x14, x14, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7cfaea7381e9c93c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcd88c795dd1e4893 # initialize rs1
slliw x15, x15, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x226d9499ad92a5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9602a4897507371c # initialize rs1
slliw x16, x16, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc9b753faf12631ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa3cf83fc9f6480f9 # initialize rs1
slliw x17, x17, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xda993a7e9b1cc75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x97bdc6866a2aedc1 # initialize rs1
slliw x18, x18, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc7f2aa1bc535811d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1900823bc9e5d8f0 # initialize rs1
slliw x19, x19, 2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x35e3830974cde0da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x11eee3a0a5f0362f # initialize rs1
slliw x20, x20, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8f497ed1e887d7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6e22fc88ed70c8fa # initialize rs1
slliw x21, x21, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9c110d0b81ac33a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9e3f8cdb9f12f27e # initialize rs1
slliw x22, x22, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x708c1065864b15e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf3bac9f47d6b1260 # initialize rs1
slliw x23, x23, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0ebc0e2a851b9ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00935f61a5f245d3 # initialize rs1
slliw x24, x24, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xdb20dd8709e3dd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x38333c92d7756b70 # initialize rs1
slliw x25, x25, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xd814eb74c7c5dad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9c9ef0a78be71bd0 # initialize rs1
slliw x26, x26, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x43c2007d99fb89c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x345e30ae531a4f41 # initialize rs1
slliw x27, x27, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7760c09ec61cdc4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x49324d4a89849652 # initialize rs1
slliw x28, x28, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf8454b2658c44320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9ab6af910e2940e0 # initialize rs1
slliw x29, x29, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5dbf29eb7d33a99f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3a5e34e7a94ea012 # initialize rs1
slliw x30, x30, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9c5e889ff03e3826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x423c48c0020b2c13 # initialize rs1
slliw x31, x31, 30 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x76d07a1f132600cc)
li x21, 0x8cf5979c68ee6fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x76d07a1f132600cc # initialize rs1
slliw x21, x8, 28 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x35bae9d1f0e78b58)
li x22, 0x359e509a5c77e21c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xca45162e0f1874a8 # initialize rs1
slliw x22, x15, 7 # perform operation

# Testcase cp_imm_shift
li x16, 0xc074edf884d07547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xcc7d27ad50549e8e # initialize rs1
slliw x16, x6, 0 # perform operation

# Testcase cp_imm_shift
li x5, 0xb41f0d335564143b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4688256648b559c7 # initialize rs1
slliw x5, x18, 1 # perform operation

# Testcase cp_imm_shift
li x6, 0x8aa7eeafaa602a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc4cae89e51a882e6 # initialize rs1
slliw x6, x16, 2 # perform operation

# Testcase cp_imm_shift
li x18, 0x0a9938d5bf93c3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf1072196b1548b78 # initialize rs1
slliw x18, x13, 3 # perform operation

# Testcase cp_imm_shift
li x30, 0xc6df9925a1b16739 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x65404aacd717b529 # initialize rs1
slliw x30, x21, 4 # perform operation

# Testcase cp_imm_shift
li x21, 0x7ce15fe4aa150b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2eefe03e81e2e5bc # initialize rs1
slliw x21, x3, 5 # perform operation

# Testcase cp_imm_shift
li x18, 0x413b6d9b3406eb03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa73f8643a2d366c4 # initialize rs1
slliw x18, x20, 6 # perform operation

# Testcase cp_imm_shift
li x13, 0xcba086853faa5d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x038ee244ae82359b # initialize rs1
slliw x13, x26, 7 # perform operation

# Testcase cp_imm_shift
li x25, 0x8e69e60d9034a595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5843cea18fc6ed26 # initialize rs1
slliw x25, x12, 8 # perform operation

# Testcase cp_imm_shift
li x23, 0xd086863ecf244a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc791d253481e53d5 # initialize rs1
slliw x23, x7, 9 # perform operation

# Testcase cp_imm_shift
li x29, 0x7261cbd407ddd0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xadb83c5089a33a0c # initialize rs1
slliw x29, x30, 10 # perform operation

# Testcase cp_imm_shift
li x6, 0x41cffa3c18d594a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x61867ea30018bdcf # initialize rs1
slliw x6, x30, 11 # perform operation

# Testcase cp_imm_shift
li x18, 0xd9333e275a76c84a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5914c67b3b8ce0af # initialize rs1
slliw x18, x31, 12 # perform operation

# Testcase cp_imm_shift
li x19, 0xc8325e1e7521c057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc0a04a75a33d9b74 # initialize rs1
slliw x19, x18, 13 # perform operation

# Testcase cp_imm_shift
li x9, 0x7c003605c60c3e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6ac91852e19c4c70 # initialize rs1
slliw x9, x8, 14 # perform operation

# Testcase cp_imm_shift
li x21, 0x20a56261c13b339a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x87e3404a2231dffe # initialize rs1
slliw x21, x17, 15 # perform operation

# Testcase cp_imm_shift
li x15, 0xc9b058d37aa9d9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x51e363644aa41b4d # initialize rs1
slliw x15, x5, 16 # perform operation

# Testcase cp_imm_shift
li x15, 0x239ebacb3fb27985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x136a0ad63f0c5005 # initialize rs1
slliw x15, x12, 17 # perform operation

# Testcase cp_imm_shift
li x6, 0x7a5a2099b8029af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd4d5a3d50f5cca2a # initialize rs1
slliw x6, x3, 18 # perform operation

# Testcase cp_imm_shift
li x21, 0xa57058b64b9865f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x68aabf5aeb431566 # initialize rs1
slliw x21, x19, 19 # perform operation

# Testcase cp_imm_shift
li x14, 0xf6df557398ff37be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7b70f1dab298a576 # initialize rs1
slliw x14, x1, 20 # perform operation

# Testcase cp_imm_shift
li x29, 0x7e6d6bddc331e9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x15c370476bdd4a70 # initialize rs1
slliw x29, x20, 21 # perform operation

# Testcase cp_imm_shift
li x4, 0x2c9b8a46ad772650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x65f7fbd93e843e5b # initialize rs1
slliw x4, x18, 22 # perform operation

# Testcase cp_imm_shift
li x19, 0x017f9a4f8ea0d1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80725c3121885e51 # initialize rs1
slliw x19, x17, 23 # perform operation

# Testcase cp_imm_shift
li x6, 0x7567b285725f52e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3b7763702ad76314 # initialize rs1
slliw x6, x28, 24 # perform operation

# Testcase cp_imm_shift
li x26, 0x976c0348c2ad8906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x46c94779b82790c5 # initialize rs1
slliw x26, x27, 25 # perform operation

# Testcase cp_imm_shift
li x6, 0x431f22aa36d95bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x79b97f867acd61d1 # initialize rs1
slliw x6, x10, 26 # perform operation

# Testcase cp_imm_shift
li x16, 0xe242ab19415e3668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf223b1253380388b # initialize rs1
slliw x16, x18, 27 # perform operation

# Testcase cp_imm_shift
li x27, 0x57365d176df13b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd7cc887f6a45ce8b # initialize rs1
slliw x27, x8, 28 # perform operation

# Testcase cp_imm_shift
li x12, 0x7447e57ad718ccf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x48a64fb4a05d6460 # initialize rs1
slliw x12, x2, 29 # perform operation

# Testcase cp_imm_shift
li x1, 0x9ad9e2c238a835f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7f385059114da6e8 # initialize rs1
slliw x1, x2, 30 # perform operation

# Testcase cp_imm_shift
li x30, 0x7018d570bce44f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x746e68487a0d4f6d # initialize rs1
slliw x30, x19, 31 # perform operation

# Testcase cp_imm_shift
li x29, 0x3cde91a2d1ef4172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6dbc502a81bccf0d # initialize rs1
slliw x29, x31, 0 # perform operation

# Testcase cp_imm_shift
li x15, 0x5c36f170b87c8581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7f6fddcc4c7f39eb # initialize rs1
slliw x15, x7, 1 # perform operation

# Testcase cp_imm_shift
li x17, 0xc92a168c864b1467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x613152621bbcaa0e # initialize rs1
slliw x17, x29, 2 # perform operation

# Testcase cp_imm_shift
li x18, 0x73a62aeb80bea805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x41b8636ee13df13a # initialize rs1
slliw x18, x7, 3 # perform operation

# Testcase cp_imm_shift
li x21, 0xdfd245ccc1c598c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4cd071e72d562e3d # initialize rs1
slliw x21, x22, 4 # perform operation

# Testcase cp_imm_shift
li x7, 0xc7ffd312a49139c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6a6f6ba739d4f474 # initialize rs1
slliw x7, x1, 5 # perform operation

# Testcase cp_imm_shift
li x25, 0x2cb3c70af2d43309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4a863f84d2e757fe # initialize rs1
slliw x25, x20, 6 # perform operation

# Testcase cp_imm_shift
li x24, 0x005166cf3adb8daa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3ddb3b4746f56886 # initialize rs1
slliw x24, x15, 7 # perform operation

# Testcase cp_imm_shift
li x13, 0x9a852b17c3c28df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7f2fa55caa6a2105 # initialize rs1
slliw x13, x28, 8 # perform operation

# Testcase cp_imm_shift
li x30, 0x76e1b666b31c069d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe1a0e0dea1cfafad # initialize rs1
slliw x30, x18, 9 # perform operation

# Testcase cp_imm_shift
li x11, 0x32f0300ff153ce93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x010d6eecb555da0e # initialize rs1
slliw x11, x1, 10 # perform operation

# Testcase cp_imm_shift
li x4, 0xfbe694af98acb1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0263ac53e7c7da6c # initialize rs1
slliw x4, x13, 11 # perform operation

# Testcase cp_imm_shift
li x29, 0xe7bcabcfc577f2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x98c5c4bd21a318d0 # initialize rs1
slliw x29, x13, 12 # perform operation

# Testcase cp_imm_shift
li x20, 0xbcf510669b40362d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7f087e15a70c39a3 # initialize rs1
slliw x20, x30, 13 # perform operation

# Testcase cp_imm_shift
li x25, 0xf559175a6f64ad29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x19d906f161673827 # initialize rs1
slliw x25, x13, 14 # perform operation

# Testcase cp_imm_shift
li x19, 0x76fdd8587393dad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef8de40cac982fce # initialize rs1
slliw x19, x15, 15 # perform operation

# Testcase cp_imm_shift
li x6, 0xbc1708cd026e2b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4b36d360c093a86c # initialize rs1
slliw x6, x13, 16 # perform operation

# Testcase cp_imm_shift
li x14, 0xef33007fbcbb4142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbc54e95444e9b18e # initialize rs1
slliw x14, x25, 17 # perform operation

# Testcase cp_imm_shift
li x23, 0x1513401bd0042ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfe906fa4ef0f2111 # initialize rs1
slliw x23, x22, 18 # perform operation

# Testcase cp_imm_shift
li x24, 0x78f7d85d90605ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb956acff1f2cb1d1 # initialize rs1
slliw x24, x28, 19 # perform operation

# Testcase cp_imm_shift
li x6, 0xd1019fef4088e238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4522e558ed4c51c5 # initialize rs1
slliw x6, x9, 20 # perform operation

# Testcase cp_imm_shift
li x21, 0x622aa24f54d1ef39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1a3f6357fca39613 # initialize rs1
slliw x21, x22, 21 # perform operation

# Testcase cp_imm_shift
li x17, 0x2e9254ad4ca26867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x604d4f6415f0207a # initialize rs1
slliw x17, x11, 22 # perform operation

# Testcase cp_imm_shift
li x31, 0xd9f031cbacf4afd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x279b47352fbead97 # initialize rs1
slliw x31, x14, 23 # perform operation

# Testcase cp_imm_shift
li x14, 0xad825e06066af412 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1349a3fbf5277207 # initialize rs1
slliw x14, x18, 24 # perform operation

# Testcase cp_imm_shift
li x28, 0x28adc867c22ef1b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x305d07bc203a62bd # initialize rs1
slliw x28, x19, 25 # perform operation

# Testcase cp_imm_shift
li x10, 0xd617625f35698005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x23d4eee29f44779d # initialize rs1
slliw x10, x24, 26 # perform operation

# Testcase cp_imm_shift
li x16, 0x365d55632bcbf373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x924855cff3f9fd64 # initialize rs1
slliw x16, x17, 27 # perform operation

# Testcase cp_imm_shift
li x20, 0xf5cf897e66d7198e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc232d33b737d40a0 # initialize rs1
slliw x20, x9, 28 # perform operation

# Testcase cp_imm_shift
li x13, 0x797d148f5dee6f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb0f3e67fb79ed3da # initialize rs1
slliw x13, x22, 29 # perform operation

# Testcase cp_imm_shift
li x1, 0x47020f34133a1506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2bf567ca8d11cc54 # initialize rs1
slliw x1, x4, 30 # perform operation

# Testcase cp_imm_shift
li x9, 0x30ba7b02c5e2c7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x79d03ae8b46e86b2 # initialize rs1
slliw x9, x17, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
