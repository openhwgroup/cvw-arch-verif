///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-divu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.059459
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xcc7a3d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3179ab81 # initialize rs1
li x17, 0x397d66ac # initialize rs2
divu x0, x23, x17 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc894370e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x13e349e1 # initialize rs1
li x13, 0xa8c4c33d # initialize rs2
divu x1, x30, x13 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe058364d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89cbb35d # initialize rs1
li x4, 0x46723e38 # initialize rs2
divu x2, x16, x4 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1691e49a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2537aeb1 # initialize rs1
li x7, 0x9ee22e56 # initialize rs2
divu x3, x20, x7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4ed48c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x11db09e2 # initialize rs1
li x22, 0xab16cfb5 # initialize rs2
divu x4, x1, x22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc1e91a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9cdae782 # initialize rs1
li x2, 0x05f1d41e # initialize rs2
divu x5, x29, x2 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc880f4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8adcd6a2 # initialize rs1
li x17, 0x122fcd35 # initialize rs2
divu x6, x16, x17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb516d5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9a2de56d # initialize rs1
li x27, 0x3b7a94cf # initialize rs2
divu x7, x8, x27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xdf38295c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaa55b20e # initialize rs1
li x31, 0x87b197d5 # initialize rs2
divu x8, x26, x31 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf8433675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7870cbad # initialize rs1
li x7, 0x97fc9cbc # initialize rs2
divu x9, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xcfe575b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1023d304 # initialize rs1
li x19, 0x97e1118f # initialize rs2
divu x10, x12, x19 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe1c6c320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x68e148db # initialize rs1
li x7, 0xfe204350 # initialize rs2
divu x11, x25, x7 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc1eeb394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x934dd166 # initialize rs1
li x28, 0xc1e7814a # initialize rs2
divu x12, x11, x28 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3652add3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa23b83e2 # initialize rs1
li x7, 0xa74688e1 # initialize rs2
divu x13, x3, x7 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe4758d20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3af9a25a # initialize rs1
li x9, 0x37783c96 # initialize rs2
divu x14, x2, x9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xfdd30ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6f93f465 # initialize rs1
li x11, 0xd89b44c6 # initialize rs2
divu x15, x4, x11 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf0b08d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2bead2b0 # initialize rs1
li x1, 0xb1de69a9 # initialize rs2
divu x16, x7, x1 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x69067e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x35703a97 # initialize rs1
li x4, 0x329270fe # initialize rs2
divu x17, x21, x4 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0fc1fca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe6db91a9 # initialize rs1
li x25, 0x0c1f9030 # initialize rs2
divu x18, x12, x25 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe83576c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x58b8bae2 # initialize rs1
li x15, 0x615cd588 # initialize rs2
divu x19, x18, x15 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x2791fabc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdcd77ee1 # initialize rs1
li x7, 0xfd6e8002 # initialize rs2
divu x20, x25, x7 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xee81900a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x962e3f2c # initialize rs1
li x26, 0xccb981f9 # initialize rs2
divu x21, x1, x26 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x223ff4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1366a9b0 # initialize rs1
li x3, 0x938e4ba2 # initialize rs2
divu x22, x6, x3 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xc0dfb94e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0f04960e # initialize rs1
li x25, 0x87b93133 # initialize rs2
divu x23, x12, x25 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x06d555ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x86a3d88d # initialize rs1
li x16, 0x344476c6 # initialize rs2
divu x24, x5, x16 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x8c42bb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x26ee4cbc # initialize rs1
li x4, 0xc22cddb8 # initialize rs2
divu x25, x28, x4 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0f12aff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x114fe8fb # initialize rs1
li x9, 0xf6d07ce7 # initialize rs2
divu x26, x17, x9 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x8668b5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9a43216b # initialize rs1
li x1, 0xe31c6e19 # initialize rs2
divu x27, x23, x1 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8df70a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc577be46 # initialize rs1
li x22, 0x35decda9 # initialize rs2
divu x28, x19, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfce3c66c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7614c6c0 # initialize rs1
li x18, 0x49a452a8 # initialize rs2
divu x29, x17, x18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xfa8dcdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x866cc120 # initialize rs1
li x5, 0x90974a12 # initialize rs2
divu x30, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7d56853a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1b1ee7fa # initialize rs1
li x27, 0x17595fd4 # initialize rs2
divu x31, x25, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0x45695022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcde08385 # initialize rs1
li x25, 0x7d38ca68 # initialize rs2
divu x4, x0, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0xc702c150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb2b8e4a3 # initialize rs1
li x13, 0xf27afacc # initialize rs2
divu x4, x1, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0xb6fab6fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x658ddffb # initialize rs1
li x14, 0xbd8c9258 # initialize rs2
divu x1, x2, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x31, 0x2a34a1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfae74091 # initialize rs1
li x27, 0x30870a56 # initialize rs2
divu x31, x3, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0x491a3856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3521b9fe # initialize rs1
li x25, 0xaa522c83 # initialize rs2
divu x12, x4, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x19, 0x089b5b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaa614e75 # initialize rs1
li x30, 0x72b04d9e # initialize rs2
divu x19, x5, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x28, 0xd6c05a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x529b7d3f # initialize rs1
li x26, 0x5bc9cf74 # initialize rs2
divu x28, x6, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0x52bb7a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4383d102 # initialize rs1
li x4, 0xeef8cf94 # initialize rs2
divu x29, x7, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x55ca4fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48124d63 # initialize rs1
li x26, 0x422f64cb # initialize rs2
divu x4, x8, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0xa476cb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x58e3e1da # initialize rs1
li x25, 0xe0ffe1a4 # initialize rs2
divu x4, x9, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x5e15765a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe8b60637 # initialize rs1
li x25, 0x60298655 # initialize rs2
divu x31, x10, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x07dc23b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x18b74758 # initialize rs1
li x10, 0x090da9a9 # initialize rs2
divu x8, x11, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x28, 0x0b05bbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x81c39760 # initialize rs1
li x2, 0x722ef153 # initialize rs2
divu x28, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0x67dcd912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xee9f78df # initialize rs1
li x25, 0xd601af0f # initialize rs2
divu x5, x13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xed2059e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe6fdb9a1 # initialize rs1
li x12, 0x4dac61a0 # initialize rs2
divu x28, x14, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0xaab488a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4c916d82 # initialize rs1
li x18, 0xd7e02cf3 # initialize rs2
divu x27, x15, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0x9db13162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd7824fdf # initialize rs1
li x23, 0xb0f900c3 # initialize rs2
divu x11, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0x10e4720f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8d3a6b08 # initialize rs1
li x27, 0xb3959cb2 # initialize rs2
divu x7, x17, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0xbf292213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa421709d # initialize rs1
li x3, 0x9558fd61 # initialize rs2
divu x16, x18, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0xcad1aff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcf083a41 # initialize rs1
li x8, 0x831d1374 # initialize rs2
divu x1, x19, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x17de576c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x411c88af # initialize rs1
li x25, 0x97e17282 # initialize rs2
divu x21, x20, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0x7a69f016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2eed94c8 # initialize rs1
li x29, 0x851dda1f # initialize rs2
divu x14, x21, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0xe7b7b8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa74c7f41 # initialize rs1
li x8, 0xd4e25d3c # initialize rs2
divu x20, x22, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0x4baa9c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x04c3aef3 # initialize rs1
li x29, 0x4332a20e # initialize rs2
divu x13, x23, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0x4ea28af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9f66e45d # initialize rs1
li x2, 0xc482dbad # initialize rs2
divu x12, x24, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0x3b6f8a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x76387471 # initialize rs1
li x23, 0x25344219 # initialize rs2
divu x3, x25, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0xae7410ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8f110686 # initialize rs1
li x29, 0x1177426b # initialize rs2
divu x5, x26, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0x61374c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x34621ff4 # initialize rs1
li x19, 0xc33a8739 # initialize rs2
divu x1, x27, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x13, 0xebd1df22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf41cf7fa # initialize rs1
li x2, 0x3abd2e66 # initialize rs2
divu x13, x28, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x9, 0x44271233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x421fa0c4 # initialize rs1
li x6, 0x2b9966de # initialize rs2
divu x9, x29, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x4cb18ac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x18fa9921 # initialize rs1
li x27, 0xc1a52012 # initialize rs2
divu x3, x30, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0xeaaccc9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x682ca8c1 # initialize rs1
li x30, 0x7b04a17d # initialize rs2
divu x9, x31, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x4, 0xc12034e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc421e041 # initialize rs1
li x0, 0x493641ac # initialize rs2
divu x4, x17, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x6729ec2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x87853819 # initialize rs1
li x1, 0xe9edc8fe # initialize rs2
divu x21, x24, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0x4de3d3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x76e4fe14 # initialize rs1
li x2, 0xfc57d815 # initialize rs2
divu x9, x21, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0x272ad36a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf715c788 # initialize rs1
li x3, 0xe66f5492 # initialize rs2
divu x31, x2, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x3, 0x6ed53cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x72c96c55 # initialize rs1
li x4, 0x1e3418eb # initialize rs2
divu x3, x14, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x8, 0xf07a55e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x953f40e8 # initialize rs1
li x5, 0xf0a635e0 # initialize rs2
divu x8, x10, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x3, 0x6e5a5e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1f1ae180 # initialize rs1
li x6, 0x2d02226d # initialize rs2
divu x3, x19, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x25, 0x372725ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x477c6d37 # initialize rs1
li x7, 0x4e306b6a # initialize rs2
divu x25, x24, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x8b655c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x830c339d # initialize rs1
li x8, 0x72b6ab65 # initialize rs2
divu x21, x7, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x8a2ed5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x038f8b72 # initialize rs1
li x9, 0xbed15d81 # initialize rs2
divu x3, x31, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x3b1d97df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf04ee375 # initialize rs1
li x10, 0x5d74514d # initialize rs2
divu x2, x27, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xa885f751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf93437f9 # initialize rs1
li x11, 0xafe9ce08 # initialize rs2
divu x21, x19, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x315a2d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfe8f46e3 # initialize rs1
li x12, 0x03a96483 # initialize rs2
divu x10, x27, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0x1dc372b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x879a7980 # initialize rs1
li x13, 0x332d701e # initialize rs2
divu x26, x20, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x53a9741f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb8a42f6a # initialize rs1
li x14, 0x83cc0ece # initialize rs2
divu x2, x18, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x32377f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x32fcd819 # initialize rs1
li x15, 0x2faa0789 # initialize rs2
divu x28, x24, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0xb83dca61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaf73f339 # initialize rs1
li x16, 0x892a713f # initialize rs2
divu x24, x21, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x03db5741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xed294b9c # initialize rs1
li x17, 0x13a91617 # initialize rs2
divu x20, x7, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xf5bf1a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x96359f35 # initialize rs1
li x18, 0x8d569f17 # initialize rs2
divu x17, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x6d625c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x49acce31 # initialize rs1
li x19, 0x17c1b980 # initialize rs2
divu x7, x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0xa9a34200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd80bd7b8 # initialize rs1
li x20, 0x502620fb # initialize rs2
divu x28, x4, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x4d15c75c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x21c72e77 # initialize rs1
li x21, 0x6066569f # initialize rs2
divu x25, x27, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0xa2e2e911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9b367004 # initialize rs1
li x22, 0x54553963 # initialize rs2
divu x20, x21, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x60809a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x711a4e02 # initialize rs1
li x23, 0xe8959390 # initialize rs2
divu x5, x10, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0xed7e10f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbd590974 # initialize rs1
li x24, 0xdf4ea2f6 # initialize rs2
divu x7, x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0x244b2711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x31c6d99d # initialize rs1
li x25, 0x7c679e82 # initialize rs2
divu x22, x4, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x29, 0xd10eb612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc72ccb0b # initialize rs1
li x26, 0xcabc17cf # initialize rs2
divu x29, x22, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x6849ec12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd4053fed # initialize rs1
li x27, 0x158ce530 # initialize rs2
divu x9, x26, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xdfc45ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b3465fd # initialize rs1
li x28, 0xfa148011 # initialize rs2
divu x11, x18, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0x157d1e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6c91ffd3 # initialize rs1
li x29, 0xf6733f3d # initialize rs2
divu x18, x11, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0x1a18a7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x29e23732 # initialize rs1
li x30, 0x2f58d5ff # initialize rs2
divu x21, x20, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x90d44276 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2fd0613d # initialize rs1
li x31, 0x7c6e5c57 # initialize rs2
divu x17, x22, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5be9e4a9)
li x22, 0x94d9f6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x94d9f6c2 # initialize rs1
li x0, 0x8dfaa7ee # initialize rs2
divu x22, x18, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x47ff75c6)
li x25, 0x47ff75c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x47ff75c6 # initialize rs1
li x9, 0x47ff75c6 # initialize rs2
divu x25, x0, x9 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x1f74634d)
li x18, 0x7019a767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1f74634d # initialize rs1
li x28, 0x1f74634d # initialize rs2
divu x18, x30, x28 # perform operation

# Testcase cmp_gpr_hazard raw test
divu x9, x21, x5 # perform first operation
divu x27, x9, x12 # perform second operation

# Testcase cmp_gpr_hazard raw test
divu x3, x21, x4 # perform first operation
divu x18, x15, x3 # perform second operation

# Testcase cmp_gpr_hazard waw test
divu x14, x26, x30 # perform first operation
divu x14, x19, x21 # perform second operation

# Testcase cmp_gpr_hazard waw test
divu x27, x17, x6 # perform first operation
divu x27, x7, x3 # perform second operation

# Testcase cmp_gpr_hazard war test
divu x11, x3, x9 # perform first operation
divu x3, x4, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
divu x12, x20, x19 # perform first operation
divu x19, x17, x13 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x39e22f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x0, 0x62fa7a67 # initialize rs2
divu x28, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x9ee8f07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
divu x18, x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x7de47070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
divu x30, x3, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x49aec3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x0, 0x08199252 # initialize rs2
divu x8, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xedd07720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
divu x5, x27, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x635ef9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x31, 0x00000001 # initialize rs2
divu x25, x23, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x264e43d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x0, 0xc6c19cf0 # initialize rs2
divu x19, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0x5fd77cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
divu x16, x3, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0xff2c458a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
divu x22, x21, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x24, 0x5e3cacf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x0, 0xb47ade0e # initialize rs2
divu x24, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x10, 0x33a0d7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
divu x10, x26, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0xd39743e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
divu x18, x1, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xbc42fa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x0, 0x70e98845 # initialize rs2
divu x13, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0x24caae1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
divu x13, x30, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x5, 0xac91d435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
divu x5, x7, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x10, 0xca819ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x0, 0xa0ec68d1 # initialize rs2
divu x10, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x1e3243bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
divu x5, x20, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x10, 0x90efec28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
divu x10, x14, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0x23030465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x0, 0xc7e0e7c3 # initialize rs2
divu x6, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x28, 0xf3f4c275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
divu x28, x20, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0x189aa927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
divu x6, x17, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x914c4ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x0, 0xbc94ba73 # initialize rs2
divu x11, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0x3058ca7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
divu x28, x25, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x4959ef2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
divu x17, x25, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x6, 0xd3d5b05c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x0, 0x69d037d9 # initialize rs2
divu x6, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0xea971ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
divu x29, x25, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x16, 0xd5e0dd03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
divu x16, x27, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x20, 0x050c6df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x0, 0xd494b541 # initialize rs2
divu x20, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x2ec3e4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
divu x19, x26, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x31, 0xf0d52f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
divu x31, x3, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x59ae441c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x0, 0xc01e8355 # initialize rs2
divu x17, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xe3dc2465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
divu x21, x18, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x1, 0x8aaa73d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
divu x1, x14, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x618f1740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x0, 0xc20848b4 # initialize rs2
divu x29, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x9ad843bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
divu x15, x27, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x12, 0x7da8b792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
divu x12, x19, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x5e5988c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize rs1
li x24, 0xee1d5122 # initialize rs2
divu x31, x10, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x30a93b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x24, 0xd8b0edb5 # initialize rs2
divu x16, x1, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0xc4386ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x25, 0xd5ff6643 # initialize rs2
divu x12, x3, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x26, 0x031f2c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x13, 0x298e9b19 # initialize rs2
divu x26, x3, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x84c96185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x19, 0x34aa9d87 # initialize rs2
divu x24, x21, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x016bce7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x15, 0xb1b9ad7a # initialize rs2
divu x28, x9, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x202b89a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x28, 0x4cf03b94 # initialize rs2
divu x7, x14, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xb05356dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x25, 0x1b86addf # initialize rs2
divu x17, x8, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x32197d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x22, 0x571bbe81 # initialize rs2
divu x25, x21, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x4, 0x728a0332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x15, 0x29c581be # initialize rs2
divu x4, x17, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0x45aa53ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x26, 0xc3e6bcc2 # initialize rs2
divu x31, x27, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0xb53075f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x30, 0x746eb08c # initialize rs2
divu x6, x9, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xd716efe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc1f1847 # initialize rs1
li x8, 0x00000000 # initialize rs2
divu x30, x13, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x6a2af3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa4a56a62 # initialize rs1
li x26, 0x00000001 # initialize rs2
divu x29, x17, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0xfcafb28e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe138a1e7 # initialize rs1
li x4, 0x00000002 # initialize rs2
divu x15, x22, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x3b6855b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe36798d3 # initialize rs1
li x22, 0x80000000 # initialize rs2
divu x13, x7, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0x8f2ff311 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe2b933f4 # initialize rs1
li x28, 0x80000001 # initialize rs2
divu x25, x4, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0x0b16f47c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa5e03bcd # initialize rs1
li x4, 0x7fffffff # initialize rs2
divu x26, x14, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x21, 0xe82d1679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xde5ba8f5 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
divu x21, x31, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0xd0222e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x21cda2ec # initialize rs1
li x25, 0xffffffff # initialize rs2
divu x14, x24, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x6c37c981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd4840648 # initialize rs1
li x15, 0xfffffffe # initialize rs2
divu x18, x25, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x18, 0xed4344e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e5bda84 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
divu x18, x14, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0xd15b2d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80d7f83e # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
divu x21, x2, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0x07fa66c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfbbd644d # initialize rs1
li x11, 0x55555555 # initialize rs2
divu x13, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x04810295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
divu x3, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x38db05b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
divu x15, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0x2683fc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
divu x29, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x13, 0x390e91f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
divu x13, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0xaba201f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
divu x15, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x2c01033b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
divu x12, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0xbc20f179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
divu x3, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x25, 0xcd3d3772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
divu x25, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x4, 0xa534374e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
divu x4, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x20, 0xd9f4e8d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
divu x20, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x28, 0xff9f4996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
divu x28, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0xf0ebd84c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
divu x16, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0xf66fcdde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
divu x11, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x5, 0xaf01db0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
divu x5, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x15, 0x8c9e7a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
divu x15, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x3, 0x2ee01976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x28, 0x80000000 # initialize rs2
divu x3, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x11, 0xeaae5039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
divu x11, x27, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x3, 0x1e0b08b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
divu x3, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0xfaad4eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
divu x12, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x73631df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
divu x16, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x03c6bf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
divu x19, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x24, 0xc86781c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
divu x24, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x27, 0x73b390cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
divu x27, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x27, 0x68edf354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x22, 0x55555555 # initialize rs2
divu x27, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x92f0c0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x9, 0x00000000 # initialize rs2
divu x28, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x63a9befb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
divu x13, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x14, 0x89618e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
divu x14, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x63c9dd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x15, 0x80000000 # initialize rs2
divu x21, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x7, 0x048b21d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
divu x7, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x3cdb28c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
divu x23, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x21, 0x2fc5ef3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
divu x21, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x37b3828a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x3, 0xffffffff # initialize rs2
divu x17, x16, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0xc6e46509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
divu x13, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x23, 0x6027a596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
divu x23, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x10, 0x656e71f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
divu x10, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0xd3d59640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
divu x16, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x2481b4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
divu x14, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x14, 0xb8b261ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
divu x14, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0xb52c1944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
divu x2, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x16, 0x8d8c1a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
divu x16, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x31, 0xd3787b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
divu x31, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x6, 0x65e797ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
divu x6, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x5d8314fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
divu x21, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x18, 0xab33c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
divu x18, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x11, 0xda0f8cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
divu x11, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x27, 0x0d784495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
divu x27, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0xd1eb0521 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
divu x11, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x2, 0xc00792c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
divu x2, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x16, 0x6c839d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x1, 0x00000000 # initialize rs2
divu x16, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0xfa7a4f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
divu x5, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x17, 0x2e1fa40c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
divu x17, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x11, 0x320bef93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
divu x11, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x29, 0xab01ada2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
divu x29, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x30, 0x785f84e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
divu x30, x27, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x22, 0x3c9c1caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
divu x22, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0x40c04664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
divu x22, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0xcc48c877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
divu x12, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x18, 0x8151b9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
divu x18, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x9800f61d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
divu x29, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x21, 0xb267facd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
divu x21, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0xa3366ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
divu x26, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x52083ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
divu x21, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x2, 0x32d6e682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x7, 0x00000002 # initialize rs2
divu x2, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x8, 0x561413b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
divu x8, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x31, 0x41e49d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
divu x31, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x73477be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
divu x22, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0x463474a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x15, 0x7ffffffe # initialize rs2
divu x24, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x17, 0x52bfd54c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
divu x17, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x12, 0x33675374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
divu x12, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x15, 0x1b40f2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
divu x15, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x4, 0x8d7d2b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
divu x4, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x2aaaaae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
divu x18, x10, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x496e3063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
divu x13, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x3, 0x1c3a7e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x25, 0x00000001 # initialize rs2
divu x3, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0xf5f06453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
divu x24, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x24, 0x458251be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
divu x24, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0xb35c9fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
divu x19, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x8, 0xe9629c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
divu x8, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x685066b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
divu x31, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x0af75215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
divu x2, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0xcbaec562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
divu x9, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x17, 0xc74c9801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
divu x17, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x999e2b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
divu x16, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x1b16ff10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
divu x17, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0xc5a3c6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
divu x11, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xc9c40877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
divu x21, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x30, 0x427b4ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
divu x30, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xf1ddfb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
divu x8, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x7, 0x937c9c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
divu x7, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0x9b712750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
divu x2, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0x8eed13f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
divu x28, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x20ea29f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
divu x20, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0x1f81fe11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
divu x5, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x23, 0x0d8a7c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
divu x23, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x15, 0xba7a8ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
divu x15, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0x9cd17135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
divu x27, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0x9727a2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
divu x1, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x1940c026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
divu x7, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0xcff7c494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x2, 0x00000002 # initialize rs2
divu x16, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x29, 0x099409bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
divu x29, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x5, 0x33a78ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
divu x5, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x7, 0x7357ddbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x17, 0x7fffffff # initialize rs2
divu x7, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0x054c37a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
divu x11, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0x1722af53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
divu x21, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0xcabe230c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
divu x12, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x10, 0x2949b961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
divu x10, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x3, 0xd99b35cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
divu x3, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0x68ccaaec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
divu x30, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x29, 0xad684f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x2, 0x00000000 # initialize rs2
divu x29, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x25, 0xd81bf090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x23, 0x00000001 # initialize rs2
divu x25, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x6, 0xcddb7436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x18, 0x00000002 # initialize rs2
divu x6, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x18, 0xd281b9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x4, 0x80000000 # initialize rs2
divu x18, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x2, 0xc6a2b46c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x14, 0x80000001 # initialize rs2
divu x2, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x15, 0x64145fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x9, 0x7fffffff # initialize rs2
divu x15, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x8, 0xb152c9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
divu x8, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x2, 0x2eaaf365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x20, 0xffffffff # initialize rs2
divu x2, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x10, 0x2e4f607f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x11, 0xfffffffe # initialize rs2
divu x10, x31, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x5, 0x118cf567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
divu x5, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x6, 0x6a945bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
divu x6, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x12, 0xd5891cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x24, 0x55555555 # initialize rs2
divu x12, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0x82502ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
divu x18, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x15, 0x2872a34b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x11, 0x00000001 # initialize rs2
divu x15, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x9, 0x90842a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x14, 0x00000002 # initialize rs2
divu x9, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0x7ea80c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x23, 0x80000000 # initialize rs2
divu x31, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xaaaea191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x12, 0x80000001 # initialize rs2
divu x8, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x2, 0x00fa1bee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x15, 0x7fffffff # initialize rs2
divu x2, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0x5072c651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x11, 0x7ffffffe # initialize rs2
divu x3, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x4, 0x01cddb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x7, 0xffffffff # initialize rs2
divu x4, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0x610684bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x9, 0xfffffffe # initialize rs2
divu x15, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x15, 0x492bbcaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
divu x15, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x24, 0x7fd31b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
divu x24, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x13, 0xc725bd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
li x7, 0x55555555 # initialize rs2
divu x13, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0x8ae8616b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
divu x19, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x22, 0x0e20e04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
divu x22, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0xe16055c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x29, 0x00000002 # initialize rs2
divu x24, x22, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x1c1a67b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x16, 0x80000000 # initialize rs2
divu x29, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x31, 0x5e089595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x21, 0x80000001 # initialize rs2
divu x31, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x20, 0x41f3da24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x9, 0x7fffffff # initialize rs2
divu x20, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x9e8585e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
divu x30, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x21, 0xe64c1ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x18, 0xffffffff # initialize rs2
divu x21, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x29, 0xb9eef088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
divu x29, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x12, 0xdb46b40a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
divu x12, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x3536cd08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
divu x11, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0xbec239bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
divu x9, x13, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xda9adc39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xddb7d199 # initialize rs1
li x7, 0xaf6b6995 # initialize rs2
divu x0, x0, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x68539374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdf199452 # initialize rs1
li x5, 0x0195b67c # initialize rs2
divu x1, x1, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfc197e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe12e12f6 # initialize rs1
li x7, 0x35b40756 # initialize rs2
divu x2, x2, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1f841f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x60f21259 # initialize rs1
li x11, 0xb9f36ec9 # initialize rs2
divu x3, x3, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x597e8a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x27869fee # initialize rs1
li x11, 0x918c66dc # initialize rs2
divu x4, x4, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xed34a27d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf3d0eba2 # initialize rs1
li x16, 0xe50719bc # initialize rs2
divu x5, x5, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x3d85514b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa5d6ffab # initialize rs1
li x5, 0x21cad4b1 # initialize rs2
divu x6, x6, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x7a4bdea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x84d34548 # initialize rs1
li x19, 0x0fc4d470 # initialize rs2
divu x7, x7, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x840fca00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xba24b689 # initialize rs1
li x7, 0xe12bf459 # initialize rs2
divu x8, x8, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x99320240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0211b1d8 # initialize rs1
li x9, 0xd82860be # initialize rs2
divu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xcedf3874 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5c3422a3 # initialize rs1
li x27, 0x4fcd9956 # initialize rs2
divu x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2e4d78e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b757d15 # initialize rs1
li x10, 0xe08c398d # initialize rs2
divu x11, x11, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xbe12621d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6793fbc9 # initialize rs1
li x16, 0x8209afd1 # initialize rs2
divu x12, x12, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3b9d3f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x05254670 # initialize rs1
li x13, 0xd2c0f312 # initialize rs2
divu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe1434a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xafbd30ce # initialize rs1
li x1, 0x52672343 # initialize rs2
divu x14, x14, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8607b824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xddbb43e1 # initialize rs1
li x19, 0x41ce7c06 # initialize rs2
divu x15, x15, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xecafd73f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x88c26e98 # initialize rs1
li x18, 0x6be845c5 # initialize rs2
divu x16, x16, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x75ab8081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x51786a7b # initialize rs1
li x28, 0x65e068ac # initialize rs2
divu x17, x17, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8657364a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x31c35884 # initialize rs1
li x19, 0x1eb80df3 # initialize rs2
divu x18, x18, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa938ff1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a018101 # initialize rs1
li x29, 0x6a0bd772 # initialize rs2
divu x19, x19, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf0f2d0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1da44d83 # initialize rs1
li x22, 0xf3071325 # initialize rs2
divu x20, x20, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb142def7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x74a5ebc9 # initialize rs1
li x11, 0x50798809 # initialize rs2
divu x21, x21, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa2bc7d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6338d217 # initialize rs1
li x2, 0x45d2043c # initialize rs2
divu x22, x22, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x69d37845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x399351b1 # initialize rs1
li x22, 0xfc1c5a7d # initialize rs2
divu x23, x23, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd0a30e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd11183a1 # initialize rs1
li x23, 0x7b18f225 # initialize rs2
divu x24, x24, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd01e4a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd392db73 # initialize rs1
li x9, 0x9e9bbcb6 # initialize rs2
divu x25, x25, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x865a1b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfc7bfc00 # initialize rs1
li x24, 0xf4a88219 # initialize rs2
divu x26, x26, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1440f162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4104855d # initialize rs1
li x18, 0x61bbc648 # initialize rs2
divu x27, x27, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1dd68db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xabd888c9 # initialize rs1
li x3, 0x18c95018 # initialize rs2
divu x28, x28, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb3e5d7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x28051b4a # initialize rs1
li x7, 0xc12dd1ce # initialize rs2
divu x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5ef80a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdb8b3803 # initialize rs1
li x4, 0xbbae9206 # initialize rs2
divu x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x67bacac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3ac750f3 # initialize rs1
li x28, 0xb0b1fa47 # initialize rs2
divu x31, x31, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x007e83db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4f9164bf # initialize rs1
li x0, 0x2af7a5bd # initialize rs2
divu x0, x9, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x058bc17d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8cc3b4b2 # initialize rs1
li x1, 0x7bcf24c2 # initialize rs2
divu x1, x6, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x0419a32d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbc0cef15 # initialize rs1
li x2, 0x2926d451 # initialize rs2
divu x2, x28, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xd945a86e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x86fd0c01 # initialize rs1
li x3, 0x2e4b9de1 # initialize rs2
divu x3, x30, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xbde91c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7978f0ea # initialize rs1
li x4, 0x0822579f # initialize rs2
divu x4, x21, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xc575bc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf8b96b48 # initialize rs1
li x5, 0x1fa665bf # initialize rs2
divu x5, x13, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x7eb41eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36c0e231 # initialize rs1
li x6, 0x914a32c1 # initialize rs2
divu x6, x14, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xba291230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf0179c8e # initialize rs1
li x7, 0xc26c8b4f # initialize rs2
divu x7, x26, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd065bb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfd77294f # initialize rs1
li x8, 0x3b201fcc # initialize rs2
divu x8, x15, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x8e73178d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaada9860 # initialize rs1
li x9, 0x6b36407e # initialize rs2
divu x9, x29, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x680cb57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x08cc9398 # initialize rs1
li x10, 0xc9562134 # initialize rs2
divu x10, x1, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x50de9386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfd5d6e77 # initialize rs1
li x11, 0x68592399 # initialize rs2
divu x11, x26, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x63642633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9fde791d # initialize rs1
li x12, 0x7a7abbcb # initialize rs2
divu x12, x28, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xbbcb5809 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xae1bfea1 # initialize rs1
li x13, 0xec04dfcd # initialize rs2
divu x13, x5, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x1f71b121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd1189433 # initialize rs1
li x14, 0xe6946b2a # initialize rs2
divu x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xe9bbe28c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7d10e378 # initialize rs1
li x15, 0x6b8b2368 # initialize rs2
divu x15, x25, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x1e3a27e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x66c44c49 # initialize rs1
li x16, 0x0cf4f50b # initialize rs2
divu x16, x26, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x24adc2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8f7a6683 # initialize rs1
li x17, 0xd341c63e # initialize rs2
divu x17, x26, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xc8a35142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2579a53a # initialize rs1
li x18, 0x6dcb91b9 # initialize rs2
divu x18, x21, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x42a64253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x70cd6f75 # initialize rs1
li x19, 0xd3857f0f # initialize rs2
divu x19, x21, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x5f298a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a30189a # initialize rs1
li x20, 0x121619b9 # initialize rs2
divu x20, x1, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x1f010999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5883ce60 # initialize rs1
li x21, 0xb4fbd9f4 # initialize rs2
divu x21, x22, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xcab5c1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9b2395f2 # initialize rs1
li x22, 0xbd5a9648 # initialize rs2
divu x22, x3, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x9955a4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa5e732b3 # initialize rs1
li x23, 0x37c5c3fd # initialize rs2
divu x23, x9, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x495387de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcf678d0e # initialize rs1
li x24, 0x580b4dd4 # initialize rs2
divu x24, x2, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xc1993e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa8057f14 # initialize rs1
li x25, 0x658a953b # initialize rs2
divu x25, x21, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xe555219d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4cc25c9e # initialize rs1
li x26, 0x914a4312 # initialize rs2
divu x26, x13, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x85659c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbebebcd1 # initialize rs1
li x27, 0x1da4a4df # initialize rs2
divu x27, x10, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x930befdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa86d8d1c # initialize rs1
li x28, 0x0e323cfb # initialize rs2
divu x28, x2, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa3958a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2a036a03 # initialize rs1
li x29, 0x6208e80c # initialize rs2
divu x29, x21, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xd5c08d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x38cadb70 # initialize rs1
li x30, 0x475a2b34 # initialize rs2
divu x30, x12, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4c4c0562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1a806d83 # initialize rs1
li x31, 0xc74c47ce # initialize rs2
divu x31, x4, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x13ed1f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x48cc9c03 # initialize rs1
li x0, 0x2afa8606 # initialize rs2
divu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x1d86dbfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcbadbf7b # initialize rs1
li x1, 0x88adc930 # initialize rs2
divu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7b0a38f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa34e5067 # initialize rs1
li x2, 0x911e9a6a # initialize rs2
divu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf8bb04c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x932bb329 # initialize rs1
li x3, 0x3d23ca8f # initialize rs2
divu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xdf111dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdb944b07 # initialize rs1
li x4, 0xc731d98d # initialize rs2
divu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x2b29a8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfbfdef98 # initialize rs1
li x5, 0x1004930f # initialize rs2
divu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x05450dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe9ca99f7 # initialize rs1
li x6, 0xe2c72f73 # initialize rs2
divu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x16808d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x63817658 # initialize rs1
li x7, 0xb168236a # initialize rs2
divu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x9f049eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3341e37 # initialize rs1
li x8, 0xdc088b5e # initialize rs2
divu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x321e27fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7dba5dc6 # initialize rs1
li x9, 0x998275fc # initialize rs2
divu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x13ce2208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0f2401c5 # initialize rs1
li x10, 0x3c029a7d # initialize rs2
divu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x26cf4b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x07179753 # initialize rs1
li x11, 0x1e57da0c # initialize rs2
divu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa3a17a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe517984a # initialize rs1
li x12, 0x19ade277 # initialize rs2
divu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7acd43cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe38145fa # initialize rs1
li x13, 0xd543cc81 # initialize rs2
divu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x9c44cd19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6006a252 # initialize rs1
li x14, 0xe3a38f86 # initialize rs2
divu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6ecf47cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x604f7908 # initialize rs1
li x15, 0x7f787495 # initialize rs2
divu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x08d509e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x809f45c3 # initialize rs1
li x16, 0x497e959a # initialize rs2
divu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xca1d1719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3d2b4098 # initialize rs1
li x17, 0x37bd49b2 # initialize rs2
divu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x23077437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfeb0b48e # initialize rs1
li x18, 0xadafc60f # initialize rs2
divu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x450604be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb61df9b0 # initialize rs1
li x19, 0x64ebd6e3 # initialize rs2
divu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x78b67ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7cd07a5d # initialize rs1
li x20, 0x91d53421 # initialize rs2
divu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3742c10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x537f7d3c # initialize rs1
li x21, 0xe5586f5b # initialize rs2
divu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x324634e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x187b6391 # initialize rs1
li x22, 0x3d7e3935 # initialize rs2
divu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe3d87781 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x39f5668a # initialize rs1
li x23, 0x6fcbf800 # initialize rs2
divu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7030fa9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcdc162d7 # initialize rs1
li x24, 0xe6f511b6 # initialize rs2
divu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xeb584dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xed51d467 # initialize rs1
li x25, 0x518171ff # initialize rs2
divu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x9db17055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9cf07cf2 # initialize rs1
li x26, 0x5f0d7f65 # initialize rs2
divu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x70016ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x98c79e6c # initialize rs1
li x27, 0x4d0a0c17 # initialize rs2
divu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x63cdae4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x529e3886 # initialize rs1
li x28, 0xfef33cd5 # initialize rs2
divu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x72fbb0f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc4d5141a # initialize rs1
li x29, 0xd76f2645 # initialize rs2
divu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x167660f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x35b0449c # initialize rs1
li x30, 0xfb51c4f9 # initialize rs2
divu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3a989f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x331fbda0 # initialize rs1
li x31, 0x1fb232e0 # initialize rs2
divu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x18, 0x4ba37be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x31f21377 # initialize rs1
li x0, 0xef02e74d # initialize rs2
divu x18, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x6, 0x9bff1da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xff66b746 # initialize rs1
li x1, 0xe77474a4 # initialize rs2
divu x6, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x7, 0x42362ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2e1d309f # initialize rs1
li x2, 0xf39c3f51 # initialize rs2
divu x7, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x14, 0xbf9d2116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x13e9b635 # initialize rs1
li x3, 0xd40081ea # initialize rs2
divu x14, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x6, 0x5174b648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x103f744c # initialize rs1
li x4, 0x1beb2da9 # initialize rs2
divu x6, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x17, 0x22832a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5ddba3a2 # initialize rs1
li x5, 0xd9d2d861 # initialize rs2
divu x17, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x10, 0xdc6da87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf2ddd738 # initialize rs1
li x6, 0xf218f580 # initialize rs2
divu x10, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x31, 0x7cb456b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x22d99db4 # initialize rs1
li x7, 0x6f70aca1 # initialize rs2
divu x31, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x1, 0x6fddb596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa9e29cc5 # initialize rs1
li x8, 0x60990a24 # initialize rs2
divu x1, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x18, 0x6abd660e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x35be78ad # initialize rs1
li x9, 0x59c08c9e # initialize rs2
divu x18, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x31, 0x68c653c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcdfad79b # initialize rs1
li x10, 0x2f92e002 # initialize rs2
divu x31, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x23, 0x85851dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9d0dfff1 # initialize rs1
li x11, 0x7fea5d98 # initialize rs2
divu x23, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x22, 0x8b02077d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd88a0eb3 # initialize rs1
li x12, 0xcaefd72b # initialize rs2
divu x22, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x20, 0x88e26498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x235bf788 # initialize rs1
li x13, 0xaeb94161 # initialize rs2
divu x20, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x4, 0x70b7de2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb8265758 # initialize rs1
li x14, 0xa5d33681 # initialize rs2
divu x4, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x30, 0x6036befd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5cec94ba # initialize rs1
li x15, 0x2e1e1614 # initialize rs2
divu x30, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x6, 0x488bb9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaf8a41d # initialize rs1
li x16, 0x4ad4a73a # initialize rs2
divu x6, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x9, 0xc958298e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1a1aa9b6 # initialize rs1
li x17, 0x350f10e6 # initialize rs2
divu x9, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x23, 0xfdab1768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc5c4a723 # initialize rs1
li x18, 0xa8d64f47 # initialize rs2
divu x23, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x11, 0xc02063de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x73630549 # initialize rs1
li x19, 0x8eebd807 # initialize rs2
divu x11, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x6, 0x4c1d160d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb06f75f1 # initialize rs1
li x20, 0xb616ffca # initialize rs2
divu x6, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x7, 0xb5f4b976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc1e3491d # initialize rs1
li x21, 0xfa2ffb72 # initialize rs2
divu x7, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x8, 0x7067121e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf5dd654b # initialize rs1
li x22, 0xd5a1dd41 # initialize rs2
divu x8, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x11, 0xebcb3a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcdb2cbc9 # initialize rs1
li x23, 0xacb399ef # initialize rs2
divu x11, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x17, 0xd3bd450c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfa954307 # initialize rs1
li x24, 0x163cb85a # initialize rs2
divu x17, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x16, 0xeac4220f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a455652 # initialize rs1
li x25, 0x3ae2041d # initialize rs2
divu x16, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x1, 0x86e0b62c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc2f86523 # initialize rs1
li x26, 0xa936da8b # initialize rs2
divu x1, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x30, 0x75259105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0d6049e6 # initialize rs1
li x27, 0xf6c71933 # initialize rs2
divu x30, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x20, 0x8fcaa4b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x83c22e9c # initialize rs1
li x28, 0x27973813 # initialize rs2
divu x20, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0xf8b7cc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcdf94efe # initialize rs1
li x29, 0xf2915cda # initialize rs2
divu x16, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x30b76a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb1af432b # initialize rs1
li x30, 0x537c43f1 # initialize rs2
divu x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x23, 0x2ce3cdcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4a8cb10a # initialize rs1
li x31, 0x706901b8 # initialize rs2
divu x23, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x5d3d72b8)
li x17, 0x5092b42d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5d3d72b8 # initialize rs1
li x16, 0xe45fc326 # initialize rs2
divu x17, x18, x16 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1e68016c)
li x13, 0x046e8b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe197fe94 # initialize rs1
li x28, 0x652982f9 # initialize rs2
divu x13, x2, x28 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x455a3aa)
li x17, 0x90b0aeb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb06a7ed1 # initialize rs1
li x19, 0x0455a3aa # initialize rs2
divu x17, x3, x19 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x31d8eb39)
li x17, 0x1e9b9226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00e9f10d # initialize rs1
li x21, 0xce2714c7 # initialize rs2
divu x17, x29, x21 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
