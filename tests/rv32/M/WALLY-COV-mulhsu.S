///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-mulhsu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.070826
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x32308a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa6834473 # initialize rs1
li x19, 0xd77db628 # initialize rs2
mulhsu x0, x12, x19 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc5f23ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02950f64 # initialize rs1
li x31, 0x4a64e6d4 # initialize rs2
mulhsu x1, x26, x31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x06d48bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5317e497 # initialize rs1
li x9, 0xfc6381bb # initialize rs2
mulhsu x2, x20, x9 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd162e6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x614a2635 # initialize rs1
li x7, 0x926ecbcd # initialize rs2
mulhsu x3, x26, x7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xbb178046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa84c79eb # initialize rs1
li x22, 0x65ebe7f0 # initialize rs2
mulhsu x4, x31, x22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3a5034dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf98cfd87 # initialize rs1
li x26, 0xe25c9460 # initialize rs2
mulhsu x5, x5, x26 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe942ba7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x922ffdb0 # initialize rs1
li x7, 0xe9b15352 # initialize rs2
mulhsu x6, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x94db8089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x61e91258 # initialize rs1
li x18, 0x34faf389 # initialize rs2
mulhsu x7, x23, x18 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc6ec816d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb9a6c525 # initialize rs1
li x12, 0xc08c93b1 # initialize rs2
mulhsu x8, x15, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2b765a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x13566e42 # initialize rs1
li x22, 0x35d7da61 # initialize rs2
mulhsu x9, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x74c649e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x22b21d96 # initialize rs1
li x27, 0xc49843b9 # initialize rs2
mulhsu x10, x11, x27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb343418b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7b91fcd1 # initialize rs1
li x21, 0x912747da # initialize rs2
mulhsu x11, x29, x21 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x545cbed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6fd213bb # initialize rs1
li x19, 0xf0c17dcb # initialize rs2
mulhsu x12, x6, x19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0c71c0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x255df912 # initialize rs1
li x27, 0x68451b58 # initialize rs2
mulhsu x13, x25, x27 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xaf12d21f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb540bca7 # initialize rs1
li x30, 0x36e0f485 # initialize rs2
mulhsu x14, x11, x30 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x10cf5ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2e9ef704 # initialize rs1
li x7, 0xec6a2223 # initialize rs2
mulhsu x15, x31, x7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xae4f6791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x99bbc8c6 # initialize rs1
li x15, 0xdf7786c7 # initialize rs2
mulhsu x16, x18, x15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x84f16d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x25323d03 # initialize rs1
li x12, 0x20df411a # initialize rs2
mulhsu x17, x29, x12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x528db116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xeda7c277 # initialize rs1
li x22, 0x2dd31a51 # initialize rs2
mulhsu x18, x20, x22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xea27b261 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6cb4e25a # initialize rs1
li x4, 0xf22940bf # initialize rs2
mulhsu x19, x10, x4 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xee1273c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x10ddaebb # initialize rs1
li x21, 0x6618fdba # initialize rs2
mulhsu x20, x31, x21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd50e2a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1903cbad # initialize rs1
li x25, 0x11fa95d3 # initialize rs2
mulhsu x21, x17, x25 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x449b0e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x54917fa4 # initialize rs1
li x10, 0x4bc362d8 # initialize rs2
mulhsu x22, x19, x10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xc6c6d7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbd937d41 # initialize rs1
li x28, 0xb2eaf3f1 # initialize rs2
mulhsu x23, x31, x28 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9fe0bf0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x54298f94 # initialize rs1
li x11, 0x259d5839 # initialize rs2
mulhsu x24, x8, x11 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa915c060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa231d114 # initialize rs1
li x22, 0x403ea367 # initialize rs2
mulhsu x25, x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x199a762b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4f72e908 # initialize rs1
li x30, 0x3d7b7dbe # initialize rs2
mulhsu x26, x23, x30 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5be55ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x621ce42d # initialize rs1
li x4, 0xc99a7cb9 # initialize rs2
mulhsu x27, x29, x4 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6a77d7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x739a83f5 # initialize rs1
li x18, 0x8803dff4 # initialize rs2
mulhsu x28, x28, x18 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x5a023b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa1444ba5 # initialize rs1
li x28, 0xcbc6615c # initialize rs2
mulhsu x29, x27, x28 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x7740c483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x87c2cae4 # initialize rs1
li x22, 0x38531af9 # initialize rs2
mulhsu x30, x4, x22 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x092c7ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xedc1beb3 # initialize rs1
li x1, 0x11fdb587 # initialize rs2
mulhsu x31, x23, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x9, 0x4ed15d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x08d16a1e # initialize rs1
li x5, 0x2755d47a # initialize rs2
mulhsu x9, x0, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x13121344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdac8ac37 # initialize rs1
li x7, 0x7d08fc48 # initialize rs2
mulhsu x25, x1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x14, 0xbda59219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a761888 # initialize rs1
li x17, 0xc586025d # initialize rs2
mulhsu x14, x2, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xf5143c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2a7bd63d # initialize rs1
li x27, 0xa6f174b0 # initialize rs2
mulhsu x16, x3, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0xe6112684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1803bbd3 # initialize rs1
li x15, 0x538b4212 # initialize rs2
mulhsu x22, x4, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x369c1b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xde34323c # initialize rs1
li x3, 0x6ee21c43 # initialize rs2
mulhsu x14, x5, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x25, 0x7121f904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8933364e # initialize rs1
li x29, 0x4453de07 # initialize rs2
mulhsu x25, x6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0xe2204c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa62c3bb1 # initialize rs1
li x26, 0xf22f8599 # initialize rs2
mulhsu x28, x7, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0x167bdc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8f86f20a # initialize rs1
li x18, 0x9be1a6e9 # initialize rs2
mulhsu x29, x8, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x3a9df6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8460d859 # initialize rs1
li x17, 0x6d2ee651 # initialize rs2
mulhsu x1, x9, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0xe57b29a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xea415ea1 # initialize rs1
li x8, 0x69bf1fa0 # initialize rs2
mulhsu x25, x10, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0xa9840d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x91c6e2af # initialize rs1
li x5, 0xb803a0c5 # initialize rs2
mulhsu x21, x11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x191dd567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe044fd34 # initialize rs1
li x28, 0xe15a988d # initialize rs2
mulhsu x31, x12, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0x6c03ee54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd2e1c62c # initialize rs1
li x10, 0x5d6eaef7 # initialize rs2
mulhsu x4, x13, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0x180ed1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd809ee74 # initialize rs1
li x9, 0x3242e3c0 # initialize rs2
mulhsu x26, x14, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x4, 0xefe21054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x09ce7e81 # initialize rs1
li x8, 0x5d4e7f6b # initialize rs2
mulhsu x4, x15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0x9231bbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd823871b # initialize rs1
li x19, 0x1e0d7d65 # initialize rs2
mulhsu x12, x16, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x7dca486f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0d4f54fa # initialize rs1
li x23, 0xfe59648a # initialize rs2
mulhsu x3, x17, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0x03b9c291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x03e3b92b # initialize rs1
li x10, 0x6e8b11ae # initialize rs2
mulhsu x31, x18, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x23, 0xd07ab8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x372883d8 # initialize rs1
li x25, 0x39602e6f # initialize rs2
mulhsu x23, x19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0x07c5c6fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa4478776 # initialize rs1
li x4, 0x97244685 # initialize rs2
mulhsu x3, x20, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0x89f1feac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf6eb04f7 # initialize rs1
li x30, 0x065ef5ff # initialize rs2
mulhsu x27, x21, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0xae20d889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x92445365 # initialize rs1
li x9, 0x290c35cc # initialize rs2
mulhsu x17, x22, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0x77588188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x750a967d # initialize rs1
li x30, 0x26af813a # initialize rs2
mulhsu x24, x23, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0x97267df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xad091123 # initialize rs1
li x3, 0xadf0afe0 # initialize rs2
mulhsu x23, x24, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0xe1166404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4ad877df # initialize rs1
li x9, 0x3e9b9b1f # initialize rs2
mulhsu x10, x25, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0xdd83f1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xced4215a # initialize rs1
li x27, 0x145fe7e0 # initialize rs2
mulhsu x9, x26, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0xa4ca2669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4c2b1c15 # initialize rs1
li x12, 0x2e2efdf1 # initialize rs2
mulhsu x16, x27, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0xfba1d23d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1f6fb322 # initialize rs1
li x18, 0x719e9cfd # initialize rs2
mulhsu x19, x28, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0xa108ae8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x61d856c8 # initialize rs1
li x17, 0x9673d0f4 # initialize rs2
mulhsu x27, x29, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0xadb728ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x92a76624 # initialize rs1
li x17, 0x79a6f850 # initialize rs2
mulhsu x19, x30, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0x65f41e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x496d87f5 # initialize rs1
li x5, 0x5a11f9b1 # initialize rs2
mulhsu x24, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x11, 0x1e7756ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd754fdaf # initialize rs1
li x0, 0xae69f5f5 # initialize rs2
mulhsu x11, x14, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0xf5085859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2f183866 # initialize rs1
li x1, 0x34ad6cd6 # initialize rs2
mulhsu x18, x3, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x14, 0xae672025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x50e8c11b # initialize rs1
li x2, 0x0aa379fd # initialize rs2
mulhsu x14, x30, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0x591b7b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcf9258d6 # initialize rs1
li x3, 0x734e8286 # initialize rs2
mulhsu x15, x31, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0x8640688d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6032c95f # initialize rs1
li x4, 0xfb68c84d # initialize rs2
mulhsu x29, x23, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x29, 0xc769d83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf2dae0a2 # initialize rs1
li x5, 0x834caab6 # initialize rs2
mulhsu x29, x20, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x23, 0x1a0c7cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8ec2d09e # initialize rs1
li x6, 0x28a14c55 # initialize rs2
mulhsu x23, x29, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x18, 0x60c85445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc12b0036 # initialize rs1
li x7, 0x1804db31 # initialize rs2
mulhsu x18, x16, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0xe2c8f411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4e64c301 # initialize rs1
li x8, 0xb6f5dc30 # initialize rs2
mulhsu x17, x26, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0x06a22a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6b261375 # initialize rs1
li x9, 0x442cd3ba # initialize rs2
mulhsu x28, x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0xa78b77db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd7967148 # initialize rs1
li x10, 0xd592e29c # initialize rs2
mulhsu x17, x2, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x02c76005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffa2108 # initialize rs1
li x11, 0x5eaf20ad # initialize rs2
mulhsu x12, x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x77430db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcf856dfc # initialize rs1
li x12, 0x5a14ba4b # initialize rs2
mulhsu x15, x16, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x63f2d7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9313ee14 # initialize rs1
li x13, 0x5b217130 # initialize rs2
mulhsu x19, x16, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0xe4b44d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4509c13f # initialize rs1
li x14, 0x1c48a977 # initialize rs2
mulhsu x26, x2, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x11dcef54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfafeca40 # initialize rs1
li x15, 0xb0d5b262 # initialize rs2
mulhsu x10, x18, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0xe7ba68c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80c71a1e # initialize rs1
li x16, 0xf5f20c83 # initialize rs2
mulhsu x11, x20, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0x742b9c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4a7262a6 # initialize rs1
li x17, 0x2d94aa07 # initialize rs2
mulhsu x14, x30, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0x466acade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x28aabb12 # initialize rs1
li x18, 0x160f5300 # initialize rs2
mulhsu x21, x12, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0x19d46ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd6d7a739 # initialize rs1
li x19, 0xbce66dd8 # initialize rs2
mulhsu x12, x4, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xca0cd1c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x59396cb7 # initialize rs1
li x20, 0x3d599df3 # initialize rs2
mulhsu x21, x12, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x4, 0xd59617b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1c265e63 # initialize rs1
li x21, 0xe1790800 # initialize rs2
mulhsu x4, x28, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0x1c5256d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7e9a5086 # initialize rs1
li x22, 0xa9ca91a0 # initialize rs2
mulhsu x15, x9, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xb344f0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xca1125ff # initialize rs1
li x23, 0x59918221 # initialize rs2
mulhsu x13, x5, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x304aa1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4b52f4d7 # initialize rs1
li x24, 0x4ba2c145 # initialize rs2
mulhsu x22, x1, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x38da52b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x32e5d36f # initialize rs1
li x25, 0x6ce1174e # initialize rs2
mulhsu x17, x4, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x20d99a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcb4d26d4 # initialize rs1
li x26, 0xda345b66 # initialize rs2
mulhsu x24, x23, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0xc5c22277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2d6670f0 # initialize rs1
li x27, 0xf5ca4e3a # initialize rs2
mulhsu x3, x29, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xf8caad3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9c0a29da # initialize rs1
li x28, 0xcafc9b93 # initialize rs2
mulhsu x19, x24, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x427ea85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2a6b4b0 # initialize rs1
li x29, 0x545e53c7 # initialize rs2
mulhsu x10, x6, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x7819be74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcafb7a69 # initialize rs1
li x30, 0x8be63eb0 # initialize rs2
mulhsu x22, x11, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0x7c774510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8ec32b25 # initialize rs1
li x31, 0xcf11eae1 # initialize rs2
mulhsu x6, x12, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x97c3c9db)
li x8, 0xe6ecef2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe6ecef2c # initialize rs1
li x0, 0x49477702 # initialize rs2
mulhsu x8, x2, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x33399865)
li x29, 0x33399865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x33399865 # initialize rs1
li x25, 0x33399865 # initialize rs2
mulhsu x29, x0, x25 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xd312f59b)
li x17, 0xe35074f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd312f59b # initialize rs1
li x15, 0xd312f59b # initialize rs2
mulhsu x17, x27, x15 # perform operation

# Testcase cmp_gpr_hazard raw test
mulhsu x7, x29, x3 # perform first operation
mulhsu x18, x7, x14 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulhsu x3, x7, x21 # perform first operation
mulhsu x2, x18, x3 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhsu x15, x17, x4 # perform first operation
mulhsu x15, x9, x18 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhsu x25, x29, x1 # perform first operation
mulhsu x25, x27, x6 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhsu x9, x26, x3 # perform first operation
mulhsu x26, x26, x3 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhsu x9, x6, x10 # perform first operation
mulhsu x10, x16, x28 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0xa0b5cca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x7, 0xf8e1096c # initialize rs2
mulhsu x20, x4, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0xce88f6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x10, 0x24dd092f # initialize rs2
mulhsu x13, x26, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x7eee23b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x22, 0x5a68aaed # initialize rs2
mulhsu x13, x16, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0xa9f7ffa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x21, 0x6a15b899 # initialize rs2
mulhsu x11, x26, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0x322397d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x12, 0x1aad870a # initialize rs2
mulhsu x26, x16, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0xdc171a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x29, 0xab13565f # initialize rs2
mulhsu x24, x28, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x351ccdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x6, 0x6114c1d0 # initialize rs2
mulhsu x27, x12, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xbad60263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x10, 0x42f48ae0 # initialize rs2
mulhsu x6, x11, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xb783ee28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x26, 0xfbdaa841 # initialize rs2
mulhsu x2, x25, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x11, 0xd3bc22b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x4, 0x7ff3cc8d # initialize rs2
mulhsu x11, x2, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xecf970a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x7, 0x45e642bf # initialize rs2
mulhsu x17, x21, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x552f65f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x9, 0xbc5be15d # initialize rs2
mulhsu x15, x27, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0x084c365d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb8252d17 # initialize rs1
li x22, 0x00000000 # initialize rs2
mulhsu x24, x1, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x6defa2a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8e2bde28 # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhsu x29, x26, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x28f546e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x511648bd # initialize rs1
li x30, 0x00000002 # initialize rs2
mulhsu x3, x26, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x27, 0x7d0ae702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11a0c19f # initialize rs1
li x28, 0x80000000 # initialize rs2
mulhsu x27, x9, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0xd7b6a0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x91513340 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhsu x9, x27, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x4, 0xabfc5d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x673cd45c # initialize rs1
li x31, 0x7fffffff # initialize rs2
mulhsu x4, x19, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xd51aa473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x92b0bfe8 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
mulhsu x31, x16, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x0d3441e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdd00c260 # initialize rs1
li x12, 0xffffffff # initialize rs2
mulhsu x1, x26, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0xa794f6af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8bdfe86e # initialize rs1
li x24, 0xfffffffe # initialize rs2
mulhsu x25, x12, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x3, 0x95193308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x278c8cad # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
mulhsu x3, x20, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0xfba9fa8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x16dbe4ec # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
mulhsu x27, x24, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x2c6e2f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x01e5098a # initialize rs1
li x13, 0x55555555 # initialize rs2
mulhsu x8, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x29, 0x34310851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
mulhsu x29, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x41be63b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x4, 0x00000001 # initialize rs2
mulhsu x30, x15, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x4fd7cdff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
mulhsu x10, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x17, 0x3183e50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhsu x17, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x24, 0x2a93455b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
mulhsu x24, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x4, 0x7a2b033a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x28, 0x7fffffff # initialize rs2
mulhsu x4, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0xee0aa8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulhsu x3, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x18, 0x3958b39c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
mulhsu x18, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x490f54bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulhsu x11, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x22, 0xa3fcb184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
mulhsu x22, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x12, 0xe336fbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulhsu x12, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x29, 0x7acc8d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
mulhsu x29, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0xc2e7e619 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
mulhsu x20, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x3c70a7b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
mulhsu x31, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x6b583ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhsu x27, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x19, 0xcf1c658e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhsu x19, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x1, 0xcc9e1c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
mulhsu x1, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x21, 0x4b52599b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
mulhsu x21, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0xb99ca005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
mulhsu x12, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x0b35f112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
mulhsu x9, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x03b57944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulhsu x23, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x27, 0x2f77b6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
mulhsu x27, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0xd820a153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mulhsu x14, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x15, 0x5f343065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
mulhsu x15, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x985bc2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
mulhsu x28, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x9376f436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
mulhsu x6, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x4, 0x03dc42d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
mulhsu x4, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x30, 0x328d9e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
mulhsu x30, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x4, 0xa52a3f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
mulhsu x4, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x16, 0xb2350183 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x4, 0x7fffffff # initialize rs2
mulhsu x16, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x16, 0xea6863d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulhsu x16, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x5a371c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
mulhsu x8, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x6cf7ced9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x21, 0xfffffffe # initialize rs2
mulhsu x8, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x11, 0xecbd0be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mulhsu x11, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x8, 0xc975ac57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
mulhsu x8, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x23, 0x08fec074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x22, 0x55555555 # initialize rs2
mulhsu x23, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x17, 0xc95e2ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
mulhsu x17, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x54363b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
mulhsu x10, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x6da48adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
mulhsu x12, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x9fc1a411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhsu x19, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x7acd710c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
mulhsu x9, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x7, 0xb9c2151c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulhsu x7, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x6, 0xfdafbbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mulhsu x6, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x4, 0x884df8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
mulhsu x4, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x22, 0x7be8de9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulhsu x22, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x11, 0x961a9004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
mulhsu x11, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x26, 0x334b7967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulhsu x26, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x18, 0x5948c4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
mulhsu x18, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x18, 0x740e309e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
mulhsu x18, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x22, 0x15f59f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
mulhsu x22, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x29, 0x15a7eac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
mulhsu x29, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x15, 0x0354af09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
mulhsu x15, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x22, 0xa68da4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhsu x22, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x12, 0x011b9c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x25, 0x7fffffff # initialize rs2
mulhsu x12, x20, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x3, 0xd6585cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mulhsu x3, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x4, 0xcb038bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
mulhsu x4, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x9, 0xe3df8e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulhsu x9, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x22, 0xfbaa5885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
mulhsu x22, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x4f9f05ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
mulhsu x16, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x26, 0x3cfef02b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
mulhsu x26, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x18, 0x3f2d797b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
mulhsu x18, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x4, 0xc72d0ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhsu x4, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x17, 0x5f21be04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhsu x17, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x29, 0x475e5222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
mulhsu x29, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x26, 0x8be2911e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
mulhsu x26, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x4, 0xb993c118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
mulhsu x4, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x9, 0xf9b70a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulhsu x9, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x12, 0xba486815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhsu x12, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x1, 0xefc3ffe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x17, 0xfffffffe # initialize rs2
mulhsu x1, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x2, 0xce6dcf8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
mulhsu x2, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x3ab3eb2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
mulhsu x21, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x8, 0x313d3bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
mulhsu x8, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x6, 0xb9c3a165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
mulhsu x6, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x5, 0xcb5f4b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
mulhsu x5, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0xe03777e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhsu x11, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x8, 0x866faa84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x11, 0x80000000 # initialize rs2
mulhsu x8, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0xc73cd81c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x1, 0x80000001 # initialize rs2
mulhsu x29, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x27, 0xb57acfbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x4, 0x7fffffff # initialize rs2
mulhsu x27, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0x32ccda9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
mulhsu x24, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0x8d5aacb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
mulhsu x31, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x27, 0xbc0b50de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
mulhsu x27, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x12, 0x25d0d5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
mulhsu x12, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x20, 0x765a74a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulhsu x20, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x11b592a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
mulhsu x23, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x3d642a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
mulhsu x12, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x13, 0x1a623b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhsu x13, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x29, 0x5ad6c393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
mulhsu x29, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x18, 0x3470d017 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x4, 0x80000000 # initialize rs2
mulhsu x18, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0x1e6eec05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
mulhsu x9, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x27, 0x0115347e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
mulhsu x27, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x27, 0x7f443f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
mulhsu x27, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0xcf48d832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
mulhsu x30, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0x21db2025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulhsu x14, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x12, 0x4b8ed89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
mulhsu x12, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0x5eab17fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
mulhsu x23, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xfdbf153b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
mulhsu x24, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0x77f17e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
mulhsu x8, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xe14e456b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
mulhsu x13, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x890a88d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
mulhsu x1, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0x1a130b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
mulhsu x12, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0x5f3c3992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
mulhsu x3, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x12, 0x4749cee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
mulhsu x12, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x4, 0xc28581d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
mulhsu x4, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0xb6e3df92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
mulhsu x15, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x151d6a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulhsu x29, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x2, 0x8d091824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
mulhsu x2, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x24, 0xcf798fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
mulhsu x24, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x28, 0x2ba06685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
mulhsu x28, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x10, 0x90b962f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x30, 0x00000000 # initialize rs2
mulhsu x10, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x11, 0x478ead09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulhsu x11, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x4, 0x76190e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x14, 0x00000002 # initialize rs2
mulhsu x4, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x28, 0x3d4c817f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x9, 0x80000000 # initialize rs2
mulhsu x28, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x6, 0x785e204d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x19, 0x80000001 # initialize rs2
mulhsu x6, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x14, 0xab4730ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x31, 0x7fffffff # initialize rs2
mulhsu x14, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x24, 0x59504538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
mulhsu x24, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x13, 0x0ee2c72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x11, 0xffffffff # initialize rs2
mulhsu x13, x30, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x3, 0x1ce58390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhsu x3, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x2, 0x60e49041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
mulhsu x2, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x31, 0x05c54709 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mulhsu x31, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x1, 0xf021a9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x22, 0x55555555 # initialize rs2
mulhsu x1, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x23, 0x016f364c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
mulhsu x23, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x17, 0xcb57b635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x15, 0x00000001 # initialize rs2
mulhsu x17, x30, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x29, 0x5f762a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x21, 0x00000002 # initialize rs2
mulhsu x29, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0xb155575c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x13, 0x80000000 # initialize rs2
mulhsu x10, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xd7891726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
li x21, 0x80000001 # initialize rs2
mulhsu x8, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x10, 0xe317c542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x24, 0x7fffffff # initialize rs2
mulhsu x10, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x12, 0x4beec734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x21, 0x7ffffffe # initialize rs2
mulhsu x12, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xbb40e562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x25, 0xffffffff # initialize rs2
mulhsu x5, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xfb92e764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulhsu x22, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x14, 0x70607f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
mulhsu x14, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x21, 0xda84cf95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
mulhsu x21, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xb5fee496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhsu x3, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x26, 0x8c767043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
mulhsu x26, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x31, 0x715de51a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
mulhsu x31, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x30, 0x91ee773b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x2, 0x00000002 # initialize rs2
mulhsu x30, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x23b09209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x13, 0x80000000 # initialize rs2
mulhsu x29, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x13, 0xc27d92e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhsu x13, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x25, 0x95a71fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulhsu x25, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x6, 0x29e290c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
mulhsu x6, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0xf4fd25b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulhsu x30, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x26, 0x684d916a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x25, 0xfffffffe # initialize rs2
mulhsu x26, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x17, 0x5d636402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
mulhsu x17, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0xd8226aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mulhsu x11, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x8, 0xede783f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhsu x8, x28, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xbe6bc5a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x694d7842 # initialize rs1
li x26, 0x2f174e95 # initialize rs2
mulhsu x0, x0, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7b666911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x07856011 # initialize rs1
li x20, 0x8fbb4f7e # initialize rs2
mulhsu x1, x1, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x26a69ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9fea62b9 # initialize rs1
li x7, 0x4db421dc # initialize rs2
mulhsu x2, x2, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc6fba891 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x60346d39 # initialize rs1
li x19, 0x5ea5dd57 # initialize rs2
mulhsu x3, x3, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xedd3129c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf0d80c45 # initialize rs1
li x20, 0x2a2c0a78 # initialize rs2
mulhsu x4, x4, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x244f6bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x755fea42 # initialize rs1
li x24, 0x32f740b9 # initialize rs2
mulhsu x5, x5, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x8756ca48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfac8cdd1 # initialize rs1
li x15, 0x90f455ba # initialize rs2
mulhsu x6, x6, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xe55cea3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x026506d9 # initialize rs1
li x8, 0x6e6152ae # initialize rs2
mulhsu x7, x7, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7a92d11a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6eefe319 # initialize rs1
li x7, 0xc35e9409 # initialize rs2
mulhsu x8, x8, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbf2329a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8122e763 # initialize rs1
li x16, 0x0412a3bf # initialize rs2
mulhsu x9, x9, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb2c9909e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9d6ac4cb # initialize rs1
li x1, 0x66a2c71f # initialize rs2
mulhsu x10, x10, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9d4bcb91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x73e9804f # initialize rs1
li x10, 0xbb0fe98b # initialize rs2
mulhsu x11, x11, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9e4f498f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x24c51c99 # initialize rs1
li x28, 0x452573fe # initialize rs2
mulhsu x12, x12, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1386cb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x963d6318 # initialize rs1
li x21, 0xfdda0142 # initialize rs2
mulhsu x13, x13, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf187eea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x497df696 # initialize rs1
li x6, 0xaa7fce9f # initialize rs2
mulhsu x14, x14, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6cf8661d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x520456ac # initialize rs1
li x4, 0x79d9fbf5 # initialize rs2
mulhsu x15, x15, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x594df8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a6c391b # initialize rs1
li x27, 0xc036d9c9 # initialize rs2
mulhsu x16, x16, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x609886e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x33c865ba # initialize rs1
li x1, 0xe79e5ad8 # initialize rs2
mulhsu x17, x17, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcb9e8431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b7643e8 # initialize rs1
li x10, 0x6c05a526 # initialize rs2
mulhsu x18, x18, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa9048c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa2f58009 # initialize rs1
li x29, 0xc9e3a5fb # initialize rs2
mulhsu x19, x19, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf03cfaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd433b80f # initialize rs1
li x6, 0xe0e897ae # initialize rs2
mulhsu x20, x20, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xea8695c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc4d7764c # initialize rs1
li x9, 0xb8965d3d # initialize rs2
mulhsu x21, x21, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x259730d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x08f04bdd # initialize rs1
li x12, 0xbd2e7873 # initialize rs2
mulhsu x22, x22, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x182553b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7316d798 # initialize rs1
li x19, 0x45a02047 # initialize rs2
mulhsu x23, x23, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2bef64e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf267b3d3 # initialize rs1
li x11, 0x99c6ae50 # initialize rs2
mulhsu x24, x24, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x30ef6875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1525697f # initialize rs1
li x16, 0x0346f1d4 # initialize rs2
mulhsu x25, x25, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x109883e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbe543a74 # initialize rs1
li x10, 0x24a96d3b # initialize rs2
mulhsu x26, x26, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x21d86cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x15f47ee9 # initialize rs1
li x14, 0xa1b1ec6e # initialize rs2
mulhsu x27, x27, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x012dcace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3f3bbffd # initialize rs1
li x22, 0x19b2b298 # initialize rs2
mulhsu x28, x28, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb35863fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x227b057a # initialize rs1
li x18, 0xba5aa197 # initialize rs2
mulhsu x29, x29, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x35218f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5843c64b # initialize rs1
li x21, 0xb63ba0a4 # initialize rs2
mulhsu x30, x30, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x70c9e773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x065dea0e # initialize rs1
li x31, 0xa48c11d6 # initialize rs2
mulhsu x31, x31, x31 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xadb5d64e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa2036c06 # initialize rs1
li x0, 0x3dd26616 # initialize rs2
mulhsu x0, x1, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x1f54f3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6b17a9d7 # initialize rs1
li x1, 0x28fbdd40 # initialize rs2
mulhsu x1, x25, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xe866026d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xefad046b # initialize rs1
li x2, 0x2636993b # initialize rs2
mulhsu x2, x13, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xfe055c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa34eff7a # initialize rs1
li x3, 0x80c2c36b # initialize rs2
mulhsu x3, x18, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x797a4e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x88657bd0 # initialize rs1
li x4, 0x3a6bd1a8 # initialize rs2
mulhsu x4, x14, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x51172824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x389b50bd # initialize rs1
li x5, 0xad426cae # initialize rs2
mulhsu x5, x30, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf499348a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc75fe762 # initialize rs1
li x6, 0x5cfbc5b3 # initialize rs2
mulhsu x6, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xc2ac6d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4f168fa2 # initialize rs1
li x7, 0xb61f3568 # initialize rs2
mulhsu x7, x23, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x96de7b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0c71ea40 # initialize rs1
li x8, 0x36ffb1a2 # initialize rs2
mulhsu x8, x15, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x22b85e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb4309ddc # initialize rs1
li x9, 0x13f0e9c3 # initialize rs2
mulhsu x9, x23, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xe20f576b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x03b16c91 # initialize rs1
li x10, 0x43194266 # initialize rs2
mulhsu x10, x7, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x664774e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3f7ea36d # initialize rs1
li x11, 0xdf9fc6c9 # initialize rs2
mulhsu x11, x22, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x62499ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8f814d6e # initialize rs1
li x12, 0x4545026a # initialize rs2
mulhsu x12, x20, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x9544dab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8ab49f07 # initialize rs1
li x13, 0x2c3a9fc7 # initialize rs2
mulhsu x13, x10, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x5efb18c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7a5b68c5 # initialize rs1
li x14, 0x3907d86c # initialize rs2
mulhsu x14, x12, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xddeabf10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa9aa8a66 # initialize rs1
li x15, 0x1eff7e25 # initialize rs2
mulhsu x15, x22, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xb49d945d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bb70447 # initialize rs1
li x16, 0x2dc53166 # initialize rs2
mulhsu x16, x29, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xdd2ce61b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe247805d # initialize rs1
li x17, 0xc402d348 # initialize rs2
mulhsu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x803787b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf9c0e95e # initialize rs1
li x18, 0x22a92c64 # initialize rs2
mulhsu x18, x25, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xe6f66ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa8498a29 # initialize rs1
li x19, 0xea77bfed # initialize rs2
mulhsu x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x46955cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5cf2efea # initialize rs1
li x20, 0xa5666723 # initialize rs2
mulhsu x20, x1, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x39ebf95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf92973bd # initialize rs1
li x21, 0xa51faaf8 # initialize rs2
mulhsu x21, x9, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xfc1799f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x07f2ddbf # initialize rs1
li x22, 0x7df4e677 # initialize rs2
mulhsu x22, x31, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xa28eeaea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe7ccfb47 # initialize rs1
li x23, 0x746a3e1f # initialize rs2
mulhsu x23, x27, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x165443d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x403db036 # initialize rs1
li x24, 0xe0b38c86 # initialize rs2
mulhsu x24, x1, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x8938c20b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2a83a454 # initialize rs1
li x25, 0x9f377d73 # initialize rs2
mulhsu x25, x1, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x405dbe13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6e1e0c1b # initialize rs1
li x26, 0x6708f586 # initialize rs2
mulhsu x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x687e1480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8713153f # initialize rs1
li x27, 0x86d4aefd # initialize rs2
mulhsu x27, x3, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xbc21a7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe4dd667c # initialize rs1
li x28, 0x08f37e85 # initialize rs2
mulhsu x28, x29, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x998abd85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x67709007 # initialize rs1
li x29, 0xea42796c # initialize rs2
mulhsu x29, x16, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x306d5c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x10ebf9e4 # initialize rs1
li x30, 0xbf7623a0 # initialize rs2
mulhsu x30, x4, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x9c11defe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x06e1df81 # initialize rs1
li x31, 0x9251e5c3 # initialize rs2
mulhsu x31, x31, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x9f171d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x99a33f08 # initialize rs1
li x0, 0xa7139ecf # initialize rs2
mulhsu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x199d5083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x44b0ce81 # initialize rs1
li x1, 0x282e4260 # initialize rs2
mulhsu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8d9a9d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6a4e01aa # initialize rs1
li x2, 0x18dbface # initialize rs2
mulhsu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x31ad1805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x86c9869c # initialize rs1
li x3, 0xc0a9d304 # initialize rs2
mulhsu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xa3598738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa91872eb # initialize rs1
li x4, 0xe0db5eb4 # initialize rs2
mulhsu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x2ae0bcae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x46b00136 # initialize rs1
li x5, 0x90a7d798 # initialize rs2
mulhsu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x96cda3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x170ea0ae # initialize rs1
li x6, 0xe2de0a6a # initialize rs2
mulhsu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x19aac4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57cdb268 # initialize rs1
li x7, 0x30a6bb3b # initialize rs2
mulhsu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x253078ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8fa68271 # initialize rs1
li x8, 0xb82ffd2b # initialize rs2
mulhsu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1a97e489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeac329cb # initialize rs1
li x9, 0xcc928325 # initialize rs2
mulhsu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5fac8878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xce97607b # initialize rs1
li x10, 0x614e9477 # initialize rs2
mulhsu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa5f45205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a40fdff # initialize rs1
li x11, 0xef02cc09 # initialize rs2
mulhsu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x377043a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf2053ab1 # initialize rs1
li x12, 0xe8e34f15 # initialize rs2
mulhsu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x30d6f7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x993dfed0 # initialize rs1
li x13, 0x3144922b # initialize rs2
mulhsu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd409b2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x864d96e2 # initialize rs1
li x14, 0xee99f471 # initialize rs2
mulhsu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1727b061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x985b4372 # initialize rs1
li x15, 0xe570a950 # initialize rs2
mulhsu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2f32501c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7df46683 # initialize rs1
li x16, 0xb46595d2 # initialize rs2
mulhsu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1406e964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1b4b0689 # initialize rs1
li x17, 0xa42e1959 # initialize rs2
mulhsu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x82c3dc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf1103cbe # initialize rs1
li x18, 0xdf67a7d5 # initialize rs2
mulhsu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdca42657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6675ca62 # initialize rs1
li x19, 0x5276de66 # initialize rs2
mulhsu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9d75eeef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfc758371 # initialize rs1
li x20, 0x61721734 # initialize rs2
mulhsu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xda5425b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3396c99b # initialize rs1
li x21, 0xb1befab7 # initialize rs2
mulhsu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9d76320e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x720930f4 # initialize rs1
li x22, 0xfb45c145 # initialize rs2
mulhsu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd36a157d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x18c28fae # initialize rs1
li x23, 0xf09cb2f8 # initialize rs2
mulhsu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfbdcf7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc303edcf # initialize rs1
li x24, 0x31b2181d # initialize rs2
mulhsu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb068b114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x98ea2842 # initialize rs1
li x25, 0x54ae4782 # initialize rs2
mulhsu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xee34bd26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x45529e32 # initialize rs1
li x26, 0x654694c4 # initialize rs2
mulhsu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xa3fc1735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6a3370e4 # initialize rs1
li x27, 0x69d37194 # initialize rs2
mulhsu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbd911664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x41df3e8c # initialize rs1
li x28, 0x0f164f91 # initialize rs2
mulhsu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x16fd3116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xed480010 # initialize rs1
li x29, 0xd4e6a6ae # initialize rs2
mulhsu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7986d4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcaa46225 # initialize rs1
li x30, 0x89086fb8 # initialize rs2
mulhsu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd795fd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4075c878 # initialize rs1
li x31, 0xe373cda4 # initialize rs2
mulhsu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x81009d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8441ed50 # initialize rs1
li x0, 0xc4865c09 # initialize rs2
mulhsu x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x25, 0xea930bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x17500538 # initialize rs1
li x1, 0x21aa447f # initialize rs2
mulhsu x25, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0xb7a42e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5353ffff # initialize rs1
li x2, 0x8c1b63f7 # initialize rs2
mulhsu x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x31, 0xe7c61f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x03990cad # initialize rs1
li x3, 0x436bdc37 # initialize rs2
mulhsu x31, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x30, 0x4f90f104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80a0f012 # initialize rs1
li x4, 0x641bf655 # initialize rs2
mulhsu x30, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x21, 0xce6e2413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8700c4fd # initialize rs1
li x5, 0x028e38c1 # initialize rs2
mulhsu x21, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x19, 0xc55db4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8e3e02ad # initialize rs1
li x6, 0x790308d1 # initialize rs2
mulhsu x19, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x3, 0xbe761740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x94447434 # initialize rs1
li x7, 0xf629d601 # initialize rs2
mulhsu x3, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x24, 0x587254c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89a9799f # initialize rs1
li x8, 0xcbc5832a # initialize rs2
mulhsu x24, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x23, 0x35083a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb7400f7d # initialize rs1
li x9, 0xc111e855 # initialize rs2
mulhsu x23, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x11, 0x21c5d0ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8b7c781b # initialize rs1
li x10, 0x19f60c39 # initialize rs2
mulhsu x11, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x12, 0xa6768581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6406ce6c # initialize rs1
li x11, 0x2d78f901 # initialize rs2
mulhsu x12, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf82e09fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xee3d34e9 # initialize rs1
li x12, 0x45a7e830 # initialize rs2
mulhsu x12, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x28, 0x02a43bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc7e3814a # initialize rs1
li x13, 0x74646603 # initialize rs2
mulhsu x28, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x24, 0x0e965697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x98b53af1 # initialize rs1
li x14, 0x1913d590 # initialize rs2
mulhsu x24, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x1, 0x5429242d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdc48bad5 # initialize rs1
li x15, 0xe8e449be # initialize rs2
mulhsu x1, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x18, 0xa43fc66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xeb1c40a1 # initialize rs1
li x16, 0xfc3f1ef6 # initialize rs2
mulhsu x18, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x9, 0x20e1147a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1ed769a7 # initialize rs1
li x17, 0xbe0ebb44 # initialize rs2
mulhsu x9, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x22, 0xad055479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4a6066a4 # initialize rs1
li x18, 0xd3e85f37 # initialize rs2
mulhsu x22, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x2, 0xc502305e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5345d692 # initialize rs1
li x19, 0x2c91787e # initialize rs2
mulhsu x2, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x24, 0x2c4d05ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2e5cf1a9 # initialize rs1
li x20, 0xdf6b3c46 # initialize rs2
mulhsu x24, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x9, 0x9b08275a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x171f8fc7 # initialize rs1
li x21, 0x8ec0c814 # initialize rs2
mulhsu x9, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x11, 0xe8135e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4c5c72ff # initialize rs1
li x22, 0x03709b00 # initialize rs2
mulhsu x11, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x25, 0x7b7a9874 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4fa9ae73 # initialize rs1
li x23, 0xef556a0c # initialize rs2
mulhsu x25, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x20, 0xcd555a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x99328c63 # initialize rs1
li x24, 0x51965d0a # initialize rs2
mulhsu x20, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x14, 0xbef36568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd270f6a8 # initialize rs1
li x25, 0x6ddc252d # initialize rs2
mulhsu x14, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x11, 0xe14c01b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xeb8114ec # initialize rs1
li x26, 0x73e3565c # initialize rs2
mulhsu x11, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x16, 0xf759ce61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x22e6da84 # initialize rs1
li x27, 0x3f24047a # initialize rs2
mulhsu x16, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x31, 0x10f33853 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1a777095 # initialize rs1
li x28, 0x8eb54189 # initialize rs2
mulhsu x31, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x23, 0x7fb6fd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x49e5da07 # initialize rs1
li x29, 0x69652210 # initialize rs2
mulhsu x23, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x29238790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x88bdee1c # initialize rs1
li x30, 0x8ba1cc78 # initialize rs2
mulhsu x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x15, 0xc9df2e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbfa561a1 # initialize rs1
li x31, 0x14db8e3e # initialize rs2
mulhsu x15, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x297fc9c1)
li x16, 0x98987370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x297fc9c1 # initialize rs1
li x29, 0x97e7257e # initialize rs2
mulhsu x16, x30, x29 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2ba6d40d)
li x13, 0x2c16cf37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd4592bf3 # initialize rs1
li x7, 0xf358fdec # initialize rs2
mulhsu x13, x4, x7 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4aed72d8)
li x24, 0xa7c61286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7eeb4a2b # initialize rs1
li x21, 0x4aed72d8 # initialize rs2
mulhsu x24, x4, x21 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x71285b99)
li x8, 0xe1fc81cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x576a60bd # initialize rs1
li x29, 0x8ed7a467 # initialize rs2
mulhsu x8, x27, x29 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
