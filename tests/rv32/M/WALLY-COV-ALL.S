//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-mulhsu.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-divu.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-mulh.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb5f854af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x83db1c18 # initialize rs1
li x6, 0xbc571c8e # initialize rs2
mulh x0, x7, x6 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x49139073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92f474b6 # initialize rs1
li x29, 0x1b47d8fe # initialize rs2
mulh x1, x17, x29 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x0977375d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1802daba # initialize rs1
li x12, 0x37e21557 # initialize rs2
mulh x2, x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0662036c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8383b7ea # initialize rs1
li x13, 0xad76ab28 # initialize rs2
mulh x3, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x92a3bf98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x25b3b778 # initialize rs1
li x3, 0xa629058f # initialize rs2
mulh x4, x21, x3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa289da73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xac684543 # initialize rs1
li x28, 0xfea8ca36 # initialize rs2
mulh x5, x17, x28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xaeadd886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdf4fecb0 # initialize rs1
li x2, 0x512474e7 # initialize rs2
mulh x6, x1, x2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xbd0bc4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x831e5ba6 # initialize rs1
li x21, 0x113ffdc4 # initialize rs2
mulh x7, x20, x21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3c2b444e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x56e0f90c # initialize rs1
li x22, 0xe6c9a988 # initialize rs2
mulh x8, x10, x22 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x523ccaf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x28ca21b8 # initialize rs1
li x14, 0x4959a0d8 # initialize rs2
mulh x9, x29, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x328d7cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x766294fe # initialize rs1
li x18, 0x2e1e956a # initialize rs2
mulh x10, x1, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x474b1fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7af9386e # initialize rs1
li x25, 0x6797b778 # initialize rs2
mulh x11, x8, x25 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x738a82d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdacfc456 # initialize rs1
li x16, 0x3ee202ff # initialize rs2
mulh x12, x13, x16 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb39a807c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4081dd6c # initialize rs1
li x17, 0x71c2f118 # initialize rs2
mulh x13, x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8f0f3109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ad987bc # initialize rs1
li x13, 0x1036bcf9 # initialize rs2
mulh x14, x30, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6214bc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6ffd1749 # initialize rs1
li x20, 0xe4cd18dc # initialize rs2
mulh x15, x9, x20 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd73417bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b6fccc5 # initialize rs1
li x10, 0x28d701bd # initialize rs2
mulh x16, x26, x10 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6bdaf26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa92d3555 # initialize rs1
li x14, 0xd8b219db # initialize rs2
mulh x17, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6d19a247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbe29242b # initialize rs1
li x12, 0x7e8b4e34 # initialize rs2
mulh x18, x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x4ed54c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37b158b2 # initialize rs1
li x18, 0xea9c03c1 # initialize rs2
mulh x19, x3, x18 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x024ddf24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe14a473e # initialize rs1
li x27, 0x41217eed # initialize rs2
mulh x20, x31, x27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf15e32af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x38fa2bef # initialize rs1
li x16, 0x4722572f # initialize rs2
mulh x21, x13, x16 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x000e768d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2522678c # initialize rs1
li x10, 0xe58a647f # initialize rs2
mulh x22, x31, x10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x3d546bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf708611d # initialize rs1
li x20, 0x2e5a37f9 # initialize rs2
mulh x23, x27, x20 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x382a71d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe3da12ca # initialize rs1
li x5, 0xe0bf945d # initialize rs2
mulh x24, x20, x5 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdcb33f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x61a79553 # initialize rs1
li x16, 0x6a2c68f9 # initialize rs2
mulh x25, x6, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x1ed42020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd62918b2 # initialize rs1
li x23, 0x95de3972 # initialize rs2
mulh x26, x2, x23 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x82643b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe2359a86 # initialize rs1
li x25, 0x7741b5ad # initialize rs2
mulh x27, x12, x25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x98fff89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x46158823 # initialize rs1
li x11, 0x6386f5ff # initialize rs2
mulh x28, x31, x11 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3b405a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2c7d9f3f # initialize rs1
li x19, 0x634d61e7 # initialize rs2
mulh x29, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xfcbf24b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x50750bca # initialize rs1
li x31, 0x9963121e # initialize rs2
mulh x30, x1, x31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x41e8150a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf4770e20 # initialize rs1
li x21, 0xf92b2342 # initialize rs2
mulh x31, x28, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x28, 0xbce28ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x427fbb83 # initialize rs1
li x18, 0x1ef722fd # initialize rs2
mulh x28, x0, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0x817c9a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe98d9133 # initialize rs1
li x4, 0xa20afb40 # initialize rs2
mulh x12, x1, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x2492bd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbbabb355 # initialize rs1
li x31, 0xdd9597a9 # initialize rs2
mulh x10, x2, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x1b88f799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0784ea3c # initialize rs1
li x21, 0x465e0e49 # initialize rs2
mulh x2, x3, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0xd346af6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf505e072 # initialize rs1
li x9, 0x9d20e66b # initialize rs2
mulh x15, x4, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0xf52d3cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0bf5604a # initialize rs1
li x28, 0x148df53c # initialize rs2
mulh x3, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x10, 0x33cdf870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdcba7c89 # initialize rs1
li x29, 0x58866934 # initialize rs2
mulh x10, x6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0xfc47b42c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x938fb4ef # initialize rs1
li x24, 0x94e5a57e # initialize rs2
mulh x5, x7, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x30, 0x87374e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc8459166 # initialize rs1
li x19, 0x02768930 # initialize rs2
mulh x30, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x8ec79340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4c1f85d9 # initialize rs1
li x27, 0x853d8195 # initialize rs2
mulh x19, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xaa20f136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b577845 # initialize rs1
li x13, 0xe837e03e # initialize rs2
mulh x8, x10, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x05c83f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x90025107 # initialize rs1
li x14, 0x8d75d539 # initialize rs2
mulh x12, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x2f4888a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0933a049 # initialize rs1
li x31, 0x2ee2c42a # initialize rs2
mulh x25, x12, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0xeb8f4d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdafe5caa # initialize rs1
li x10, 0x671e921b # initialize rs2
mulh x2, x13, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x4ca3d4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x452fb580 # initialize rs1
li x11, 0xef2d7a5a # initialize rs2
mulh x20, x14, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x46bdca66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd9bb89b4 # initialize rs1
li x19, 0x3bd07271 # initialize rs2
mulh x5, x15, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x43d7fc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x83b0aca0 # initialize rs1
li x14, 0x452e42d5 # initialize rs2
mulh x18, x16, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0x7145511b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaa27953f # initialize rs1
li x8, 0x72433edc # initialize rs2
mulh x25, x17, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x1cc8d961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x45174faf # initialize rs1
li x22, 0x2cf246f3 # initialize rs2
mulh x19, x18, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x30, 0xe6ec24ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xde5b12e3 # initialize rs1
li x10, 0xeb992807 # initialize rs2
mulh x30, x19, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0xc605f7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3fcefb3f # initialize rs1
li x13, 0x341b94c8 # initialize rs2
mulh x14, x20, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0x1e09892c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb5af3bf2 # initialize rs1
li x13, 0x44ea5e8b # initialize rs2
mulh x10, x21, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x9cea10d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e1d4c6d # initialize rs1
li x8, 0xd0f79f70 # initialize rs2
mulh x24, x22, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x4f13dc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb2df6def # initialize rs1
li x14, 0xf779b4d1 # initialize rs2
mulh x26, x23, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0xcdb8a89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1b5d1d9c # initialize rs1
li x18, 0x9f1c8acf # initialize rs2
mulh x22, x24, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0xc7c522e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3520ca6e # initialize rs1
li x17, 0xa70ca1a4 # initialize rs2
mulh x28, x25, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0xa590186a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x092b1376 # initialize rs1
li x12, 0x4f06c562 # initialize rs2
mulh x2, x26, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0xb7bd5f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x70be0c98 # initialize rs1
li x9, 0x0f7ba24f # initialize rs2
mulh x19, x27, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0xdfdc228d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0bfdeff6 # initialize rs1
li x25, 0xb960ef38 # initialize rs2
mulh x7, x28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x0543fc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xef6131c0 # initialize rs1
li x7, 0x851cd7ef # initialize rs2
mulh x16, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x11aa17ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x683c81b9 # initialize rs1
li x20, 0x094109c7 # initialize rs2
mulh x16, x30, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x4, 0xc58089a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x39e518b0 # initialize rs1
li x7, 0xa9e723ab # initialize rs2
mulh x4, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x26a09344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5f049fef # initialize rs1
li x0, 0xb39be80b # initialize rs2
mulh x7, x22, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x57c7a648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x628cfb8f # initialize rs1
li x1, 0xaa6e51c7 # initialize rs2
mulh x23, x15, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x4, 0x7567c074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd57521b # initialize rs1
li x2, 0x4cea5213 # initialize rs2
mulh x4, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0xb604e79b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a213ed8 # initialize rs1
li x3, 0xecdfef99 # initialize rs2
mulh x27, x11, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x2a53baef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf4d696cb # initialize rs1
li x4, 0x2d3c3a0e # initialize rs2
mulh x2, x12, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x4, 0xcaa6d124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xeaf80c89 # initialize rs1
li x5, 0xca3f2459 # initialize rs2
mulh x4, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x10, 0xe3405677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb8e811be # initialize rs1
li x6, 0x4766f3e0 # initialize rs2
mulh x10, x2, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0xf883bb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa918d96d # initialize rs1
li x7, 0x5c5fdeb6 # initialize rs2
mulh x23, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x9ae07602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf629978e # initialize rs1
li x8, 0x6f7ec2fd # initialize rs2
mulh x27, x4, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x89e2c010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5207e21f # initialize rs1
li x9, 0x456fd17d # initialize rs2
mulh x31, x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0x92c47cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x482b80aa # initialize rs1
li x10, 0x218aae26 # initialize rs2
mulh x21, x5, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0xdf8c2a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa15de23d # initialize rs1
li x11, 0x81ec4498 # initialize rs2
mulh x25, x24, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xe61886d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0f12cbcf # initialize rs1
li x12, 0x7902097b # initialize rs2
mulh x27, x24, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x4, 0x3b586812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaedae82e # initialize rs1
li x13, 0xe94d9c5c # initialize rs2
mulh x4, x23, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0x36110ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4586df71 # initialize rs1
li x14, 0x86f1dba0 # initialize rs2
mulh x29, x1, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x2c6748b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x84514c4a # initialize rs1
li x15, 0x7d3be8e7 # initialize rs2
mulh x9, x14, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x22cfecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x85915234 # initialize rs1
li x16, 0x6c324279 # initialize rs2
mulh x6, x2, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0x1a1ccbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2aa39683 # initialize rs1
li x17, 0xc2e67449 # initialize rs2
mulh x26, x20, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0xe20ee5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa21f6bcb # initialize rs1
li x18, 0xe8fe34b8 # initialize rs2
mulh x14, x13, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x7bf071d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5d3b6ae9 # initialize rs1
li x19, 0xe3069933 # initialize rs2
mulh x3, x21, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xd957e7f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x460db701 # initialize rs1
li x20, 0x33f093aa # initialize rs2
mulh x11, x17, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0x07a97cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40677bef # initialize rs1
li x21, 0xea9c5d60 # initialize rs2
mulh x16, x30, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0xadba4399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbafffa9c # initialize rs1
li x22, 0x4c8a3a44 # initialize rs2
mulh x4, x17, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x126242fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd8d7c6c6 # initialize rs1
li x23, 0x4497603b # initialize rs2
mulh x26, x17, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0xe9ab143b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x520e0659 # initialize rs1
li x24, 0xa263ac9d # initialize rs2
mulh x19, x6, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0x0f60f262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x75cf563b # initialize rs1
li x25, 0xe4c22ca2 # initialize rs2
mulh x29, x2, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xff2fa148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0e61ade8 # initialize rs1
li x26, 0xc0efeee6 # initialize rs2
mulh x23, x2, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0xe3ddeeda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b8f6bae # initialize rs1
li x27, 0x84671361 # initialize rs2
mulh x21, x18, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xf6833cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb331783 # initialize rs1
li x28, 0x26c7686f # initialize rs2
mulh x11, x14, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0xc6bdb8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55b6eb3c # initialize rs1
li x29, 0x7c8b581e # initialize rs2
mulh x23, x8, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0xe8c53a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4b9b08ce # initialize rs1
li x30, 0x867a7cec # initialize rs2
mulh x29, x21, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x137726f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc2ad6520 # initialize rs1
li x31, 0xb0c0ff59 # initialize rs2
mulh x16, x9, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xfb0fa051)
li x13, 0x75890fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x75890fb5 # initialize rs1
li x0, 0xdb1573d5 # initialize rs2
mulh x13, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x2433d07)
li x11, 0x02433d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x02433d07 # initialize rs1
li x13, 0x02433d07 # initialize rs2
mulh x11, x0, x13 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x584331b3)
li x30, 0x2fcdcf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x584331b3 # initialize rs1
li x20, 0x584331b3 # initialize rs2
mulh x30, x28, x20 # perform operation

# Testcase cmp_gpr_hazard raw test
mulh x12, x17, x2 # perform first operation
mulh x23, x12, x24 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulh x6, x30, x10 # perform first operation
mulh x5, x29, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x28, x15, x22 # perform first operation
mulh x28, x6, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x27, x5, x26 # perform first operation
mulh x27, x10, x16 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x11, x12, x18 # perform first operation
mulh x12, x31, x15 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x5, x15, x17 # perform first operation
mulh x17, x21, x14 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x6c3718b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x28, 0x5da449d0 # initialize rs2
mulh x3, x11, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x5a57a712 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x27, 0x67aba2ca # initialize rs2
mulh x11, x9, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0xc348d113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x9, 0x5915bb16 # initialize rs2
mulh x21, x3, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x1c927f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x9, 0xe9c928bc # initialize rs2
mulh x10, x19, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x7fb45c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x18, 0xb87261c2 # initialize rs2
mulh x6, x24, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x52dca52e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
li x10, 0x7ea066c0 # initialize rs2
mulh x8, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x26, 0x57413969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x3, 0x8c4c3f50 # initialize rs2
mulh x26, x6, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x2717fb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x16, 0xe5403c92 # initialize rs2
mulh x13, x28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0xc16331f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x16, 0x9eeb9da5 # initialize rs2
mulh x30, x28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x25, 0x0240df95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x9, 0x1b930055 # initialize rs2
mulh x25, x22, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xda684e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x15, 0x6df7bfd1 # initialize rs2
mulh x13, x28, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x1, 0x8e24fb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x8, 0xc53ac460 # initialize rs2
mulh x1, x3, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xbc1d031d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x29bbda9c # initialize rs1
li x11, 0x00000000 # initialize rs2
mulh x25, x19, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x0aaa8ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb180b696 # initialize rs1
li x30, 0x00000001 # initialize rs2
mulh x6, x26, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x795f603c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x630e899a # initialize rs1
li x24, 0x00000002 # initialize rs2
mulh x25, x10, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xace0bf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27359a01 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x12, x13, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0xe10bd11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc03f0109 # initialize rs1
li x12, 0x80000001 # initialize rs2
mulh x25, x16, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0xa0f0d523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xeaa17489 # initialize rs1
li x12, 0x7fffffff # initialize rs2
mulh x3, x2, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x2956de86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4d0e033e # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mulh x23, x20, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x18e46d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaf714170 # initialize rs1
li x16, 0xffffffff # initialize rs2
mulh x5, x28, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x71b26591 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdb4834b7 # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulh x22, x18, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x12, 0x3e8a1182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0a784102 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
mulh x12, x6, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0x4912bbac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb13814ee # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mulh x8, x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x24, 0xaed70d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb17ac661 # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x24, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0xa99d3454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
mulh x6, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x0eb1cc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulh x12, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x1dc17a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
mulh x18, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0x7eb581e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
mulh x14, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0xc4b7fc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x1, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x9d7b16d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
mulh x23, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x31, 0x3a5c681f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
mulh x31, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0xedb6cfc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
mulh x26, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0xd9f1b791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulh x8, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x1, 0x729be1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
mulh x1, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0xd4ab4065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mulh x6, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x22, 0xd63ec575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
mulh x22, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x19, 0x3fdc4d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulh x19, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x007191f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
mulh x3, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0xcfe1c484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x8, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x3ddc0682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
mulh x18, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x9, 0xbaf29c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulh x9, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x918c14d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x15, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x7, 0x3056a804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
mulh x7, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x1aaaf794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
mulh x16, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x4, 0x5eb9244d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
mulh x4, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x24, 0xe1d038c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
mulh x24, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0xea31699c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x13, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x15, 0x9eee4b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
mulh x15, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x4243dd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x28, 0x00000000 # initialize rs2
mulh x24, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x6e73b310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x23, 0x00000001 # initialize rs2
mulh x7, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x9, 0x4907ed4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x9, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x19, 0x8507f833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rs1
li x3, 0x80000000 # initialize rs2
mulh x19, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x26, 0x53830d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x3, 0x80000001 # initialize rs2
mulh x26, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x388f4c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x25, 0x7fffffff # initialize rs2
mulh x19, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0xdbdedca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mulh x10, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x90195166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulh x10, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0xa0060f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulh x18, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x28, 0xd678d86f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
mulh x28, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0xf7c075c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulh x14, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x15, 0xf887e7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x9, 0x55555555 # initialize rs2
mulh x15, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0xe1d6de64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
mulh x29, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x7, 0x0b6121f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulh x7, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0x812eb08d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
mulh x5, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x6, 0xa3cb6346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
mulh x6, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x26, 0x5013924e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
mulh x26, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x4, 0xb7cd70ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x28, 0x7fffffff # initialize rs2
mulh x4, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x10af11cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulh x27, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x46dc2c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulh x22, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x919b4c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulh x8, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x25, 0xfec62f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulh x25, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0xab884b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x24, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x57db1d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
mulh x22, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x19, 0xc4468663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
mulh x19, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x22, 0x0401c639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
mulh x22, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x2, 0x743a3aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x4, 0x00000002 # initialize rs2
mulh x2, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x0e6b111a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
mulh x29, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x28, 0x3e0d9bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
mulh x28, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x9, 0x0bdab552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x9, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0xad5c5505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mulh x18, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x31, 0x29102865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
mulh x31, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x6e27f33d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x3, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x8, 0xb8b2619f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mulh x8, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x364a368c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulh x28, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x1, 0x6b106727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
mulh x1, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x24744d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
mulh x12, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0xecf79aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
mulh x14, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x90e76682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
mulh x7, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x9, 0xf4954f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x9, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x28, 0x54225a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x28, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0xd7066589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x25, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0xc11f90ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mulh x14, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x5, 0x2ff7956a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mulh x5, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x10, 0x66245cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulh x10, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x20, 0xea1af5cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
mulh x20, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x26, 0x7c663a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
mulh x26, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0xb59e634a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
mulh x17, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x9, 0x8b608b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
mulh x9, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x18, 0x6e1ddc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
mulh x18, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x6878f04f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
mulh x10, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x20, 0x8798cf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x20, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x28, 0x99d86ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
mulh x28, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x23, 0xb9ad5f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x23, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x27, 0x4964ee92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
mulh x27, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x4b52e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
mulh x2, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x45ab481d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
mulh x25, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x31, 0xc5001f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
mulh x31, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x8, 0xc4654a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x8, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x15, 0x8ac7cf6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
mulh x15, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x8c31cc52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
mulh x6, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0xf88f0a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x4, 0x00000001 # initialize rs2
mulh x18, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0xfecf5262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x7, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x6, 0x47ec8c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x6, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0x28f07356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x31, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x12, 0xa9a42acb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulh x12, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xe227de98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulh x18, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x2f5cb0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
mulh x6, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0xbaaa4695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x10, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x23, 0x78038b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
mulh x23, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x18, 0xab0635fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulh x18, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0xe7b27f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x11, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0x657d5ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
mulh x11, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0xeb891502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
mulh x21, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x4, 0x57adcd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x31, 0x00000002 # initialize rs2
mulh x4, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x25, 0x6c74e326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
mulh x25, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0x56c08e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x27, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x29, 0x5f0b9232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
mulh x29, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0x63c1aa61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
mulh x31, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x18, 0x31327e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x18, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x386cead6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
mulh x13, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x17, 0x6659cfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulh x17, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x9, 0xc39da56b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
mulh x9, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0x5587b2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
mulh x12, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x9, 0xb9642bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x7, 0x00000000 # initialize rs2
mulh x9, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x6, 0x218c4031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x14, 0x00000001 # initialize rs2
mulh x6, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x5, 0x669c7b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x5, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x27, 0x00692051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x11, 0x80000000 # initialize rs2
mulh x27, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x17, 0x92a84179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x14, 0x80000001 # initialize rs2
mulh x17, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x5, 0x46da33c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mulh x5, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x12, 0x9bd2055f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulh x12, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x17, 0x5ba51ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x11, 0xffffffff # initialize rs2
mulh x17, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x31, 0x32ee9ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulh x31, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x21, 0x7ff4f494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
mulh x21, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x4, 0xd724c3ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
mulh x4, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x28, 0x5e09c4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x20, 0x55555555 # initialize rs2
mulh x28, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x9, 0xe68e7055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x9, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0x441b7933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x2, 0x00000001 # initialize rs2
mulh x16, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xf9a08cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x2, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x14, 0xae0586f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x17, 0x80000000 # initialize rs2
mulh x14, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x16, 0xd4499ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x7, 0x80000001 # initialize rs2
mulh x16, x6, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x15, 0x28608ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x29, 0x7fffffff # initialize rs2
mulh x15, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x31, 0x5d722489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulh x31, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0x0abf207d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0xffffffff # initialize rs2
mulh x22, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xbfaf0b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulh x28, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x30, 0x5e2acb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
mulh x30, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0x0d30b12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
mulh x27, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0x652b8b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x21, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x27, 0xb698b462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x2, 0x00000000 # initialize rs2
mulh x27, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x2, 0x0a6a959e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulh x2, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x19, 0xb7cb1f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
mulh x19, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x3fe55161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x27, 0x80000000 # initialize rs2
mulh x29, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x27dfd95f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulh x16, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x4, 0xcad39a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulh x4, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x15, 0x1e246601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mulh x15, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x24, 0x088ceb23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x24, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x6, 0xada605b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulh x6, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x3, 0x56d0b8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
mulh x3, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0xad75fbd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mulh x28, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0xa937580f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulh x28, x24, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf59fb23b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x75d147ec # initialize rs1
li x4, 0x49c7bd78 # initialize rs2
mulh x0, x0, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf91f959e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0e2c4321 # initialize rs1
li x12, 0xcbf60014 # initialize rs2
mulh x1, x1, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1974727e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9ebacc4b # initialize rs1
li x5, 0x4c6cc3ad # initialize rs2
mulh x2, x2, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5eef0e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x373c3ce4 # initialize rs1
li x7, 0x58c162a6 # initialize rs2
mulh x3, x3, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x85e41363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcd23da36 # initialize rs1
li x15, 0x0ac8a123 # initialize rs2
mulh x4, x4, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x8bb9de34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0616fa78 # initialize rs1
li x17, 0x0f5e0089 # initialize rs2
mulh x5, x5, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xeeae41c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfeeb224d # initialize rs1
li x13, 0x4ea34ada # initialize rs2
mulh x6, x6, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xa462a2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1af95591 # initialize rs1
li x16, 0x7d2f49c7 # initialize rs2
mulh x7, x7, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2ba49089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1206d1a1 # initialize rs1
li x15, 0x47f2ddfe # initialize rs2
mulh x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd895cd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbe7038d2 # initialize rs1
li x8, 0x4a8b4c24 # initialize rs2
mulh x9, x9, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x45d2e1c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7d005f37 # initialize rs1
li x12, 0xd8346204 # initialize rs2
mulh x10, x10, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x16a30d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0adefbdb # initialize rs1
li x12, 0xf9a1f6e1 # initialize rs2
mulh x11, x11, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeec5cdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc48ea410 # initialize rs1
li x23, 0x532c278d # initialize rs2
mulh x12, x12, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa13644b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x698d35ed # initialize rs1
li x5, 0x056bb45a # initialize rs2
mulh x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8bf01350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x82069dad # initialize rs1
li x27, 0xe201e462 # initialize rs2
mulh x14, x14, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7a9d9ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xea5cf8c7 # initialize rs1
li x28, 0x27247e93 # initialize rs2
mulh x15, x15, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2196b7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe11dec18 # initialize rs1
li x4, 0x1e42fa48 # initialize rs2
mulh x16, x16, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x34cabc72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92745ac6 # initialize rs1
li x16, 0x869f2803 # initialize rs2
mulh x17, x17, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb2cd0a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x60f02a20 # initialize rs1
li x2, 0xdb87b021 # initialize rs2
mulh x18, x18, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5ff6de55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7aecbafd # initialize rs1
li x1, 0xe8ee7b52 # initialize rs2
mulh x19, x19, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa4d597b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb877a6ee # initialize rs1
li x21, 0xa534d68e # initialize rs2
mulh x20, x20, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8f2122dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x790eb9fb # initialize rs1
li x6, 0xde926122 # initialize rs2
mulh x21, x21, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x49862b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b827546 # initialize rs1
li x26, 0x2b5470fe # initialize rs2
mulh x22, x22, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x24988db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaab3376e # initialize rs1
li x12, 0x90c20a3d # initialize rs2
mulh x23, x23, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe821ce44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x91d968c5 # initialize rs1
li x4, 0x4d591b13 # initialize rs2
mulh x24, x24, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xde3dee23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x106e58ce # initialize rs1
li x14, 0x507522d0 # initialize rs2
mulh x25, x25, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x944ee9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3c989ecb # initialize rs1
li x25, 0x317399d7 # initialize rs2
mulh x26, x26, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7573e985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7d735ebb # initialize rs1
li x16, 0xd2f7719e # initialize rs2
mulh x27, x27, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x48d9bb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1b0833e0 # initialize rs1
li x19, 0x587363bb # initialize rs2
mulh x28, x28, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x28d7458d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5ccd91d5 # initialize rs1
li x8, 0x55d95cc9 # initialize rs2
mulh x29, x29, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x02ed0c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x42fac2d5 # initialize rs1
li x13, 0x265febbb # initialize rs2
mulh x30, x30, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8fb17298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bf08bad # initialize rs1
li x27, 0xfcb83e0a # initialize rs2
mulh x31, x31, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x0510de78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeaf1b807 # initialize rs1
li x0, 0x507aeea0 # initialize rs2
mulh x0, x1, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x92a145d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc1306e7a # initialize rs1
li x1, 0x7a05293b # initialize rs2
mulh x1, x23, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xa1e25283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0c4df70b # initialize rs1
li x2, 0x11260798 # initialize rs2
mulh x2, x15, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x0f22d950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xec812a9e # initialize rs1
li x3, 0x0dd7f4ff # initialize rs2
mulh x3, x8, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x3748ee51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe24be1b3 # initialize rs1
li x4, 0xf655a77c # initialize rs2
mulh x4, x20, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xeeb0ef39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x153a6050 # initialize rs1
li x5, 0x4e123794 # initialize rs2
mulh x5, x9, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x72121510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1efcc17b # initialize rs1
li x6, 0x0aac2367 # initialize rs2
mulh x6, x8, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x4ef9323f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1d80ffeb # initialize rs1
li x7, 0x4da879c8 # initialize rs2
mulh x7, x7, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd67905bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcd54628c # initialize rs1
li x8, 0x6f680451 # initialize rs2
mulh x8, x24, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf5b01b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4ef70bce # initialize rs1
li x9, 0x5aa00c71 # initialize rs2
mulh x9, x8, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xfe25eb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x67e14c3a # initialize rs1
li x10, 0x6d4a93a4 # initialize rs2
mulh x10, x7, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xfec5dc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x459098b3 # initialize rs1
li x11, 0x06362fa5 # initialize rs2
mulh x11, x19, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x0703dad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa34a4cef # initialize rs1
li x12, 0xa3907a7f # initialize rs2
mulh x12, x14, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x19842522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x792afd71 # initialize rs1
li x13, 0x8536c10d # initialize rs2
mulh x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x0834405d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x866338ea # initialize rs1
li x14, 0x482074be # initialize rs2
mulh x14, x9, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x64f09919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0cbf62fe # initialize rs1
li x15, 0x623cf9e5 # initialize rs2
mulh x15, x18, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xf47d40ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a43b122 # initialize rs1
li x16, 0x9720ed09 # initialize rs2
mulh x16, x10, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xf7bd5ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa41442d7 # initialize rs1
li x17, 0x241b193d # initialize rs2
mulh x17, x25, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x31d6202c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc975126f # initialize rs1
li x18, 0x7c04d1e3 # initialize rs2
mulh x18, x7, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x414b4f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x62727771 # initialize rs1
li x19, 0x1e33e4b1 # initialize rs2
mulh x19, x14, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x99844ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3cd7d570 # initialize rs1
li x20, 0x93fae8e2 # initialize rs2
mulh x20, x16, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa2652957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5b29cc3d # initialize rs1
li x21, 0x52411de5 # initialize rs2
mulh x21, x11, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xffa69a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0fca1887 # initialize rs1
li x22, 0x2c694163 # initialize rs2
mulh x22, x13, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xb9d60e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa6ea19c8 # initialize rs1
li x23, 0x565a63a1 # initialize rs2
mulh x23, x23, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x79c5a7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdf535c2d # initialize rs1
li x24, 0xc1006914 # initialize rs2
mulh x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x76bb4bed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbdfb0afe # initialize rs1
li x25, 0xba9fd3e7 # initialize rs2
mulh x25, x22, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9d804f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0fe92e91 # initialize rs1
li x26, 0xacaa73bb # initialize rs2
mulh x26, x6, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xf691ec71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9681a18a # initialize rs1
li x27, 0xbdcdb3c5 # initialize rs2
mulh x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x6537068e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb8534cf3 # initialize rs1
li x28, 0xa50b3abb # initialize rs2
mulh x28, x8, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x41c12b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd3da99b3 # initialize rs1
li x29, 0x50cd6e66 # initialize rs2
mulh x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x06789b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe650b463 # initialize rs1
li x30, 0x6848fa42 # initialize rs2
mulh x30, x29, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x7dab608b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb0b9d437 # initialize rs1
li x31, 0xefd60d4e # initialize rs2
mulh x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe0d9e233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa11dd1a9 # initialize rs1
li x0, 0x0aa52a85 # initialize rs2
mulh x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4cba947c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x88841c73 # initialize rs1
li x1, 0x6adbac4a # initialize rs2
mulh x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x78e57e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x14bad99e # initialize rs1
li x2, 0xf7fdedcb # initialize rs2
mulh x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8271204c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4c5d7f25 # initialize rs1
li x3, 0x6167fa50 # initialize rs2
mulh x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xf68ceb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x85042936 # initialize rs1
li x4, 0xb4406976 # initialize rs2
mulh x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x2c539933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa3a20f17 # initialize rs1
li x5, 0x9dd08b59 # initialize rs2
mulh x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x5280448a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1b69a692 # initialize rs1
li x6, 0x6485dbfd # initialize rs2
mulh x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x07cd7f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe996894b # initialize rs1
li x7, 0xf9f4efc1 # initialize rs2
mulh x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2be23ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6020f167 # initialize rs1
li x8, 0x03c7c33c # initialize rs2
mulh x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xde37e8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2eedb4b3 # initialize rs1
li x9, 0xe428f5e5 # initialize rs2
mulh x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbcac3e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc3d5fbf6 # initialize rs1
li x10, 0x17cf62f1 # initialize rs2
mulh x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1237a7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd92ef64 # initialize rs1
li x11, 0x5631043c # initialize rs2
mulh x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xaa9aeb40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6171ecfa # initialize rs1
li x12, 0x8a92ea39 # initialize rs2
mulh x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x772ea997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f4eff1d # initialize rs1
li x13, 0x49ef2caa # initialize rs2
mulh x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x50431af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd45d44ce # initialize rs1
li x14, 0x611f849a # initialize rs2
mulh x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb371ae54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0c7f098c # initialize rs1
li x15, 0x167dfd88 # initialize rs2
mulh x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3c81a107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd543319f # initialize rs1
li x16, 0x549dec91 # initialize rs2
mulh x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdca2becf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbf5d2642 # initialize rs1
li x17, 0x8f1de101 # initialize rs2
mulh x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x9324bedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x76ffce52 # initialize rs1
li x18, 0x2d161563 # initialize rs2
mulh x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5aafa08c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x230853b6 # initialize rs1
li x19, 0x50872d4d # initialize rs2
mulh x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x95318d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x61f97ca2 # initialize rs1
li x20, 0x34f3f13a # initialize rs2
mulh x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd27df333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x879852eb # initialize rs1
li x21, 0x4034f2a3 # initialize rs2
mulh x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x90f5cb11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd6c296fd # initialize rs1
li x22, 0x646b1210 # initialize rs2
mulh x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcc21f683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe499b6d9 # initialize rs1
li x23, 0xf953d5c1 # initialize rs2
mulh x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xdff400bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbb8215a6 # initialize rs1
li x24, 0xd1487d0c # initialize rs2
mulh x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x744198fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x07ed74f6 # initialize rs1
li x25, 0x119e3647 # initialize rs2
mulh x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x99702b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcafa222c # initialize rs1
li x26, 0x2860a5a7 # initialize rs2
mulh x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe6c0d5de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x86b2bfd4 # initialize rs1
li x27, 0x6619c825 # initialize rs2
mulh x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfb6214c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd0397e87 # initialize rs1
li x28, 0x9c8cc679 # initialize rs2
mulh x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xca024b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x67bce262 # initialize rs1
li x29, 0xa6b995cc # initialize rs2
mulh x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcdf62498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x490e0933 # initialize rs1
li x30, 0x74abd87f # initialize rs2
mulh x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd7b5b262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf86b07ed # initialize rs1
li x31, 0xa178aeef # initialize rs2
mulh x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x5c063320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfaffa8fe # initialize rs1
li x0, 0xed06e46a # initialize rs2
mulh x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x14, 0x81f68bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10aee5df # initialize rs1
li x1, 0x70253544 # initialize rs2
mulh x14, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x6, 0xd183a22f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc7972178 # initialize rs1
li x2, 0xc90a9f07 # initialize rs2
mulh x6, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x27, 0x17c9ab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf938b4f2 # initialize rs1
li x3, 0x5d6d144c # initialize rs2
mulh x27, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0x8c4097d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2f837070 # initialize rs1
li x4, 0x582bed7f # initialize rs2
mulh x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x27, 0x18969f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x63183fd9 # initialize rs1
li x5, 0x528a15e9 # initialize rs2
mulh x27, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x13, 0x1ca7f8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0ba35248 # initialize rs1
li x6, 0xdde745a9 # initialize rs2
mulh x13, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x30, 0x64ad3c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x22af9171 # initialize rs1
li x7, 0xe1593a02 # initialize rs2
mulh x30, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x31, 0xa5343407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x759c8bdb # initialize rs1
li x8, 0xa24a3954 # initialize rs2
mulh x31, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x2, 0x9169677f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a31fa72 # initialize rs1
li x9, 0x5d45150b # initialize rs2
mulh x2, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x28, 0x6586837c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb6055b0e # initialize rs1
li x10, 0xe84d172e # initialize rs2
mulh x28, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x8, 0xd9fbf4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7e2f5b04 # initialize rs1
li x11, 0x0cfa4f19 # initialize rs2
mulh x8, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x205983dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0cb77992 # initialize rs1
li x12, 0x4153e13d # initialize rs2
mulh x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x22, 0x7c8e23ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x17794614 # initialize rs1
li x13, 0xafa980ae # initialize rs2
mulh x22, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x17, 0x647b754c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6ac0f376 # initialize rs1
li x14, 0xc5469d75 # initialize rs2
mulh x17, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x14, 0x29b8b662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x10c0518c # initialize rs1
li x15, 0x056e2945 # initialize rs2
mulh x14, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x7, 0xa996501c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf1b8b98a # initialize rs1
li x16, 0x9cca12ff # initialize rs2
mulh x7, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x18, 0x487c384f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x68720de7 # initialize rs1
li x17, 0xf3b19979 # initialize rs2
mulh x18, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x7, 0x035e77de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf4b6bf3a # initialize rs1
li x18, 0xccfde2c3 # initialize rs2
mulh x7, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0x5cdae385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6166889c # initialize rs1
li x19, 0x28a60770 # initialize rs2
mulh x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x21, 0xa5d08182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3428adfc # initialize rs1
li x20, 0xb3f53cf8 # initialize rs2
mulh x21, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x23, 0x10c5fe2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xca087f60 # initialize rs1
li x21, 0xbce5db1d # initialize rs2
mulh x23, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x27, 0xe86e9656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26b3ec64 # initialize rs1
li x22, 0x845cfe11 # initialize rs2
mulh x27, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x10, 0x10e8e5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe61ac29b # initialize rs1
li x23, 0x3d8b0b71 # initialize rs2
mulh x10, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x26, 0x99dd720b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7a130f39 # initialize rs1
li x24, 0x61ebd4b2 # initialize rs2
mulh x26, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x27, 0x9a148d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xad75a49d # initialize rs1
li x25, 0x2d36ccdd # initialize rs2
mulh x27, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0x2e08afc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcdfa5e56 # initialize rs1
li x26, 0x8528567b # initialize rs2
mulh x10, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0xcc96d833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd598f1ad # initialize rs1
li x27, 0x3412d312 # initialize rs2
mulh x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x8, 0xf239d812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x11cd4f8d # initialize rs1
li x28, 0x75d30fd1 # initialize rs2
mulh x8, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x9, 0x28f7735e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x919d4e9a # initialize rs1
li x29, 0x29fd4636 # initialize rs2
mulh x9, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x23, 0x223b1377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3cb7e7d1 # initialize rs1
li x30, 0xc86b1bb7 # initialize rs2
mulh x23, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x7, 0xbef53d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x37fc015b # initialize rs1
li x31, 0x511c84a2 # initialize rs2
mulh x7, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6a8300a)
li x12, 0x76711aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x06a8300a # initialize rs1
li x4, 0x463eb8dc # initialize rs2
mulh x12, x7, x4 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7a464d9d)
li x27, 0xbccd4b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x85b9b263 # initialize rs1
li x14, 0x6a82834e # initialize rs2
mulh x27, x31, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x792561b)
li x9, 0x83ee6036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2f14abd3 # initialize rs1
li x15, 0x0792561b # initialize rs2
mulh x9, x28, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x49b956b6)
li x4, 0xcc729152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3451021f # initialize rs1
li x16, 0xb646a94a # initialize rs2
mulh x4, x23, x16 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-remu.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xe1411df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb72dd9fe # initialize rs1
li x3, 0x085a88f1 # initialize rs2
remu x0, x13, x3 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5596082a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xab3ed0f8 # initialize rs1
li x4, 0xc49c27e0 # initialize rs2
remu x1, x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb043787e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xac12d12f # initialize rs1
li x29, 0x20e2d785 # initialize rs2
remu x2, x28, x29 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe35c9395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x232dbe60 # initialize rs1
li x7, 0x063fe24c # initialize rs2
remu x3, x27, x7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb028573f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd23d78f1 # initialize rs1
li x24, 0xf63f69bb # initialize rs2
remu x4, x13, x24 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1721544a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x77b222e9 # initialize rs1
li x15, 0x597bb3a9 # initialize rs2
remu x5, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdb9efa4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6f13a912 # initialize rs1
li x8, 0x672d6fb8 # initialize rs2
remu x6, x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x2f79241e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x38b66084 # initialize rs1
li x11, 0x313a80a2 # initialize rs2
remu x7, x31, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6ebb32b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa404ca95 # initialize rs1
li x8, 0x4923821f # initialize rs2
remu x8, x26, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x43dc1ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffe67f5b # initialize rs1
li x4, 0x6291fa1b # initialize rs2
remu x9, x3, x4 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfec415b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9d128ccd # initialize rs1
li x27, 0xc23406fa # initialize rs2
remu x10, x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc3180e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xee54014c # initialize rs1
li x5, 0xa73ac303 # initialize rs2
remu x11, x17, x5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x363c3115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55ded971 # initialize rs1
li x15, 0x121c18e6 # initialize rs2
remu x12, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x36a8da69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf876d43e # initialize rs1
li x1, 0xcf543630 # initialize rs2
remu x13, x11, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa986690a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb079bd3a # initialize rs1
li x7, 0xd0ab5fa1 # initialize rs2
remu x14, x6, x7 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2dc461f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1879eb64 # initialize rs1
li x3, 0x13bdb925 # initialize rs2
remu x15, x14, x3 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x9a36106f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x70d6a5c5 # initialize rs1
li x15, 0x0f705a4f # initialize rs2
remu x16, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9bb8d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe26472f5 # initialize rs1
li x20, 0xe488fc6e # initialize rs2
remu x17, x13, x20 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xe7386906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0c90c273 # initialize rs1
li x4, 0xd6b263fc # initialize rs2
remu x18, x30, x4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe10377a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd78e942d # initialize rs1
li x17, 0x08e3c22f # initialize rs2
remu x19, x23, x17 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbc90220c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x454b6ab6 # initialize rs1
li x21, 0xc83c67d1 # initialize rs2
remu x20, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf29adf6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x12ab7a0b # initialize rs1
li x31, 0x5e18ef7f # initialize rs2
remu x21, x4, x31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x9c82dbad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5410d37d # initialize rs1
li x12, 0x8bf87550 # initialize rs2
remu x22, x4, x12 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x93da327b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2b83dd22 # initialize rs1
li x8, 0xdc37273e # initialize rs2
remu x23, x24, x8 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x49432d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb238c37c # initialize rs1
li x27, 0x50b0cc70 # initialize rs2
remu x24, x30, x27 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xafc12511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4496bf23 # initialize rs1
li x22, 0xc1c36d9d # initialize rs2
remu x25, x29, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9e753056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe085026b # initialize rs1
li x24, 0xab6c9492 # initialize rs2
remu x26, x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf9fe4682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf71244f1 # initialize rs1
li x20, 0xa1a5852c # initialize rs2
remu x27, x26, x20 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0e925f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4f586a56 # initialize rs1
li x25, 0xbe09f6d2 # initialize rs2
remu x28, x17, x25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd055877b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x51ae0dfc # initialize rs1
li x15, 0xbe0a32b4 # initialize rs2
remu x29, x21, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdb1402d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2510f0f0 # initialize rs1
li x31, 0xdc722097 # initialize rs2
remu x30, x7, x31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5546207d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc5333862 # initialize rs1
li x19, 0x7e6bbf4c # initialize rs2
remu x31, x28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0x469db2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5e64b12a # initialize rs1
li x12, 0x84a97f40 # initialize rs2
remu x14, x0, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x2879eae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc97badd5 # initialize rs1
li x10, 0xc7e50dd7 # initialize rs2
remu x22, x1, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x23a7b903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf810c483 # initialize rs1
li x13, 0x9565fc07 # initialize rs2
remu x23, x2, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xd28e6f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa2274379 # initialize rs1
li x11, 0x26d28c78 # initialize rs2
remu x16, x3, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0xca7dc94c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa48803e7 # initialize rs1
li x3, 0x5b7aef4a # initialize rs2
remu x1, x4, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0x02766503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa489d7c2 # initialize rs1
li x30, 0x5d4c5a3e # initialize rs2
remu x16, x5, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x16, 0xf2794999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91be465c # initialize rs1
li x1, 0xe8d3ee8e # initialize rs2
remu x16, x6, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0xe20b8681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x98b8a248 # initialize rs1
li x22, 0x4b83ecfc # initialize rs2
remu x12, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xcb685b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xadb42d52 # initialize rs1
li x13, 0x2bc177db # initialize rs2
remu x11, x8, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0xd90141c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x21b8fb6a # initialize rs1
li x19, 0x46132568 # initialize rs2
remu x16, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x4b3481e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe1c35f41 # initialize rs1
li x4, 0xe1bc69c8 # initialize rs2
remu x23, x10, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x66804456 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x46e2ffcc # initialize rs1
li x14, 0xd82636af # initialize rs2
remu x10, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xd7697958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc7de25e8 # initialize rs1
li x26, 0xe32897c7 # initialize rs2
remu x31, x12, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x897fe17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1fa99fb6 # initialize rs1
li x5, 0x228de55b # initialize rs2
remu x31, x13, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xb20e0e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1af77192 # initialize rs1
li x27, 0x12b89d0b # initialize rs2
remu x11, x14, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0x7b39e163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f94282f # initialize rs1
li x29, 0x710dd396 # initialize rs2
remu x28, x15, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0xd50f73ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb8531f12 # initialize rs1
li x11, 0x14884153 # initialize rs2
remu x17, x16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x80637622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd3c52de1 # initialize rs1
li x27, 0xd007539a # initialize rs2
remu x18, x17, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x6e31908e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7dee9872 # initialize rs1
li x20, 0x0e739f89 # initialize rs2
remu x10, x18, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x11, 0x99b6af16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3d3cbdee # initialize rs1
li x7, 0x5d017ba5 # initialize rs2
remu x11, x19, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0x30e51cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc0165bf0 # initialize rs1
li x24, 0xb99799da # initialize rs2
remu x16, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0xe9a449d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x75cd9ac1 # initialize rs1
li x10, 0xa1ba9486 # initialize rs2
remu x7, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0xb4899cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2906958d # initialize rs1
li x16, 0x5b997bc6 # initialize rs2
remu x18, x22, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x42a17e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5f491ad5 # initialize rs1
li x31, 0x967f7168 # initialize rs2
remu x4, x23, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0xc529aaed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd2534bb8 # initialize rs1
li x12, 0xe6092861 # initialize rs2
remu x18, x24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0xdcf25b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4c595094 # initialize rs1
li x11, 0x0eccac35 # initialize rs2
remu x16, x25, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xb99918ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcb9c17b9 # initialize rs1
li x17, 0x8df5ef19 # initialize rs2
remu x1, x26, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0xf4149b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xeca8ce7b # initialize rs1
li x25, 0x8f40e9b8 # initialize rs2
remu x29, x27, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x8eaef88b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x75cc7499 # initialize rs1
li x16, 0x14bb6992 # initialize rs2
remu x11, x28, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x970d6dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb202c42b # initialize rs1
li x9, 0x95dc3a19 # initialize rs2
remu x23, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0xd08147f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x395c896e # initialize rs1
li x31, 0x90faa099 # initialize rs2
remu x10, x30, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0xa9a5240c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x378e4e6a # initialize rs1
li x23, 0x797deeea # initialize rs2
remu x28, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xd3025616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa5691f0c # initialize rs1
li x0, 0x1fa38539 # initialize rs2
remu x27, x24, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x4917c571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xce9669fe # initialize rs1
li x1, 0xb96164d1 # initialize rs2
remu x16, x22, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xfc5a6d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd09f8664 # initialize rs1
li x2, 0xaae5c46d # initialize rs2
remu x3, x18, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x82682255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x27cead73 # initialize rs1
li x3, 0xb63862fc # initialize rs2
remu x30, x9, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x5d655f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x41a45f9a # initialize rs1
li x4, 0xb022920d # initialize rs2
remu x2, x24, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x6, 0xecb9cb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x79e33e21 # initialize rs1
li x5, 0xf56105d1 # initialize rs2
remu x6, x7, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x5, 0x3fa8b0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f1bbb42 # initialize rs1
li x6, 0x64595094 # initialize rs2
remu x5, x16, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x12, 0x1935ec14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdf8ffe47 # initialize rs1
li x7, 0xfb53c275 # initialize rs2
remu x12, x16, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x910278e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd2e68254 # initialize rs1
li x8, 0xf847d201 # initialize rs2
remu x13, x28, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x92a7d6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x26bb8a5c # initialize rs1
li x9, 0x84ee0f63 # initialize rs2
remu x14, x6, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x36c497d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb222576b # initialize rs1
li x10, 0x6ced8b66 # initialize rs2
remu x4, x26, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x4980a01d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x15a27eb9 # initialize rs1
li x11, 0x3cce5a56 # initialize rs2
remu x14, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0xe036adbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x71cf951c # initialize rs1
li x12, 0xac836991 # initialize rs2
remu x7, x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0xb6c447a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf4e29b74 # initialize rs1
li x13, 0x91106712 # initialize rs2
remu x7, x3, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0xa849403b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x72c10010 # initialize rs1
li x14, 0xfae69f52 # initialize rs2
remu x8, x23, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0xf836c88b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8efd8fe8 # initialize rs1
li x15, 0x0af84c82 # initialize rs2
remu x12, x6, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0xdb7223ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf1bcd01d # initialize rs1
li x16, 0x19ecc048 # initialize rs2
remu x1, x28, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xbf899c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x62365407 # initialize rs1
li x17, 0x632d3dae # initialize rs2
remu x26, x18, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xe19b14db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe88d80d2 # initialize rs1
li x18, 0x950672ea # initialize rs2
remu x7, x17, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x2, 0xbf52b3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf9d75511 # initialize rs1
li x19, 0x3803bc9d # initialize rs2
remu x2, x22, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xa0fee298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x341536fd # initialize rs1
li x20, 0xd7b1b4f5 # initialize rs2
remu x18, x9, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x6ed55ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x81faaa45 # initialize rs1
li x21, 0x5bf885ae # initialize rs2
remu x28, x23, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x36eb413a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb4e20677 # initialize rs1
li x22, 0x1868b6d7 # initialize rs2
remu x10, x18, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x997c9cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x57acc31f # initialize rs1
li x23, 0x74d98c83 # initialize rs2
remu x5, x28, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x85e7469c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x58efacc5 # initialize rs1
li x24, 0xa0d1d75f # initialize rs2
remu x13, x1, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0x8d0f3fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x46aef286 # initialize rs1
li x25, 0xfc55204d # initialize rs2
remu x23, x3, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xb991e25c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcebcf508 # initialize rs1
li x26, 0x5f263bd8 # initialize rs2
remu x30, x12, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x4, 0xbfa34a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf314f1f8 # initialize rs1
li x27, 0x2b5afa75 # initialize rs2
remu x4, x23, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x9b646277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe1afe028 # initialize rs1
li x28, 0xc0d8c4ad # initialize rs2
remu x22, x20, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x7f001172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x496dcfd0 # initialize rs1
li x29, 0x1c9f1934 # initialize rs2
remu x26, x4, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0xa78b43c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2bd7e7d4 # initialize rs1
li x30, 0x8be19f65 # initialize rs2
remu x21, x16, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x629343b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe6de9d9a # initialize rs1
li x31, 0x4818266f # initialize rs2
remu x19, x15, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x276c8cdb)
li x5, 0x6e30dd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6e30dd35 # initialize rs1
li x0, 0x179828eb # initialize rs2
remu x5, x12, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x45dd285c)
li x22, 0x45dd285c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x45dd285c # initialize rs1
li x29, 0x45dd285c # initialize rs2
remu x22, x0, x29 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x39f7442c)
li x6, 0x010a8fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x39f7442c # initialize rs1
li x9, 0x39f7442c # initialize rs2
remu x6, x31, x9 # perform operation

# Testcase cmp_gpr_hazard raw test
remu x19, x2, x26 # perform first operation
remu x17, x19, x15 # perform second operation

# Testcase cmp_gpr_hazard raw test
remu x31, x1, x27 # perform first operation
remu x6, x4, x31 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x13, x23, x4 # perform first operation
remu x13, x1, x23 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x26, x25, x5 # perform first operation
remu x26, x22, x7 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x1, x14, x3 # perform first operation
remu x14, x4, x24 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x1, x13, x26 # perform first operation
remu x26, x12, x30 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xa74fe374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x0, 0x2a632129 # initialize rs2
remu x10, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x75a907df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
remu x22, x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x95df17ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
remu x17, x1, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0x9e927836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x0, 0xd1661f6c # initialize rs2
remu x24, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x93fe0d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
remu x19, x31, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x2a15d935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
remu x13, x3, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x7f4cfd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x0, 0x008c614f # initialize rs2
remu x13, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xd67c2237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
remu x23, x26, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x6f3d1b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
remu x4, x29, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x8fb4b4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x0, 0x1031530d # initialize rs2
remu x26, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0x1839f699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
remu x21, x15, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x0e6af1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
remu x11, x23, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0xece94af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x0, 0x7b7a5748 # initialize rs2
remu x17, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x18, 0xef6464aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
remu x18, x22, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0xf83013e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x22, x9, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x8a4407b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x0, 0x7e11566d # initialize rs2
remu x30, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x179c7cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
remu x5, x2, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xadccdc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
remu x28, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0x10e20af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x0, 0xc46a0d66 # initialize rs2
remu x22, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x09be59b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x30, x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x03050e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
remu x31, x7, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x15, 0x40578aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x0, 0xb3095c4c # initialize rs2
remu x15, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0x41f7c31a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x21, x23, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0x3328adc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
remu x6, x23, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x81763ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x0, 0x9669fa38 # initialize rs2
remu x12, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xbf5c4b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
remu x1, x6, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x13413471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
remu x10, x26, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x6, 0x8aaab4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x0, 0x18b793e0 # initialize rs2
remu x6, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x7, 0xbab1b18b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x7, x30, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x4f355dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
remu x19, x31, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x70b2fbf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x0, 0x5778b39d # initialize rs2
remu x14, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x2e01ce40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
remu x10, x19, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x8c7bb4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
remu x8, x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xbbd9251a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x0, 0x4c3f95de # initialize rs2
remu x5, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xe8b0334c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
remu x5, x26, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x4, 0x1937020d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
remu x4, x8, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0xec924524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x25, 0x81b9fd86 # initialize rs2
remu x26, x3, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x6156530f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x12, 0xb852b819 # initialize rs2
remu x8, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x444ecb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x2, 0xf6e971bd # initialize rs2
remu x23, x28, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x33f437f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x12, 0x88b21870 # initialize rs2
remu x6, x4, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x908e7128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x6, 0x3486c765 # initialize rs2
remu x8, x9, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0xc5769a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x31, 0xf0f13b38 # initialize rs2
remu x18, x29, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0xfcd87a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x18, 0xa62e04cb # initialize rs2
remu x10, x13, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x6f42d026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x20, 0xa03237e4 # initialize rs2
remu x9, x23, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0x47fa7aea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x21, 0x4bfec38e # initialize rs2
remu x16, x29, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x20, 0x52562bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x12, 0x90bcf8b3 # initialize rs2
remu x20, x3, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xf2b5fd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x7, 0x42e13d3c # initialize rs2
remu x14, x24, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x17, 0x069090c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x24, 0xd07c4a2a # initialize rs2
remu x17, x14, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x82c5d3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3f765926 # initialize rs1
li x31, 0x00000000 # initialize rs2
remu x10, x3, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0xa2f939c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0c4d15c9 # initialize rs1
li x27, 0x00000001 # initialize rs2
remu x20, x19, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0xea123a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd68d9114 # initialize rs1
li x15, 0x00000002 # initialize rs2
remu x2, x16, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x933bfd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xacb17774 # initialize rs1
li x9, 0x80000000 # initialize rs2
remu x16, x18, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x7c782646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb3dd0536 # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x16, x28, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x03cf6754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe881d393 # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x30, x21, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x29, 0x87300d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8981d9c0 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
remu x29, x4, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0xa7ca8438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1cb559ef # initialize rs1
li x7, 0xffffffff # initialize rs2
remu x1, x14, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x378b97e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1cf2e1b9 # initialize rs1
li x3, 0xfffffffe # initialize rs2
remu x6, x22, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x21, 0xe96467b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc012cbda # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
remu x21, x30, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0x7982447b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x53f6e97c # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
remu x13, x9, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0xb42c212a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2210d296 # initialize rs1
li x5, 0x55555555 # initialize rs2
remu x18, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x98b02044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
remu x6, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x10, 0x791314a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
remu x10, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x95c22b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
remu x28, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x131fa063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
remu x2, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x12, 0xa604d7da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
remu x12, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x2, 0x945cc62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
remu x2, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x4419d4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
remu x3, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x4371d522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
remu x11, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x42d206f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x1, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x18, 0x3f967404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
remu x18, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x7, 0x87a25be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
remu x7, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x21, 0xdc8aecaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x21, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x7ca4506a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
remu x25, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x82c1e190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
remu x14, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0xb0cc902f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
remu x27, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0x524a460f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x30, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x10, 0x092c8dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
remu x10, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x13, 0x40cb659b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x13, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x23, 0xe308eeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x23, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x13, 0x32a908fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
remu x13, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x6e0bcc8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
remu x28, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x26, 0xc66f3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
remu x26, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x6ff4cb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
remu x9, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x27, 0x3d37b6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
remu x27, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x338db19c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
remu x23, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0xe6dd3a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
remu x27, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x69d0710b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
remu x21, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0xd9b2e427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x22, 0x80000000 # initialize rs2
remu x2, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x8cebe78d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x12, 0x80000001 # initialize rs2
remu x16, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0xb6e0701e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x14, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x3, 0x5d270e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x3, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x48838176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x14, 0xffffffff # initialize rs2
remu x17, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x56ce7282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
remu x17, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x3, 0x769deae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
remu x3, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x18, 0xf1443e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
remu x18, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x29, 0x4efd494c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
remu x29, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x4, 0x5e2f608d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
remu x4, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0xa713b44f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x7, 0x00000001 # initialize rs2
remu x1, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0xf6df3463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
remu x29, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x8, 0x161f5b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
remu x8, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x5ba466e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
remu x28, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x25, 0x0b5d5180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x25, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x28, 0x7f6a4c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
remu x28, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x155569b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x23, 0xffffffff # initialize rs2
remu x8, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0xab105d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
remu x23, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x8, 0x4cc05047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x8, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x26, 0x9759aa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
remu x26, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x8, 0x4c936b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x8, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x6dc39e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
remu x13, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x27, 0xa6da9bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
remu x27, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x5ac192c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
remu x31, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x3, 0xb4c55247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
remu x3, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0xf4f8a6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
remu x8, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x24, 0xe963aebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
remu x24, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x22, 0x462fb83b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
remu x22, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x25, 0x9f2a59eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x25, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x8, 0x60cc9210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x8, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x28, 0xb2925275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
remu x28, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x8, 0x46b4134a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
remu x8, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0xd3927ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
remu x8, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0xbacd5560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
remu x12, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x15, 0x53b86512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
remu x15, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x8, 0xdc312074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
remu x8, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x2, 0x78a5502f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
remu x2, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x30, 0x44a6023c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
remu x30, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0xaa9ae6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
remu x21, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x12, 0x3b7c967d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x12, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0x62c3294c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x30, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x13, 0xfd6f55bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x13, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x22, 0x717ba9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
remu x22, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0xfbfb6b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
remu x25, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0xe0fc5da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
remu x17, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0xac5871f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
remu x26, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x12, 0xef994a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
remu x12, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0xd436355b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
remu x28, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x19, 0x90b017da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x2, 0x80000000 # initialize rs2
remu x19, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x11, 0xda339cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
remu x11, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x567abe9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
remu x30, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x04c153c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
remu x7, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x1, 0x374386f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
remu x1, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0xad82dc3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
remu x1, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x18, 0x2d5150e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
remu x18, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0xc0d659f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
remu x21, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x27, 0xe3ca6dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
remu x27, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x77b76db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
remu x6, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xcc3f5854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
remu x27, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x20, 0x66906655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
remu x20, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xd2ac5945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x8, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0x4ef2fa09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x11, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x3, 0x1e570def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x3, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x14, 0x5f239626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
remu x14, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x6c7170df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
remu x30, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xb6efc843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x4, 0xfffffffe # initialize rs2
remu x5, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x27, 0x201a5ec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
remu x27, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x14, 0xdc24b9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
remu x14, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xebb164fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
remu x24, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x2, 0x12d6df57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x14, 0x00000000 # initialize rs2
remu x2, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfc38dad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
remu x13, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x659a35c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
remu x31, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xefd4b117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x20, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xd73cb2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x27, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0x3f43b5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
remu x23, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0xc361d6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
remu x11, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfbdb7873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
remu x13, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0x84e6f337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
remu x17, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x15, 0x788f05ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x15, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x4, 0xd787347a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
remu x4, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x17, 0xed3997a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
remu x17, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x4, 0x0705d15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x19, 0x00000000 # initialize rs2
remu x4, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x26, 0xc5e9b586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x24, 0x00000001 # initialize rs2
remu x26, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x13, 0x6e01035e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x28, 0x00000002 # initialize rs2
remu x13, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x2, 0xbd8f2c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x14, 0x80000000 # initialize rs2
remu x2, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x12, 0x9475ba87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x27, 0x80000001 # initialize rs2
remu x12, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x8, 0x97870c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x15, 0x7fffffff # initialize rs2
remu x8, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x25, 0x19738e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
remu x25, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x18, 0xce4d9270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x3, 0xffffffff # initialize rs2
remu x18, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x2, 0x4b475aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x30, 0xfffffffe # initialize rs2
remu x2, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x11, 0xe8d8d04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
remu x11, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x2, 0x99df7c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
remu x2, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x10, 0xf69bc76e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x8, 0x55555555 # initialize rs2
remu x10, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x7, 0xf2689346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x4, 0x00000000 # initialize rs2
remu x7, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xe82d5683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
remu x29, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x27, 0x95e0ea97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x22, 0x00000002 # initialize rs2
remu x27, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x15, 0x9d3983ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x11, 0x80000000 # initialize rs2
remu x15, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0x1ab7d30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0x80000001 # initialize rs2
remu x22, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0x3d44d72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x28, 0x7fffffff # initialize rs2
remu x27, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x5, 0x9291f21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x31, 0x7ffffffe # initialize rs2
remu x5, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xfcf6500e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
remu x31, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xdacc804e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x13, 0xfffffffe # initialize rs2
remu x12, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x26, 0xbff5478b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
remu x26, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x26, 0xe870cde3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
remu x26, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xf1a87995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x55555555 # initialize rs2
remu x3, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x14, 0xd1e03009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
remu x14, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x8, 0xe73d58e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x11, 0x00000001 # initialize rs2
remu x8, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x10, 0x89a274ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x7, 0x00000002 # initialize rs2
remu x10, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x10, 0x6fb8e873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x3, 0x80000000 # initialize rs2
remu x10, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x1, 0x5326ceed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x1, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x7, 0x57002d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x9, 0x7fffffff # initialize rs2
remu x7, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x11, 0x5edade40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x11, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x07872f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x24, 0xffffffff # initialize rs2
remu x3, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x7500ec45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
remu x21, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x10, 0xd629b203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
remu x10, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0xb8af9327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
remu x28, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x24, 0x8ec3a07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
remu x24, x8, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7bf01fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcd559c74 # initialize rs1
li x15, 0x79b326ea # initialize rs2
remu x0, x0, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3ea7dc88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe84bb944 # initialize rs1
li x8, 0x60202d84 # initialize rs2
remu x1, x1, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xecf98b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb5286140 # initialize rs1
li x26, 0x01bc73df # initialize rs2
remu x2, x2, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc208314c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x359b82ec # initialize rs1
li x14, 0xf3f2d21b # initialize rs2
remu x3, x3, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xa1ab3ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7e7179c2 # initialize rs1
li x17, 0x9307f716 # initialize rs2
remu x4, x4, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x61f8fccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2650504c # initialize rs1
li x26, 0x85ceb539 # initialize rs2
remu x5, x5, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x6008e44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0d888571 # initialize rs1
li x7, 0x2094cab3 # initialize rs2
remu x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xa0c3e294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3c6d42c5 # initialize rs1
li x15, 0x844e3287 # initialize rs2
remu x7, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd61928f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ec702be # initialize rs1
li x4, 0xb9f824f9 # initialize rs2
remu x8, x8, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc63dce2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd3e06ed7 # initialize rs1
li x28, 0xf6b0ea78 # initialize rs2
remu x9, x9, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8cb483f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4e8115c0 # initialize rs1
li x19, 0x50a28f77 # initialize rs2
remu x10, x10, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9f39d007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x63ee2a27 # initialize rs1
li x2, 0x9c605d54 # initialize rs2
remu x11, x11, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8890f1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe717c508 # initialize rs1
li x6, 0x67a2bcea # initialize rs2
remu x12, x12, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3d749be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeffaa3b4 # initialize rs1
li x2, 0xc3266818 # initialize rs2
remu x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdc563504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x486207f9 # initialize rs1
li x12, 0xd014f523 # initialize rs2
remu x14, x14, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbefb7020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4260431f # initialize rs1
li x22, 0x3daccb57 # initialize rs2
remu x15, x15, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x09948f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa11f7b58 # initialize rs1
li x29, 0x1ddf1270 # initialize rs2
remu x16, x16, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x91b5144d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x64aeda2b # initialize rs1
li x21, 0x016b2019 # initialize rs2
remu x17, x17, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x9b6f3c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bc15476 # initialize rs1
li x22, 0x6763a00c # initialize rs2
remu x18, x18, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9afebed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe12a13d0 # initialize rs1
li x17, 0xe69e40e5 # initialize rs2
remu x19, x19, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbee15882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf563e6dc # initialize rs1
li x11, 0x49b4e6b8 # initialize rs2
remu x20, x20, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9706f2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8f56a2df # initialize rs1
li x14, 0x58d36ed0 # initialize rs2
remu x21, x21, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x83eb39b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x13f588a7 # initialize rs1
li x19, 0x0d0dba2c # initialize rs2
remu x22, x22, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb596b69f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x66cbc5da # initialize rs1
li x21, 0x51d9a1db # initialize rs2
remu x23, x23, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb0dbdb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8f0d6903 # initialize rs1
li x15, 0x3c4d4394 # initialize rs2
remu x24, x24, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf5bdb6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x41724494 # initialize rs1
li x27, 0x7c2dd88b # initialize rs2
remu x25, x25, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf9e899e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x626aeef7 # initialize rs1
li x15, 0xb9457f06 # initialize rs2
remu x26, x26, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe80ae1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x089b2a42 # initialize rs1
li x26, 0x99c3e417 # initialize rs2
remu x27, x27, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa78edc4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x539663a9 # initialize rs1
li x31, 0x04328da7 # initialize rs2
remu x28, x28, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcc079c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc5bd0b6b # initialize rs1
li x28, 0x8f632247 # initialize rs2
remu x29, x29, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xce657c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1aedb75a # initialize rs1
li x22, 0xe6f3d9e7 # initialize rs2
remu x30, x30, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa45f69e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc8a163aa # initialize rs1
li x5, 0x4f8381da # initialize rs2
remu x31, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xeb5ed1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0a514329 # initialize rs1
li x0, 0xce320ab7 # initialize rs2
remu x0, x27, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa24e1c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x73ca05c7 # initialize rs1
li x1, 0x082cb0ec # initialize rs2
remu x1, x26, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x409f6601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf823df79 # initialize rs1
li x2, 0xfa829071 # initialize rs2
remu x2, x27, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x5d62ea45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb86e08aa # initialize rs1
li x3, 0x647aa03d # initialize rs2
remu x3, x5, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xa04694d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x299fff83 # initialize rs1
li x4, 0x34a55723 # initialize rs2
remu x4, x24, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xb91e87d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa435f3b2 # initialize rs1
li x5, 0xf554d494 # initialize rs2
remu x5, x2, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf76941f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1ef97f1a # initialize rs1
li x6, 0x8b7eed7a # initialize rs2
remu x6, x19, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xd597da6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdaf7c721 # initialize rs1
li x7, 0x2997aa19 # initialize rs2
remu x7, x28, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x12a60447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa382f008 # initialize rs1
li x8, 0x72d8e94d # initialize rs2
remu x8, x29, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x59996ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6e423ee6 # initialize rs1
li x9, 0x7d4e22c8 # initialize rs2
remu x9, x2, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xf1b02af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x25c8d919 # initialize rs1
li x10, 0x5cf8cf08 # initialize rs2
remu x10, x31, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xf5a6d98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x696e208b # initialize rs1
li x11, 0xd3edf3d8 # initialize rs2
remu x11, x27, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x40d06edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf5d303f6 # initialize rs1
li x12, 0x2b09c879 # initialize rs2
remu x12, x5, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x74ce89ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7dfdf9ac # initialize rs1
li x13, 0x1436d687 # initialize rs2
remu x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xfac8143f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0267222a # initialize rs1
li x14, 0xb8303051 # initialize rs2
remu x14, x4, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xf08b53f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3e508d30 # initialize rs1
li x15, 0xe8a692a7 # initialize rs2
remu x15, x1, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xe46a801f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb3bcc99c # initialize rs1
li x16, 0x285e3297 # initialize rs2
remu x16, x28, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xcd8d8620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb6f2f193 # initialize rs1
li x17, 0x858eafb3 # initialize rs2
remu x17, x25, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x7d027281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcc514a1d # initialize rs1
li x18, 0xbd17f36a # initialize rs2
remu x18, x27, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x3b1ead8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf7f8a910 # initialize rs1
li x19, 0xcfa0c8c9 # initialize rs2
remu x19, x25, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x03481115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0d36c154 # initialize rs1
li x20, 0xb520d834 # initialize rs2
remu x20, x29, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa504f839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55386abf # initialize rs1
li x21, 0x9879936d # initialize rs2
remu x21, x14, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x1b47fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x623dc3f6 # initialize rs1
li x22, 0xcb3fdc87 # initialize rs2
remu x22, x15, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x50a784e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb4e0dcb0 # initialize rs1
li x23, 0xefca80a6 # initialize rs2
remu x23, x13, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xa12100b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb60ca022 # initialize rs1
li x24, 0x20d16bf8 # initialize rs2
remu x24, x31, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xe6e98bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x79259c24 # initialize rs1
li x25, 0xba5c3d67 # initialize rs2
remu x25, x24, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9c3111de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd5104b6c # initialize rs1
li x26, 0xffb6410e # initialize rs2
remu x26, x18, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xe205fe1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9f9cabc4 # initialize rs1
li x27, 0xd34e5420 # initialize rs2
remu x27, x18, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x4a5998bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1b798a16 # initialize rs1
li x28, 0xfd4e1ac7 # initialize rs2
remu x28, x23, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x91661284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb34c409b # initialize rs1
li x29, 0xa785e1a5 # initialize rs2
remu x29, x7, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xcbd063ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9d18ddfe # initialize rs1
li x30, 0x8c34dea8 # initialize rs2
remu x30, x18, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xbe6598c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfff98890 # initialize rs1
li x31, 0x1325ab48 # initialize rs2
remu x31, x4, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x97698325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcf4ffac0 # initialize rs1
li x0, 0x46fd468b # initialize rs2
remu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x0a309600 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe3cde135 # initialize rs1
li x1, 0xb86f777e # initialize rs2
remu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x724bb90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfd4da0da # initialize rs1
li x2, 0xf23be004 # initialize rs2
remu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x48c5c387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0ac275ee # initialize rs1
li x3, 0x4f4509a8 # initialize rs2
remu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x264b96cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7a4d49f5 # initialize rs1
li x4, 0x4a1209f5 # initialize rs2
remu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x481d9446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xecb85438 # initialize rs1
li x5, 0xa551811b # initialize rs2
remu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xe3246b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x01d7c996 # initialize rs1
li x6, 0x31f1b59d # initialize rs2
remu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x4c04af0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xff8e35a6 # initialize rs1
li x7, 0xce27ecbc # initialize rs2
remu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfabdab4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89e2b272 # initialize rs1
li x8, 0x5fe27471 # initialize rs2
remu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6be20d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a90613a # initialize rs1
li x9, 0xae7687b3 # initialize rs2
remu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xda6850a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd830d61d # initialize rs1
li x10, 0x8367955e # initialize rs2
remu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf22aaf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd6a01dbf # initialize rs1
li x11, 0x4fe0f857 # initialize rs2
remu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5f53ea10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d40ad58 # initialize rs1
li x12, 0x6f916465 # initialize rs2
remu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb70c7548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x156f5473 # initialize rs1
li x13, 0xc9c37a78 # initialize rs2
remu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x00bd1844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x25aec763 # initialize rs1
li x14, 0xd103e342 # initialize rs2
remu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb5d99c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2470b8d6 # initialize rs1
li x15, 0xd7131471 # initialize rs2
remu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf5d60670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf47932a7 # initialize rs1
li x16, 0xfd72d09d # initialize rs2
remu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5ccff4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x324f48a4 # initialize rs1
li x17, 0x4bade7cd # initialize rs2
remu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc7ab2c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x84e245dc # initialize rs1
li x18, 0x45e808ce # initialize rs2
remu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcc977e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9895f112 # initialize rs1
li x19, 0x008065f4 # initialize rs2
remu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb1842136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4c8d1b6a # initialize rs1
li x20, 0x71eb38ca # initialize rs2
remu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x42b2d64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x365be181 # initialize rs1
li x21, 0xa012d9a1 # initialize rs2
remu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2ca3165b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x076073cb # initialize rs1
li x22, 0x9a64a27f # initialize rs2
remu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xa606856e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb1d90fdd # initialize rs1
li x23, 0x930c8f7d # initialize rs2
remu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaf54359f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7f8ffb95 # initialize rs1
li x24, 0x95215f13 # initialize rs2
remu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcef87fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd6cdd23a # initialize rs1
li x25, 0x6b9d2e50 # initialize rs2
remu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe19ac2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab33963a # initialize rs1
li x26, 0x8889dc80 # initialize rs2
remu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x48328e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2c190fa2 # initialize rs1
li x27, 0x210e40c1 # initialize rs2
remu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x52777ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2546ea3e # initialize rs1
li x28, 0x50ce8a99 # initialize rs2
remu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x152d86d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x45ffa3f9 # initialize rs1
li x29, 0x7acf667d # initialize rs2
remu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xad8ca59a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe6827e31 # initialize rs1
li x30, 0x76f7bf32 # initialize rs2
remu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xac457ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd4fac456 # initialize rs1
li x31, 0x8a78ac56 # initialize rs2
remu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x4, 0x8223b2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0f4a47b0 # initialize rs1
li x0, 0x88d81ef8 # initialize rs2
remu x4, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x13, 0x63618043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5703a775 # initialize rs1
li x1, 0xdcf229fd # initialize rs2
remu x13, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x28, 0x05a6c4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa3f7b157 # initialize rs1
li x2, 0x5b50dc77 # initialize rs2
remu x28, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x30, 0x6a2ae1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xba50ea69 # initialize rs1
li x3, 0x8d95d0cc # initialize rs2
remu x30, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x1, 0x71570d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x447c8c88 # initialize rs1
li x4, 0x5753f3db # initialize rs2
remu x1, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x26, 0xdcddd777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb18f6d64 # initialize rs1
li x5, 0xf1c5906c # initialize rs2
remu x26, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x31, 0x724759b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6c9a5ce1 # initialize rs1
li x6, 0x1ac6a642 # initialize rs2
remu x31, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x6, 0x9d9a10f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x732cbb42 # initialize rs1
li x7, 0x31f4959a # initialize rs2
remu x6, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x12, 0x86b67cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x92a36855 # initialize rs1
li x8, 0x8b43a01d # initialize rs2
remu x12, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x11, 0xadf1f956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x088a4c46 # initialize rs1
li x9, 0x61f9665d # initialize rs2
remu x11, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x24, 0x11130496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x427294f1 # initialize rs1
li x10, 0xe8a85503 # initialize rs2
remu x24, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x2, 0x73b59ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x49f139b3 # initialize rs1
li x11, 0x7c4f9c9a # initialize rs2
remu x2, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x544e333e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x87d86a5c # initialize rs1
li x12, 0x59cfc6cd # initialize rs2
remu x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x12, 0x24773896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5fa4665b # initialize rs1
li x13, 0x74aef436 # initialize rs2
remu x12, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0xd9a04ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x443e31bc # initialize rs1
li x14, 0x96028a17 # initialize rs2
remu x3, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x29, 0xa6ffdee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7327f6c8 # initialize rs1
li x15, 0x38a6562f # initialize rs2
remu x29, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x6, 0x7af37102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2c51b14d # initialize rs1
li x16, 0x10d3e577 # initialize rs2
remu x6, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x14, 0x13e56e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3e557611 # initialize rs1
li x17, 0xd794f0a3 # initialize rs2
remu x14, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x10, 0x9b253a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc0f2e614 # initialize rs1
li x18, 0x7bdf5237 # initialize rs2
remu x10, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x22, 0x04d002ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc14ef247 # initialize rs1
li x19, 0xca5026c3 # initialize rs2
remu x22, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xffdb130f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x21cdcbbb # initialize rs1
li x20, 0x5623d469 # initialize rs2
remu x20, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc9126e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4102c4ef # initialize rs1
li x21, 0xa13c3409 # initialize rs2
remu x21, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x2, 0x40fcd699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x53a2780c # initialize rs1
li x22, 0x299e7fc0 # initialize rs2
remu x2, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x20, 0xc4dc5993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x04863876 # initialize rs1
li x23, 0xd774d634 # initialize rs2
remu x20, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0x1d23b4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x660bb9cc # initialize rs1
li x24, 0x5547b552 # initialize rs2
remu x31, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x8, 0x79d785fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xea5ba119 # initialize rs1
li x25, 0xa7c40538 # initialize rs2
remu x8, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x19, 0x1211aa40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8647d339 # initialize rs1
li x26, 0x21035b03 # initialize rs2
remu x19, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x23, 0x490bb71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5601b5ef # initialize rs1
li x27, 0x5e1b5fec # initialize rs2
remu x23, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x30, 0x81009bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x08663afe # initialize rs1
li x28, 0x9cfe1419 # initialize rs2
remu x30, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x17, 0xb22b9269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf8b0864d # initialize rs1
li x29, 0xac72b9a1 # initialize rs2
remu x17, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x21, 0x13b6ee83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8adb3937 # initialize rs1
li x30, 0x766728a4 # initialize rs2
remu x21, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x25, 0x59070fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x68b113c7 # initialize rs1
li x31, 0x040c004c # initialize rs2
remu x25, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x20d59715)
li x11, 0x542221ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x20d59715 # initialize rs1
li x12, 0xfaf86069 # initialize rs2
remu x11, x28, x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2076169d)
li x31, 0x92e92800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdf89e963 # initialize rs1
li x23, 0x61773b5c # initialize rs2
remu x31, x12, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x691f85c7)
li x10, 0x04999be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x408152f7 # initialize rs1
li x9, 0x691f85c7 # initialize rs2
remu x10, x6, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3de2b05b)
li x7, 0x5e58df4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x512265c3 # initialize rs1
li x31, 0xc21d4fa5 # initialize rs2
remu x7, x12, x31 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-rem.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x003c3ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc8b1b4fe # initialize rs1
li x2, 0xb1036550 # initialize rs2
rem x0, x18, x2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x481b6025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x839bf88f # initialize rs1
li x28, 0xb2e165e1 # initialize rs2
rem x1, x13, x28 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xae29652c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x84179b56 # initialize rs1
li x14, 0xc31bc1ea # initialize rs2
rem x2, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x76bf2b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd307435a # initialize rs1
li x24, 0x02b12eaf # initialize rs2
rem x3, x9, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x2b72ec70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x71bf951c # initialize rs1
li x15, 0x542918ba # initialize rs2
rem x4, x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x8db2de91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf4720047 # initialize rs1
li x22, 0x9e46c552 # initialize rs2
rem x5, x10, x22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xba4899ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xebd4c03a # initialize rs1
li x28, 0x631c783f # initialize rs2
rem x6, x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x553137b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcfefde41 # initialize rs1
li x28, 0x11e062b0 # initialize rs2
rem x7, x19, x28 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc2db2f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1fa42255 # initialize rs1
li x22, 0x7bd4a2cc # initialize rs2
rem x8, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2ffb54db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc6ef594a # initialize rs1
li x11, 0xb2236c7b # initialize rs2
rem x9, x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb42d7ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3fb03548 # initialize rs1
li x16, 0x690eeb30 # initialize rs2
rem x10, x17, x16 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x42564ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xab01cdb6 # initialize rs1
li x1, 0x1f16cb7c # initialize rs2
rem x11, x31, x1 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xef692277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0e32780a # initialize rs1
li x17, 0x24e10952 # initialize rs2
rem x12, x31, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x48318ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8fc4c71d # initialize rs1
li x21, 0xa6e92456 # initialize rs2
rem x13, x27, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x50b2fda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe7844b77 # initialize rs1
li x31, 0x61b033dd # initialize rs2
rem x14, x30, x31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x11cff1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x840255c3 # initialize rs1
li x4, 0x30b97a2d # initialize rs2
rem x15, x23, x4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x53bbda33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbf631519 # initialize rs1
li x11, 0xea4fa56d # initialize rs2
rem x16, x6, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x45b7d447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80d911fb # initialize rs1
li x19, 0x8e1f254a # initialize rs2
rem x17, x16, x19 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5e2061d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdd0bc99b # initialize rs1
li x30, 0xdc54571a # initialize rs2
rem x18, x23, x30 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x99cb1087 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7b2a7402 # initialize rs1
li x21, 0x25c5952e # initialize rs2
rem x19, x25, x21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xcd4aa934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed3c974f # initialize rs1
li x24, 0x93e20506 # initialize rs2
rem x20, x10, x24 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcc1fc87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb16192b3 # initialize rs1
li x13, 0xe9344b04 # initialize rs2
rem x21, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa0a3d5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x541d6bb2 # initialize rs1
li x1, 0x85252f44 # initialize rs2
rem x22, x29, x1 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf62f93a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xab91a4e1 # initialize rs1
li x27, 0x776e65d3 # initialize rs2
rem x23, x18, x27 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4f1997ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfe797d65 # initialize rs1
li x9, 0xb7d9af2c # initialize rs2
rem x24, x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf4e5c2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x567a9c22 # initialize rs1
li x31, 0x7c94e899 # initialize rs2
rem x25, x14, x31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xaedbbe0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6544ced9 # initialize rs1
li x7, 0x7857fdf6 # initialize rs2
rem x26, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x26e52aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0824d7cf # initialize rs1
li x13, 0xf5eb0f41 # initialize rs2
rem x27, x19, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xd255a839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a1d22a4 # initialize rs1
li x22, 0x4a33a90a # initialize rs2
rem x28, x16, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6adc7aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7bfde838 # initialize rs1
li x8, 0xd426ef31 # initialize rs2
rem x29, x6, x8 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x403e3971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8b2abe71 # initialize rs1
li x6, 0xab6009f5 # initialize rs2
rem x30, x8, x6 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x22482860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7a592424 # initialize rs1
li x20, 0x6dbad2ef # initialize rs2
rem x31, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x10, 0x30a4b46d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x092af65f # initialize rs1
li x3, 0x1677fd66 # initialize rs2
rem x10, x0, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x86f58fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55e54aba # initialize rs1
li x17, 0x9ee69ad9 # initialize rs2
rem x26, x1, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x123a1a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x77c2b846 # initialize rs1
li x27, 0xc4c3dbee # initialize rs2
rem x10, x2, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xb5b00a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0c7ce1ea # initialize rs1
li x28, 0x896ab812 # initialize rs2
rem x16, x3, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x21, 0x6b804e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb7f093e9 # initialize rs1
li x10, 0xc4f92029 # initialize rs2
rem x21, x4, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x24, 0xde5aa7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfd8b8ad0 # initialize rs1
li x7, 0xc1b8a0ee # initialize rs2
rem x24, x5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x4447cddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3cb640aa # initialize rs1
li x8, 0x928bdd6c # initialize rs2
rem x3, x6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0xc142c677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3054cdc2 # initialize rs1
li x22, 0xbac2ecf1 # initialize rs2
rem x5, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x8d189dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x18130049 # initialize rs1
li x19, 0x2010f088 # initialize rs2
rem x9, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0xc5dd1d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6253a6ba # initialize rs1
li x27, 0x8556ca8d # initialize rs2
rem x3, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x267d93d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdac820cd # initialize rs1
li x16, 0x2d6c3682 # initialize rs2
rem x3, x10, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x3e0c51ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7d39be84 # initialize rs1
li x9, 0x5646674c # initialize rs2
rem x4, x11, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xaff38748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfe92ef3b # initialize rs1
li x15, 0x35975ca2 # initialize rs2
rem x13, x12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x54895f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa04f7aa6 # initialize rs1
li x4, 0x91398414 # initialize rs2
rem x10, x13, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0xbc5aed95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3c75a817 # initialize rs1
li x8, 0xfa57dbc5 # initialize rs2
rem x6, x14, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x58f1cdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4793b3db # initialize rs1
li x25, 0x972c602d # initialize rs2
rem x21, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0xaeacd28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf17d8573 # initialize rs1
li x10, 0x45f1d5c3 # initialize rs2
rem x5, x16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x20, 0x84695f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6b2c4e63 # initialize rs1
li x26, 0x456883eb # initialize rs2
rem x20, x17, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x296f9c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8a2daa74 # initialize rs1
li x10, 0xa3a1e708 # initialize rs2
rem x19, x18, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0xd3d3127c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2544bc00 # initialize rs1
li x15, 0x08a6915e # initialize rs2
rem x12, x19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0x29b2eab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaf55e636 # initialize rs1
li x19, 0x243b2dfc # initialize rs2
rem x26, x20, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x71977425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc3a3c481 # initialize rs1
li x25, 0xb22f23d7 # initialize rs2
rem x20, x21, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0xc40ee358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5447674d # initialize rs1
li x16, 0x8e8caecf # initialize rs2
rem x2, x22, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x884fd6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2173c63a # initialize rs1
li x10, 0x558c1928 # initialize rs2
rem x31, x23, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0x760f7e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf2e2e21c # initialize rs1
li x17, 0xa74291e5 # initialize rs2
rem x18, x24, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xf5121f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7d7a0d14 # initialize rs1
li x12, 0x116608f5 # initialize rs2
rem x11, x25, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x9093e62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x30c2e609 # initialize rs1
li x10, 0x2f53eab0 # initialize rs2
rem x1, x26, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0xa7c6b1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe1207a39 # initialize rs1
li x6, 0xa35dfb14 # initialize rs2
rem x13, x27, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0xde454870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe7dd10ef # initialize rs1
li x7, 0xa7fce21b # initialize rs2
rem x21, x28, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x8, 0x7d9a3eec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6a06e865 # initialize rs1
li x5, 0xf93aae7b # initialize rs2
rem x8, x29, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0x71094cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaeb844b1 # initialize rs1
li x11, 0x37eb9852 # initialize rs2
rem x18, x30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x13bb5d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xabe6a5e9 # initialize rs1
li x21, 0x2d83ecbb # initialize rs2
rem x10, x31, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x67a2a02c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b804cbf # initialize rs1
li x0, 0xda6e6a05 # initialize rs2
rem x3, x30, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x4, 0x8411d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe77fcbaa # initialize rs1
li x1, 0x444a5ea2 # initialize rs2
rem x4, x30, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x20730542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5e29785f # initialize rs1
li x2, 0x5ef4f700 # initialize rs2
rem x11, x23, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0xefb1ba8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6bb2d3b8 # initialize rs1
li x3, 0x56ad3a6b # initialize rs2
rem x18, x2, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x30, 0x10ecf4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf56fa93c # initialize rs1
li x4, 0x5251f239 # initialize rs2
rem x30, x22, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x9bb046e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x23fd69c5 # initialize rs1
li x5, 0x4f886e0a # initialize rs2
rem x28, x21, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x12f63e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xac3defc8 # initialize rs1
li x6, 0x3cdfbde2 # initialize rs2
rem x27, x12, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x3, 0x1096a0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc2e96a4b # initialize rs1
li x7, 0xc4c0dbc4 # initialize rs2
rem x3, x1, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0xc5c10233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x065a1413 # initialize rs1
li x8, 0x230c92aa # initialize rs2
rem x10, x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0xa2005d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc961a69b # initialize rs1
li x9, 0x5497bbef # initialize rs2
rem x15, x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x93dce8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x738053a1 # initialize rs1
li x10, 0x7c9f8862 # initialize rs2
rem x8, x30, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x7bbc982d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf71c462d # initialize rs1
li x11, 0x68d3b6fb # initialize rs2
rem x24, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0xf7aae24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3c341935 # initialize rs1
li x12, 0x28b434a6 # initialize rs2
rem x5, x20, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x809e4aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb103f08d # initialize rs1
li x13, 0x72302989 # initialize rs2
rem x14, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0xafc98233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xea5050dd # initialize rs1
li x14, 0xac39652a # initialize rs2
rem x18, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x30eb2067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5d1218b6 # initialize rs1
li x15, 0x8c82b7e0 # initialize rs2
rem x20, x19, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xd74dea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6220b2cb # initialize rs1
li x16, 0xf54b55ae # initialize rs2
rem x27, x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0xdd07d585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf9d2b73e # initialize rs1
li x17, 0xde91706e # initialize rs2
rem x24, x31, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0xd9d5ac4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x977db53c # initialize rs1
li x18, 0xda89e269 # initialize rs2
rem x11, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x4798cc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92fb1d4e # initialize rs1
li x19, 0x39a0efa7 # initialize rs2
rem x24, x17, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x9456fbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae6a6ece # initialize rs1
li x20, 0xc782abf3 # initialize rs2
rem x7, x4, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x45203e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x06326a3a # initialize rs1
li x21, 0xccae5b0f # initialize rs2
rem x18, x4, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x50e877de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x56e4c5f6 # initialize rs1
li x22, 0x9e467a9d # initialize rs2
rem x3, x10, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xcda145a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9409f443 # initialize rs1
li x23, 0x841e3235 # initialize rs2
rem x13, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0x7c46eb65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b9687e8 # initialize rs1
li x24, 0x1175a3ab # initialize rs2
rem x21, x21, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xff5cef78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa9c22754 # initialize rs1
li x25, 0x0e335bfa # initialize rs2
rem x8, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xdcd1f96e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x95c45c7a # initialize rs1
li x26, 0xa08ea276 # initialize rs2
rem x24, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x814aae54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x38aa8a7a # initialize rs1
li x27, 0x8a567d01 # initialize rs2
rem x1, x7, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xeec23286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcc652e44 # initialize rs1
li x28, 0x7d740215 # initialize rs2
rem x14, x3, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x9351492b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5a01f3aa # initialize rs1
li x29, 0xc1b0e065 # initialize rs2
rem x12, x3, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x9e702064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa52ef039 # initialize rs1
li x30, 0xbdce476b # initialize rs2
rem x31, x8, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x8bd681a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5369ab9 # initialize rs1
li x31, 0xa9d33005 # initialize rs2
rem x13, x27, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcee71e85)
li x22, 0x94cb935e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x94cb935e # initialize rs1
li x0, 0x8b0536da # initialize rs2
rem x22, x2, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x3b0628a7)
li x4, 0x3b0628a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3b0628a7 # initialize rs1
li x15, 0x3b0628a7 # initialize rs2
rem x4, x0, x15 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x8464952f)
li x9, 0x971071b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8464952f # initialize rs1
li x8, 0x8464952f # initialize rs2
rem x9, x23, x8 # perform operation

# Testcase cmp_gpr_hazard raw test
rem x22, x4, x1 # perform first operation
rem x23, x22, x19 # perform second operation

# Testcase cmp_gpr_hazard raw test
rem x8, x31, x29 # perform first operation
rem x12, x27, x8 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x11, x7, x24 # perform first operation
rem x11, x14, x10 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x24, x30, x23 # perform first operation
rem x24, x20, x4 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x16, x25, x27 # perform first operation
rem x25, x5, x27 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x31, x11, x23 # perform first operation
rem x23, x7, x11 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0xfda7cee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x0, 0x7e7b699d # initialize rs2
rem x30, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xf8531a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
rem x26, x13, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x387f006f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
rem x29, x13, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x0e39e48f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x0, 0x64363956 # initialize rs2
rem x15, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x20530490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
rem x6, x16, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0xab5ce5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
rem x14, x31, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x72853084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x0, 0xa0095767 # initialize rs2
rem x10, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0xbda14168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
rem x17, x14, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xf8d36337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
rem x3, x17, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x5b4b3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x0, 0xedc40a8b # initialize rs2
rem x9, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x3733dc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
rem x6, x29, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x06b9b11e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
rem x29, x26, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0xd29f0e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x0, 0x3baa8fee # initialize rs2
rem x3, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x0b36eff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
rem x6, x1, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x24, 0x1b09087f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
rem x24, x26, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xce9e497b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x0, 0xb1f5a58c # initialize rs2
rem x11, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x94fbb22c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x30, x22, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x10, 0xa9b344e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x10, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x9a423b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x0, 0x55c08f15 # initialize rs2
rem x31, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0x33856ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
rem x13, x10, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0xafc78b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
rem x23, x4, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x32ad6d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x0, 0x43745a55 # initialize rs2
rem x1, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x569cc47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
rem x17, x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x2695cf7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
rem x22, x16, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0xa2603e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x0, 0xadb7aec2 # initialize rs2
rem x19, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0xf3a5177d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
rem x21, x15, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0x7b9b960a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
rem x17, x19, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x4, 0xe7fc0110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x0, 0x57f8d9bd # initialize rs2
rem x4, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0xaf37fb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
rem x12, x2, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0xd2ff913e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
rem x11, x13, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x11587820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x0, 0x4e7b55e3 # initialize rs2
rem x2, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x630e3cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rem x17, x8, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0x08a90970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
rem x26, x8, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0x77293df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x0, 0x7f3bb254 # initialize rs2
rem x31, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0x619731a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x9, x10, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x20, 0x497fe3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
rem x20, x18, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0xca89503c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x4, 0xcf8d62ef # initialize rs2
rem x1, x13, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0b9bfdf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x28, 0x6e1b56d2 # initialize rs2
rem x23, x5, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x26bc3a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x23, 0x8b3df2ce # initialize rs2
rem x10, x16, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0xa2221f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x3, 0x233bf94a # initialize rs2
rem x10, x22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0x872568ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x4, 0xb43be6ab # initialize rs2
rem x30, x23, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x22, 0x2e56951d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x8, 0x1d408c6c # initialize rs2
rem x22, x26, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x3a920667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x28, 0x59316c6c # initialize rs2
rem x20, x10, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xa357b0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x10, 0xe1b39893 # initialize rs2
rem x28, x22, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x016519fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x31, 0x6f2dc55b # initialize rs2
rem x8, x9, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x30, 0x218892c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x2, 0x87b640fe # initialize rs2
rem x30, x27, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0x02e4581c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x14, 0xf6a89c34 # initialize rs2
rem x3, x5, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x58c17880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x14, 0xd5db817f # initialize rs2
rem x21, x4, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0xdc2801a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x587e516f # initialize rs1
li x2, 0x00000000 # initialize rs2
rem x31, x28, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0d6c79c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9cdd8b81 # initialize rs1
li x15, 0x00000001 # initialize rs2
rem x14, x17, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x2b8d35e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x95acc5cd # initialize rs1
li x29, 0x00000002 # initialize rs2
rem x25, x11, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x63b63c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1ac22f92 # initialize rs1
li x8, 0x80000000 # initialize rs2
rem x16, x26, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0xcb4fda99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x07bad70b # initialize rs1
li x22, 0x80000001 # initialize rs2
rem x27, x19, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0x67454b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2d414ab5 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x6, x22, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x16, 0x720064f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x582dc546 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rem x16, x15, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x9caf3943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa3ba1283 # initialize rs1
li x15, 0xffffffff # initialize rs2
rem x22, x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0x30b93f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdce9862d # initialize rs1
li x4, 0xfffffffe # initialize rs2
rem x30, x29, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x14, 0x0d4eb093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x757b5323 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
rem x14, x8, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0x7aec42cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42d1c2ab # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
rem x19, x6, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xf9fa55a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x926e3882 # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x14, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x60b11d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
rem x2, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0xe23b65bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
rem x2, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0xc39bc0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
rem x24, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x6, 0x7521d1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
rem x6, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x9b2e1c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
rem x10, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x17, 0x91bca56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
rem x17, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x28, 0xb090b9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
rem x28, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x7443e60d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
rem x23, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x622a199d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x29, 0xfffffffe # initialize rs2
rem x3, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x9, 0x9e45c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
rem x9, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x74ef611e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x18, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x28, 0x98f0a70d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
rem x28, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x97b13fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
rem x18, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0xd3a842b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
rem x25, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x25, 0x97a9a98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
rem x25, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x139f0319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
rem x22, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x21, 0xdcac14be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
rem x21, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x19, 0xafb35539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
rem x19, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x13, 0x447f1e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
rem x13, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x5f336119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
rem x6, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0xf71b0315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
rem x30, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x30, 0x4992a57f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
rem x30, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x30, 0x3ecda9ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rem x30, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x16, 0x70797c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
rem x16, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0xab172941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x13, 0x00000000 # initialize rs2
rem x19, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0e06c423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x6, 0x00000001 # initialize rs2
rem x21, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x8328e566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
rem x28, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0xa1b2154c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
rem x23, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x10, 0xc67337f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
rem x10, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x18, 0xdc25c129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
rem x18, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x13, 0xe20b45b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
rem x13, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x945b17e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x18, 0xffffffff # initialize rs2
rem x21, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x1777eeff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x22, 0xfffffffe # initialize rs2
rem x7, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x30, 0x123635d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
rem x30, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0xbf66bd06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
rem x13, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x346693b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
rem x25, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x1a85b8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
rem x18, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x23, 0xb2b64181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x23, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0xd866d1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
rem x5, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x3, 0xa855ab9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
rem x3, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x6d932320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
rem x29, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x16, 0x61d4f6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x16, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x30a9d65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
rem x27, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x12, 0x9a72943c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
rem x12, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x66cfbb8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
rem x5, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x2, 0x2a1c84ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
rem x2, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x18, 0xf195756b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
rem x18, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x27, 0xc40328de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
rem x27, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x4, 0x88441367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
rem x4, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x3, 0x0147cd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
rem x3, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0xb3f21e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x25, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x08137f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
rem x1, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x9f603509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
rem x21, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x4, 0x8e4171eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
rem x4, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x10, 0x4240d7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
rem x10, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x19, 0x6d490b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x26, 0xffffffff # initialize rs2
rem x19, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x9, 0xc075a57c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
rem x9, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x3, 0x90ea684f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
rem x3, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x21, 0xd9e6a0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
rem x21, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x28, 0x486cb8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
rem x28, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x21, 0x4751c674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
rem x21, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x29, 0x74e82a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x29, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x3b4c2cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x2, 0x00000002 # initialize rs2
rem x23, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x4, 0x08dcf10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
rem x4, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x23, 0xb8d835e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
rem x23, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0xd602301d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x29, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x15, 0xcaf79d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
rem x15, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x3d4a99fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
rem x31, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x17, 0x72b40e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
rem x17, x5, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x10, 0x81cfba19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
rem x10, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0xae059d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
rem x16, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x284195c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
rem x18, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x6, 0xa71fc990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
rem x6, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x8, 0x7200d1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
rem x8, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x23, 0xe94f3b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
rem x23, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x23, 0xc73355b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x10, 0x80000000 # initialize rs2
rem x23, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0xf80e4ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x31, 0x80000001 # initialize rs2
rem x30, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x24, 0xf636c3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
rem x24, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x01d87fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rem x31, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x21, 0x9ca68e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
rem x21, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0xd33b5178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
rem x8, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x10, 0x753d8d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
rem x10, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x27, 0xe0f595c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
rem x27, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x19, 0xdb17474c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
rem x19, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0x6ce48b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
rem x24, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xd125d346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
rem x25, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0x527e80fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
rem x28, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0x526da3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
rem x15, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x28, 0xe3c2243d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
rem x28, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0x299aa9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x4, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x13, 0xe1663a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x15, 0x7ffffffe # initialize rs2
rem x13, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0x3c50d8a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
rem x26, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xeadb4617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
rem x15, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x25, 0xd9590a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
rem x25, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffd1cc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
rem x2, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x23, 0x7d1c4bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
rem x23, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x03f2e74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
rem x13, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x2, 0x8d1a3867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
rem x2, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x12, 0x99120e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x12, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x18, 0x791c2991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
rem x18, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0x59de1a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
rem x25, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0x15d8d370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
rem x15, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xd3371ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
rem x31, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x19, 0x151ac2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x4, 0xffffffff # initialize rs2
rem x19, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0x53183aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
rem x23, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x18, 0x9ad2aaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
rem x18, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x5, 0x0a98e0bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rem x5, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x13, 0x95d58c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
rem x13, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x7, 0x3c19a6af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x23, 0x00000000 # initialize rs2
rem x7, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x8, 0xefff0117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x8, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x31, 0x9628c861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x31, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x31, 0xb84ca1be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x5, 0x80000000 # initialize rs2
rem x31, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x22, 0xce45ae92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x24, 0x80000001 # initialize rs2
rem x22, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x29, 0x07c449ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x28, 0x7fffffff # initialize rs2
rem x29, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x8, 0xb73bec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
rem x8, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x19, 0x2a8ed8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x14, 0xffffffff # initialize rs2
rem x19, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x18, 0xb5cd1307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x31, 0xfffffffe # initialize rs2
rem x18, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x13, 0x643662c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
rem x13, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x6, 0x45c4ade4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rem x6, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x14, 0xbc80965b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x27, 0x55555555 # initialize rs2
rem x14, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x31, 0xcfd9668b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
rem x31, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x25, 0x943d650e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x25, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xd22346ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0x00000002 # initialize rs2
rem x18, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0x2d7f6ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
rem x23, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xbf905da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x80000001 # initialize rs2
rem x17, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x18, 0xbbb55784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
rem x18, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x21, 0x4fe420cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x11, 0x7ffffffe # initialize rs2
rem x21, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x30, 0x06bb3d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
rem x30, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xd4b069bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x22, 0xfffffffe # initialize rs2
rem x16, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x29, 0xc61e6cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
rem x29, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x24, 0xed225e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x24, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xbb4d9361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x17, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0x1734656d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x9, 0x00000000 # initialize rs2
rem x17, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0xb96e091e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x7, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x7ec7902d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
rem x29, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x3b15fdc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
rem x25, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x10, 0xf23fa806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x17, 0x80000001 # initialize rs2
rem x10, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x19, 0x15472f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x24, 0x7fffffff # initialize rs2
rem x19, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0xc2427d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
rem x30, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x28, 0x8895a753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
rem x28, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0xd2318815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
rem x31, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x24, 0x14e7a392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
rem x24, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0xaa09f1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x13, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x21066f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
rem x18, x23, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x08658734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc36944ea # initialize rs1
li x22, 0x5f52f343 # initialize rs2
rem x0, x0, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xadb72373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb95a6f73 # initialize rs1
li x27, 0x3127ba25 # initialize rs2
rem x1, x1, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x24525163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd96b6553 # initialize rs1
li x28, 0x1d1cbb78 # initialize rs2
rem x2, x2, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xec1f5bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe1d9b369 # initialize rs1
li x1, 0xb8b38115 # initialize rs2
rem x3, x3, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x91137df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8509af4f # initialize rs1
li x24, 0x6027199d # initialize rs2
rem x4, x4, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x03fbe836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbdf2a30f # initialize rs1
li x27, 0x7d4a1b93 # initialize rs2
rem x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x0f335a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2357a91 # initialize rs1
li x4, 0x71a00398 # initialize rs2
rem x6, x6, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xbd0f189a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x721d6448 # initialize rs1
li x15, 0x567a9d01 # initialize rs2
rem x7, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0fc8c09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6efa1ded # initialize rs1
li x21, 0xf79d1b5a # initialize rs2
rem x8, x8, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9b1477db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7025b3eb # initialize rs1
li x5, 0x64cd4c41 # initialize rs2
rem x9, x9, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x57ac815c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6716e4b4 # initialize rs1
li x1, 0x7ab24053 # initialize rs2
rem x10, x10, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9272025f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b99986e # initialize rs1
li x2, 0x6d45b1dd # initialize rs2
rem x11, x11, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x34559bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdf427a7b # initialize rs1
li x12, 0x91817b08 # initialize rs2
rem x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x61cc752f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe086f331 # initialize rs1
li x29, 0xd2280957 # initialize rs2
rem x13, x13, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbd9bac26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4582f03 # initialize rs1
li x11, 0x0115afd8 # initialize rs2
rem x14, x14, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9b7e6dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3ba1c8c9 # initialize rs1
li x12, 0xa88627c2 # initialize rs2
rem x15, x15, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x603daa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x66149d63 # initialize rs1
li x2, 0x4d410925 # initialize rs2
rem x16, x16, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd0bb90c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x40c33057 # initialize rs1
li x25, 0x46c07eeb # initialize rs2
rem x17, x17, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x397ebefb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xeca36729 # initialize rs1
li x1, 0xb1a32b9f # initialize rs2
rem x18, x18, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb850641e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1c481c8a # initialize rs1
li x2, 0x559b07cb # initialize rs2
rem x19, x19, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x786b144e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd47d0cad # initialize rs1
li x2, 0xbb84d8c1 # initialize rs2
rem x20, x20, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x457d346f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xded7a532 # initialize rs1
li x16, 0x5d2efb74 # initialize rs2
rem x21, x21, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5783b133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbda5ff1e # initialize rs1
li x20, 0x6bcf382f # initialize rs2
rem x22, x22, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x697ea352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd3913865 # initialize rs1
li x25, 0x8ea82af2 # initialize rs2
rem x23, x23, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcb952a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x97a23748 # initialize rs1
li x3, 0x2d1c6101 # initialize rs2
rem x24, x24, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x47f454ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3ecf0c0f # initialize rs1
li x11, 0x1216aa43 # initialize rs2
rem x25, x25, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6125c130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x99ae2138 # initialize rs1
li x4, 0x3cb52dd0 # initialize rs2
rem x26, x26, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe9c275b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x40a967f0 # initialize rs1
li x28, 0xee3d7f9e # initialize rs2
rem x27, x27, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x008773f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9477433c # initialize rs1
li x14, 0xde8ca1b3 # initialize rs2
rem x28, x28, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2ac9b989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5d7da9c1 # initialize rs1
li x14, 0x54e64b21 # initialize rs2
rem x29, x29, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd2586c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb47830cb # initialize rs1
li x20, 0xc8b7d534 # initialize rs2
rem x30, x30, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe9bea2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd98cacc0 # initialize rs1
li x31, 0x6fb813eb # initialize rs2
rem x31, x31, x31 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x044aed48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x86c9fbf0 # initialize rs1
li x0, 0xa66ef1e6 # initialize rs2
rem x0, x1, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x38eff9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x24e53e2c # initialize rs1
li x1, 0x937e70e7 # initialize rs2
rem x1, x11, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xd567e21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3f1b6c02 # initialize rs1
li x2, 0x2e7ae344 # initialize rs2
rem x2, x11, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xff0bdc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4795e06e # initialize rs1
li x3, 0xf58b5694 # initialize rs2
rem x3, x16, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x6bad423d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x452c31e1 # initialize rs1
li x4, 0xd0595c49 # initialize rs2
rem x4, x13, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xac9a6fad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6004d231 # initialize rs1
li x5, 0x5ceb439b # initialize rs2
rem x5, x20, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x2182ff2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1e1ab9b4 # initialize rs1
li x6, 0x0de57b0a # initialize rs2
rem x6, x15, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x978f7f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe7e002de # initialize rs1
li x7, 0xf832af0c # initialize rs2
rem x7, x29, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x89f62ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x64dfff32 # initialize rs1
li x8, 0xec423769 # initialize rs2
rem x8, x3, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xd54714a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x03f7b69d # initialize rs1
li x9, 0x603adbfb # initialize rs2
rem x9, x10, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa7ac8ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3ce85f07 # initialize rs1
li x10, 0xfcdad186 # initialize rs2
rem x10, x16, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xa5a083bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8a30ee05 # initialize rs1
li x11, 0xb1568f58 # initialize rs2
rem x11, x16, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xedc0515f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6d1e8f0e # initialize rs1
li x12, 0xcf2a70d5 # initialize rs2
rem x12, x6, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xee849268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xde068ba0 # initialize rs1
li x13, 0x03006fb5 # initialize rs2
rem x13, x3, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xed6fc00c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcc9ae298 # initialize rs1
li x14, 0x0fd1cf3e # initialize rs2
rem x14, x26, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa5d8ef65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf0f3fce4 # initialize rs1
li x15, 0xe545f1bf # initialize rs2
rem x15, x19, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x13190d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcbe94090 # initialize rs1
li x16, 0x70037457 # initialize rs2
rem x16, x4, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x6a9213e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa0dd756d # initialize rs1
li x17, 0x25a5cdb8 # initialize rs2
rem x17, x22, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x8bdd7ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf91e2bfa # initialize rs1
li x18, 0xf0332e69 # initialize rs2
rem x18, x29, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x23f65646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x178cf556 # initialize rs1
li x19, 0x14dc9c4e # initialize rs2
rem x19, x31, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x8aebb461 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb88b3e38 # initialize rs1
li x20, 0xef5e4c1e # initialize rs2
rem x20, x15, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xfa953dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf176a9c6 # initialize rs1
li x21, 0x2bef5b05 # initialize rs2
rem x21, x5, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xb4898e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x20006a53 # initialize rs1
li x22, 0x3c612728 # initialize rs2
rem x22, x30, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xd2083da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x83677ab6 # initialize rs1
li x23, 0xd12efbfc # initialize rs2
rem x23, x31, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x69129bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3edbc905 # initialize rs1
li x24, 0x8ba3c8a1 # initialize rs2
rem x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x98ffae06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe501c1dd # initialize rs1
li x25, 0xe4f23a31 # initialize rs2
rem x25, x2, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xd75ada3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x677eec04 # initialize rs1
li x26, 0x14713f00 # initialize rs2
rem x26, x6, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xe52ed953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x017fd9dd # initialize rs1
li x27, 0x83dabe89 # initialize rs2
rem x27, x27, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x92d76fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2ff9f7f6 # initialize rs1
li x28, 0xee5da930 # initialize rs2
rem x28, x20, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa6b57605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9bd63b7b # initialize rs1
li x29, 0xad73f0a4 # initialize rs2
rem x29, x11, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x7e81faef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x81ac22f8 # initialize rs1
li x30, 0x78053a50 # initialize rs2
rem x30, x17, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x8bf14b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd936c567 # initialize rs1
li x31, 0xaafed6c0 # initialize rs2
rem x31, x2, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x39b9018f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd54f0c11 # initialize rs1
li x0, 0x68c83776 # initialize rs2
rem x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9e568841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xff7d3f08 # initialize rs1
li x1, 0x6164502e # initialize rs2
rem x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x43a55fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdba8a358 # initialize rs1
li x2, 0x8ded31ec # initialize rs2
rem x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd58649b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6085cb71 # initialize rs1
li x3, 0xe28f3795 # initialize rs2
rem x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xd1f58e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fa17518 # initialize rs1
li x4, 0x51f0f851 # initialize rs2
rem x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x54f272f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xecf5f384 # initialize rs1
li x5, 0x22f425ac # initialize rs2
rem x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb5140db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5a45d41e # initialize rs1
li x6, 0x7fabbebd # initialize rs2
rem x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x7f063e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcf2de7d0 # initialize rs1
li x7, 0xe2b9f0fa # initialize rs2
rem x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x079fd96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x42325d14 # initialize rs1
li x8, 0x938dc8e9 # initialize rs2
rem x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7e8e1700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x728f3885 # initialize rs1
li x9, 0x948b7653 # initialize rs2
rem x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xea2c6d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf63f073 # initialize rs1
li x10, 0xec62ce40 # initialize rs2
rem x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe0e72238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd0a7e4e9 # initialize rs1
li x11, 0x37465514 # initialize rs2
rem x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa3414043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x024a7da9 # initialize rs1
li x12, 0x7113832f # initialize rs2
rem x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x73aa9677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd4d074aa # initialize rs1
li x13, 0xf64a892f # initialize rs2
rem x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x92937476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe3e0771f # initialize rs1
li x14, 0x5e567760 # initialize rs2
rem x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8b05f817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf35ba21f # initialize rs1
li x15, 0x5b3110ff # initialize rs2
rem x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x61e4a86d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89aa0f2a # initialize rs1
li x16, 0xa8dec6de # initialize rs2
rem x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe7a265e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x84071b09 # initialize rs1
li x17, 0xdfb3c4e0 # initialize rs2
rem x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd2d4a1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa572190d # initialize rs1
li x18, 0xe50416f9 # initialize rs2
rem x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0c5ce006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbd1ecf15 # initialize rs1
li x19, 0xab988d5a # initialize rs2
rem x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x52021eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x44826b69 # initialize rs1
li x20, 0xe2a7cfda # initialize rs2
rem x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x55daa6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3c2f6127 # initialize rs1
li x21, 0xb6a79605 # initialize rs2
rem x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb63ea36e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x558b297e # initialize rs1
li x22, 0xcde7a4bb # initialize rs2
rem x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf7825e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8fda8630 # initialize rs1
li x23, 0x35e12fad # initialize rs2
rem x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0fe40c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6149a9c9 # initialize rs1
li x24, 0x47def9a3 # initialize rs2
rem x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3f9f5129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x05ac9f0e # initialize rs1
li x25, 0x7f4428ab # initialize rs2
rem x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2b0ecca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x83822175 # initialize rs1
li x26, 0xa26a548d # initialize rs2
rem x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc9aa336d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4778efe # initialize rs1
li x27, 0x1751030e # initialize rs2
rem x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5ea1be11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3acc5e2c # initialize rs1
li x28, 0x82b120e7 # initialize rs2
rem x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x953cb670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x19e4eefb # initialize rs1
li x29, 0x9e60bd25 # initialize rs2
rem x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0abb7949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x61bafa27 # initialize rs1
li x30, 0xab1d4f3b # initialize rs2
rem x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x48992a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaf464484 # initialize rs1
li x31, 0x131e69b1 # initialize rs2
rem x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x8, 0x21157107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd9fbc7bf # initialize rs1
li x0, 0x0ffd9cc4 # initialize rs2
rem x8, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x21, 0x1d6400e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2cc55de7 # initialize rs1
li x1, 0x8dd67eb4 # initialize rs2
rem x21, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x19, 0xf02f7606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x98bfd2cd # initialize rs1
li x2, 0x4e2ff074 # initialize rs2
rem x19, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x31, 0xe6092e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb218e74e # initialize rs1
li x3, 0x03ba558a # initialize rs2
rem x31, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x1, 0xf75f6a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9cdd6bcf # initialize rs1
li x4, 0x48969cc2 # initialize rs2
rem x1, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0xef61a46f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7e34c5bd # initialize rs1
li x5, 0xb5f54803 # initialize rs2
rem x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x26, 0xe2385ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd8efce72 # initialize rs1
li x6, 0x7fdfd246 # initialize rs2
rem x26, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x19, 0x9910033a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x454bd7be # initialize rs1
li x7, 0x8158afce # initialize rs2
rem x19, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x31, 0x1cd64e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x490aa18b # initialize rs1
li x8, 0x756e671c # initialize rs2
rem x31, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x10, 0xc8158832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x27da4c42 # initialize rs1
li x9, 0xd4ac47fd # initialize rs2
rem x10, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x7, 0x89a66fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaa418ed0 # initialize rs1
li x10, 0x1447e37e # initialize rs2
rem x7, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x9, 0x50f7d2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5c5f918e # initialize rs1
li x11, 0x12c5f78f # initialize rs2
rem x9, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x31, 0x79ac9ecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3f4a24b7 # initialize rs1
li x12, 0x669fe6c4 # initialize rs2
rem x31, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x30, 0xccc83c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd529b4b0 # initialize rs1
li x13, 0xcc7d0e8e # initialize rs2
rem x30, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x8, 0xad27f270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb84553c # initialize rs1
li x14, 0xc4e87812 # initialize rs2
rem x8, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x21, 0xdafd6a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1b2c5599 # initialize rs1
li x15, 0x0c73ae49 # initialize rs2
rem x21, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x17, 0xcf4b6d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc14a0343 # initialize rs1
li x16, 0x9c23b4ba # initialize rs2
rem x17, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x25, 0x56657aff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb5a513a3 # initialize rs1
li x17, 0x98ab4ed1 # initialize rs2
rem x25, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x8, 0x843a0612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6d09aeef # initialize rs1
li x18, 0xe6c42a5d # initialize rs2
rem x8, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x12, 0x44411d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2a6b3dc0 # initialize rs1
li x19, 0xbe3c55ac # initialize rs2
rem x12, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x11, 0x0cedc969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x56ad9f47 # initialize rs1
li x20, 0xaf844aaf # initialize rs2
rem x11, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x15, 0x7e8540ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x60c37b53 # initialize rs1
li x21, 0xeda6c3c6 # initialize rs2
rem x15, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x14, 0xf8b9e410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x19c31ab0 # initialize rs1
li x22, 0x7605aa8d # initialize rs2
rem x14, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x40d016c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x73e8e88a # initialize rs1
li x23, 0xb59dbf73 # initialize rs2
rem x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0x01fddb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa33c4b3b # initialize rs1
li x24, 0x3f552127 # initialize rs2
rem x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x7, 0x4961dbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5e8ba2ac # initialize rs1
li x25, 0x14359449 # initialize rs2
rem x7, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x5, 0x931a86bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8db0e61b # initialize rs1
li x26, 0x0d4b96e5 # initialize rs2
rem x5, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0x86b59011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb2fe8ad8 # initialize rs1
li x27, 0xa4b76929 # initialize rs2
rem x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x11, 0xda40af7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x92bff8f0 # initialize rs1
li x28, 0xb8d76a99 # initialize rs2
rem x11, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0x6f602d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3e093829 # initialize rs1
li x29, 0x015f5d5f # initialize rs2
rem x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x0cbd8a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5cd59ceb # initialize rs1
li x30, 0x48db19d2 # initialize rs2
rem x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x17, 0x96536e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc4172344 # initialize rs1
li x31, 0xf2b79964 # initialize rs2
rem x17, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x35541c6d)
li x15, 0x2dadacd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x35541c6d # initialize rs1
li x29, 0x01b48ae7 # initialize rs2
rem x15, x6, x29 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2da50c44)
li x16, 0xf26523f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd25af3bc # initialize rs1
li x24, 0x3a306b17 # initialize rs2
rem x16, x4, x24 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7becc8b0)
li x1, 0xf641d80d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xce7edab3 # initialize rs1
li x26, 0x7becc8b0 # initialize rs2
rem x1, x7, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x64a07975)
li x27, 0x0eec5a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec1afcec # initialize rs1
li x15, 0x9b5f868b # initialize rs2
rem x27, x23, x15 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-mulhu.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x726c7b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x86115f9c # initialize rs1
li x30, 0xad3c0294 # initialize rs2
mulhu x0, x29, x30 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xff782542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x88f72465 # initialize rs1
li x25, 0xcf4de7eb # initialize rs2
mulhu x1, x11, x25 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x30082539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3eec2cd9 # initialize rs1
li x10, 0x551e6f10 # initialize rs2
mulhu x2, x15, x10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x84c03200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbc96be4e # initialize rs1
li x27, 0x63c44f15 # initialize rs2
mulhu x3, x24, x27 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x94a91b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6f2b29b6 # initialize rs1
li x12, 0x7d087eff # initialize rs2
mulhu x4, x28, x12 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7f73cdce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3e5cfad4 # initialize rs1
li x11, 0x59c48ec8 # initialize rs2
mulhu x5, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x51cd6645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7128b87a # initialize rs1
li x20, 0xbc8b6970 # initialize rs2
mulhu x6, x4, x20 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb41bfa21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f9f8d0c # initialize rs1
li x12, 0x8eb7f048 # initialize rs2
mulhu x7, x22, x12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8daef10f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce0aab26 # initialize rs1
li x12, 0xd7cfcec0 # initialize rs2
mulhu x8, x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf6ed2b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcbaea437 # initialize rs1
li x6, 0x2b8b48a0 # initialize rs2
mulhu x9, x21, x6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9194cf79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3e1b56fa # initialize rs1
li x11, 0x87570eec # initialize rs2
mulhu x10, x17, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x28eb27c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xad5e3fca # initialize rs1
li x19, 0x14d6ca56 # initialize rs2
mulhu x11, x7, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xddb34bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbb8bbd95 # initialize rs1
li x8, 0x20c197eb # initialize rs2
mulhu x12, x1, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x99e39898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5e72bb77 # initialize rs1
li x16, 0xf22155d3 # initialize rs2
mulhu x13, x27, x16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x514649c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x398de0f3 # initialize rs1
li x24, 0xef9ec457 # initialize rs2
mulhu x14, x21, x24 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9971270a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1b38da4b # initialize rs1
li x20, 0x81aebda0 # initialize rs2
mulhu x15, x21, x20 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd5dc850c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5a6f4faa # initialize rs1
li x22, 0x6b4df8de # initialize rs2
mulhu x16, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x66b63a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fd54514 # initialize rs1
li x8, 0x0f4c026a # initialize rs2
mulhu x17, x3, x8 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3360a29e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8a018635 # initialize rs1
li x25, 0xb7042f1a # initialize rs2
mulhu x18, x11, x25 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6b326e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8cec9256 # initialize rs1
li x25, 0xc18d9f9d # initialize rs2
mulhu x19, x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x94d00575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x14f30588 # initialize rs1
li x1, 0xdadfd786 # initialize rs2
mulhu x20, x19, x1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2702a0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0f6e8a57 # initialize rs1
li x22, 0x6fc370ee # initialize rs2
mulhu x21, x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0ff2c4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57125424 # initialize rs1
li x13, 0x9573aec6 # initialize rs2
mulhu x22, x12, x13 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5158730d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x619889bb # initialize rs1
li x17, 0x1aa8dee5 # initialize rs2
mulhu x23, x12, x17 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe48b5404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6722ea85 # initialize rs1
li x12, 0xab7dec8a # initialize rs2
mulhu x24, x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0f578ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa34cd6d3 # initialize rs1
li x27, 0x75b6e340 # initialize rs2
mulhu x25, x5, x27 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xdea8b33c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xefa7bdff # initialize rs1
li x22, 0x4d0bf768 # initialize rs2
mulhu x26, x21, x22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa881bb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3beb7c23 # initialize rs1
li x13, 0x1e5ad4bf # initialize rs2
mulhu x27, x29, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7ba02da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2ada05a8 # initialize rs1
li x17, 0x974f178e # initialize rs2
mulhu x28, x4, x17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2266a777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5d3e1c84 # initialize rs1
li x15, 0x618bf566 # initialize rs2
mulhu x29, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6a47ea8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe1df4d11 # initialize rs1
li x17, 0x901832e6 # initialize rs2
mulhu x30, x25, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x29b1bb33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa9ddbf2e # initialize rs1
li x25, 0xdaf905fb # initialize rs2
mulhu x31, x22, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x12, 0x2d4d1f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7d914f41 # initialize rs1
li x24, 0xf543ef5f # initialize rs2
mulhu x12, x0, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0x18880ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0be42a54 # initialize rs1
li x12, 0xbd1eb98a # initialize rs2
mulhu x5, x1, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xf7fdda2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xae194c40 # initialize rs1
li x9, 0x1a9bbe50 # initialize rs2
mulhu x17, x2, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x8de0d028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbc9b5878 # initialize rs1
li x26, 0xae3e0bbc # initialize rs2
mulhu x27, x3, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x5, 0x2d2cdf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8703a0fb # initialize rs1
li x26, 0x1273e0bc # initialize rs2
mulhu x5, x4, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x12, 0xf7ec0d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb52bde41 # initialize rs1
li x6, 0xe793613d # initialize rs2
mulhu x12, x5, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x19ec7d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdbde1000 # initialize rs1
li x18, 0x34255ccd # initialize rs2
mulhu x12, x6, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x65b651b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe9489971 # initialize rs1
li x11, 0xc1329f05 # initialize rs2
mulhu x30, x7, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x56175509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfb056a9e # initialize rs1
li x21, 0x5ab2cac3 # initialize rs2
mulhu x15, x8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xa294ecd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5ef43a5 # initialize rs1
li x5, 0xfd1770e7 # initialize rs2
mulhu x20, x9, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xafb65cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1372e930 # initialize rs1
li x27, 0x35c83f1a # initialize rs2
mulhu x16, x10, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xb69040c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd931859 # initialize rs1
li x2, 0x89b9da1d # initialize rs2
mulhu x12, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0x71c8da55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x18aa14b0 # initialize rs1
li x2, 0x2dcb67d4 # initialize rs2
mulhu x27, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0xc0ae04b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6d6b4efd # initialize rs1
li x26, 0x330679e8 # initialize rs2
mulhu x3, x13, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xdc516330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5f3021c5 # initialize rs1
li x29, 0x3e6a9838 # initialize rs2
mulhu x5, x14, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x29723742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc5bf3110 # initialize rs1
li x12, 0x18fd62c6 # initialize rs2
mulhu x26, x15, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x5eb1befb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfa2db44f # initialize rs1
li x21, 0xfc09f8e6 # initialize rs2
mulhu x10, x16, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x79ca1ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3eb85215 # initialize rs1
li x6, 0xe699206a # initialize rs2
mulhu x28, x17, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0xaeeb2194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xac7035d7 # initialize rs1
li x7, 0x2aa62fe7 # initialize rs2
mulhu x22, x18, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x4c42214f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x94f55a92 # initialize rs1
li x25, 0x91d46aff # initialize rs2
mulhu x3, x19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0x0b36fe1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xedab7cbd # initialize rs1
li x3, 0xd171abf0 # initialize rs2
mulhu x10, x20, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0xe8bb75b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xee611fa4 # initialize rs1
li x11, 0x25b2133c # initialize rs2
mulhu x10, x21, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0xb48dd3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8b0d4e5f # initialize rs1
li x9, 0x87265ce1 # initialize rs2
mulhu x1, x22, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0xed3ca8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa0d4a155 # initialize rs1
li x24, 0x65e22ac2 # initialize rs2
mulhu x15, x23, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0xcf5a4ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xee0e7903 # initialize rs1
li x25, 0xddd4fbd7 # initialize rs2
mulhu x10, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0xe0858cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf3e0e1f1 # initialize rs1
li x18, 0x6d2c0650 # initialize rs2
mulhu x31, x25, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x57a7007a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8cea1c3f # initialize rs1
li x6, 0xb9a3dde8 # initialize rs2
mulhu x21, x26, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0x13175549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe89ae4b9 # initialize rs1
li x31, 0x84aff7f4 # initialize rs2
mulhu x23, x27, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0x0fe83e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd346875b # initialize rs1
li x10, 0x31b5f1c3 # initialize rs2
mulhu x29, x28, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x3ee8cf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8a25d2f8 # initialize rs1
li x19, 0x791b93ce # initialize rs2
mulhu x27, x29, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xf75b4e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x559bb3c6 # initialize rs1
li x21, 0x9adb06f0 # initialize rs2
mulhu x3, x30, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0xe3bde09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa9418062 # initialize rs1
li x15, 0x32236a7a # initialize rs2
mulhu x17, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x1b226124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbe9a4366 # initialize rs1
li x0, 0x92dfe05a # initialize rs2
mulhu x26, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0xecfb0e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x45dc122d # initialize rs1
li x1, 0xd96b5537 # initialize rs2
mulhu x28, x19, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x1a5c871f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa708f17c # initialize rs1
li x2, 0x1f3a295a # initialize rs2
mulhu x3, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x8d222be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x808e6d05 # initialize rs1
li x3, 0x6c1c5267 # initialize rs2
mulhu x19, x21, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x3, 0xaa86e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9148fc17 # initialize rs1
li x4, 0x9b33516f # initialize rs2
mulhu x3, x29, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x404b3498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3eb8c3ef # initialize rs1
li x5, 0x6b63ee5c # initialize rs2
mulhu x26, x25, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x26, 0xda91398d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf3d9d18e # initialize rs1
li x6, 0xe9929b70 # initialize rs2
mulhu x26, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x27, 0x7343c2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9fcf3a0a # initialize rs1
li x7, 0x4c216335 # initialize rs2
mulhu x27, x22, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0x9edf255d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c7379eb # initialize rs1
li x8, 0x69aa5750 # initialize rs2
mulhu x7, x4, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x0999cf4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x42c4be43 # initialize rs1
li x9, 0x3cfeace0 # initialize rs2
mulhu x10, x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x30e461dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x745dece7 # initialize rs1
li x10, 0xda04b901 # initialize rs2
mulhu x20, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x5bf0ac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xae463c45 # initialize rs1
li x11, 0xae044a38 # initialize rs2
mulhu x23, x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xbfaa5382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdb9a5e62 # initialize rs1
li x12, 0x64b9d295 # initialize rs2
mulhu x17, x28, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x429f1067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x981ff449 # initialize rs1
li x13, 0xf4bbf985 # initialize rs2
mulhu x30, x16, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x258c36d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9d42ee77 # initialize rs1
li x14, 0x279c6d8a # initialize rs2
mulhu x19, x21, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0xcadfef39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe5776386 # initialize rs1
li x15, 0x30a512ec # initialize rs2
mulhu x11, x16, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x75ce8b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3ad94b71 # initialize rs1
li x16, 0x010b8a98 # initialize rs2
mulhu x1, x27, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x222794c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2ed4cd13 # initialize rs1
li x17, 0x36c36ef4 # initialize rs2
mulhu x7, x19, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xe4ec0df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb925d9f9 # initialize rs1
li x18, 0xbf4fcbe9 # initialize rs2
mulhu x10, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0xa3354e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3a825f6c # initialize rs1
li x19, 0xc7a5b219 # initialize rs2
mulhu x26, x23, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xbafa486e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1248d6d8 # initialize rs1
li x20, 0x91b617d6 # initialize rs2
mulhu x26, x19, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x6588e9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb20a4972 # initialize rs1
li x21, 0xb8a4ae0c # initialize rs2
mulhu x9, x14, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0xd1a41359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd90cd938 # initialize rs1
li x22, 0x2ee91058 # initialize rs2
mulhu x16, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xd0d6f3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x488cadc1 # initialize rs1
li x23, 0xff7d2015 # initialize rs2
mulhu x10, x14, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x8111c6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd8945785 # initialize rs1
li x24, 0x84d9e6d1 # initialize rs2
mulhu x15, x28, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xa22786be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x38980109 # initialize rs1
li x25, 0xb7820af4 # initialize rs2
mulhu x20, x15, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xb3886714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x031717e0 # initialize rs1
li x26, 0x57efed76 # initialize rs2
mulhu x22, x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x84e69a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc68229e0 # initialize rs1
li x27, 0xc34625d6 # initialize rs2
mulhu x10, x13, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x7e391a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe34265d1 # initialize rs1
li x28, 0x8fe12be0 # initialize rs2
mulhu x27, x17, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x47cd781e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaa4a0faa # initialize rs1
li x29, 0x90776e6e # initialize rs2
mulhu x14, x31, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x48b053e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08349f44 # initialize rs1
li x30, 0x21301cc5 # initialize rs2
mulhu x13, x29, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x0000dbff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4287f1e8 # initialize rs1
li x31, 0x8f80d953 # initialize rs2
mulhu x30, x27, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x99a22d14)
li x8, 0x383071e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x383071e6 # initialize rs1
li x0, 0x464d9fdb # initialize rs2
mulhu x8, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x8e0abef9)
li x1, 0x8e0abef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8e0abef9 # initialize rs1
li x30, 0x8e0abef9 # initialize rs2
mulhu x1, x0, x30 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x154a1ed7)
li x24, 0xc9051de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x154a1ed7 # initialize rs1
li x1, 0x154a1ed7 # initialize rs2
mulhu x24, x16, x1 # perform operation

# Testcase cmp_gpr_hazard raw test
mulhu x30, x22, x27 # perform first operation
mulhu x31, x30, x15 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulhu x16, x12, x7 # perform first operation
mulhu x6, x11, x16 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x16, x30, x28 # perform first operation
mulhu x16, x5, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x6, x27, x14 # perform first operation
mulhu x6, x9, x15 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x12, x6, x9 # perform first operation
mulhu x6, x18, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x21, x5, x18 # perform first operation
mulhu x18, x23, x30 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0xe2191b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x5, 0xc8f9f230 # initialize rs2
mulhu x10, x24, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0xcf1df61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x1, 0x38ecbe05 # initialize rs2
mulhu x17, x10, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0xabff5f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x28, 0xdd70c2a0 # initialize rs2
mulhu x31, x14, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0xa8e363b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x23, 0x4f825318 # initialize rs2
mulhu x30, x13, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0xa849a8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x30, 0x04012f07 # initialize rs2
mulhu x26, x13, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x3a68e7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x3, 0x72cb2723 # initialize rs2
mulhu x26, x8, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x9a1a1ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x21, 0x9b4230d6 # initialize rs2
mulhu x9, x19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x4bf74667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x30, 0x3e5c9b47 # initialize rs2
mulhu x20, x2, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xe32a0462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x30, 0x1c89a589 # initialize rs2
mulhu x29, x12, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x13, 0x0fc3651f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x17, 0xe9b20578 # initialize rs2
mulhu x13, x30, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0x4f41c573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x27, 0xebc92b61 # initialize rs2
mulhu x2, x7, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0xe8d116b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x13, 0xb1adf299 # initialize rs2
mulhu x26, x16, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xd590e9af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x678ec370 # initialize rs1
li x20, 0x00000000 # initialize rs2
mulhu x29, x9, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0xd4ea5092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4337b442 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x12, x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0x3c3f8dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa83b4191 # initialize rs1
li x7, 0x00000002 # initialize rs2
mulhu x6, x30, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xb1c26074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6d731b53 # initialize rs1
li x30, 0x80000000 # initialize rs2
mulhu x12, x26, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0xa9790b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd7c8179 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulhu x31, x11, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x2872f6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9eca2079 # initialize rs1
li x20, 0x7fffffff # initialize rs2
mulhu x11, x23, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0xc7ee7f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x575fdfdf # initialize rs1
li x21, 0x7ffffffe # initialize rs2
mulhu x19, x3, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x30370164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb460b8f8 # initialize rs1
li x21, 0xffffffff # initialize rs2
mulhu x25, x9, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xb375cdd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x96dcde20 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mulhu x2, x7, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x11, 0x3ff08f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x51d1a4ba # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
mulhu x11, x29, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x3, 0x34877476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5c147995 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mulhu x3, x16, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0x2b3893cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7d700100 # initialize rs1
li x26, 0x55555555 # initialize rs2
mulhu x18, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0xf4bbe459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
mulhu x15, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x62628bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulhu x18, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x8c09c974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
mulhu x21, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x24, 0x894757dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhu x24, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x24, 0x48b7cc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
mulhu x24, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x565e6ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x26, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x12, 0x4b9140e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mulhu x12, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x38ef7fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
mulhu x14, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x6681d12c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
mulhu x5, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x3, 0xe129a86c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
mulhu x3, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x12, 0x56fdac45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
mulhu x12, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x5, 0xdac21f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x18, 0x55555555 # initialize rs2
mulhu x5, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x4c292e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
mulhu x12, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x9f94fb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x27, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x23, 0x44fdd218 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x23, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x4546c6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
mulhu x24, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x052feafb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
mulhu x18, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x1, 0xa9e11787 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x3, 0x7fffffff # initialize rs2
mulhu x1, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0xd0b8e647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
mulhu x19, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x165109b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
mulhu x9, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x8a921b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
mulhu x23, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x30, 0x660e6951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mulhu x30, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x22, 0x30a1df85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mulhu x22, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x3, 0xf655112f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
mulhu x3, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x8593c059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x28, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x654ad910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x16, 0x00000001 # initialize rs2
mulhu x29, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x04609bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x12, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x218837da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rs1
li x16, 0x80000000 # initialize rs2
mulhu x21, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x59b45a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x5, 0x80000001 # initialize rs2
mulhu x20, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x8d9b69b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
mulhu x23, x17, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0xb1685971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
mulhu x2, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0xb5ea9cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x22, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x7f976659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulhu x18, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x16, 0xad4d96cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
mulhu x16, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x30, 0x9325612e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mulhu x30, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x28, 0x950bceb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulhu x28, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x23, 0x0bda4bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
mulhu x23, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x13, 0xb340d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
mulhu x13, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x31, 0x956ec652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
mulhu x31, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x25, 0x44133a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
mulhu x25, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0x0238f075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x4, 0x80000001 # initialize rs2
mulhu x19, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x1ed04da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulhu x8, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x5823a2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mulhu x21, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x338a2f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulhu x27, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x26, 0x0e0a9b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
mulhu x26, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x17, 0x94dae690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulhu x17, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0xc5610cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulhu x20, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0xc24a6af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
mulhu x24, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x99be5b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x1, 0x00000000 # initialize rs2
mulhu x13, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x9fe1d550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
mulhu x29, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x19, 0x89aa91f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
mulhu x19, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0xb4720bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulhu x24, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x5, 0xa8832ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
mulhu x5, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x10, 0xb5a1628b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
mulhu x10, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x8, 0xeba69256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
mulhu x8, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0xc2b7cda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x2, 0xffffffff # initialize rs2
mulhu x12, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x13, 0xd3140ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x13, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x11, 0x4831a378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
mulhu x11, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x12d61a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mulhu x31, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x3826e451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x4, 0x55555555 # initialize rs2
mulhu x18, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x52eca664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
mulhu x17, x14, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x316fd210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
mulhu x12, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x15, 0x0ebcadd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x25, 0x00000002 # initialize rs2
mulhu x15, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x0b59c04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
mulhu x28, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x19, 0x5cf52b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
mulhu x19, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0x7657e97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
mulhu x21, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x11, 0x12dceaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mulhu x11, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x4, 0xf278f25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
mulhu x4, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0xac76c592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x9, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x19, 0xd69b4bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mulhu x19, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x29, 0x3116aa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
mulhu x29, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0xa18b2c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
mulhu x22, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0x4180cf49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x23, x24, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x90b6ee2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
mulhu x19, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x9, 0x9860c009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x23, 0x00000002 # initialize rs2
mulhu x9, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0xd044ede3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
mulhu x6, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x3, 0x8823b74e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
mulhu x3, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x18, 0xbce33a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulhu x18, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x4, 0x72bf03a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mulhu x4, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0xd239d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
mulhu x30, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x6, 0xf11fe1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulhu x6, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x21, 0xf02a23bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulhu x21, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x3c9a52c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mulhu x16, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x31, 0x587eb9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
mulhu x31, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0xdfc45f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
mulhu x21, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x19, 0x8adc042a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x14, 0x00000001 # initialize rs2
mulhu x19, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x0fdc7892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
mulhu x3, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x24, 0xd8b9e655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
mulhu x24, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0xd349ea69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
mulhu x9, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0xb5a2f905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
mulhu x4, x18, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xc0f5e0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
mulhu x30, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x24, 0xd798ba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
mulhu x24, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0xed304e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulhu x18, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x19, 0x828aa623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mulhu x19, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x10, 0xca7eaffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulhu x10, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0x3558e1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhu x11, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x10d7e64e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
mulhu x14, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xc469e8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x4, 0x00000001 # initialize rs2
mulhu x8, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x0284f546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
mulhu x17, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x3, 0xcf9d1fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
mulhu x3, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x11, 0xa2ee8280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
mulhu x11, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xe0a0b5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
mulhu x2, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0x3d044a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulhu x14, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0xd922ac63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
mulhu x25, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x7892a8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
mulhu x2, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x27, 0x7ea06951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
mulhu x27, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x2, 0x44a8d826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
mulhu x2, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x20, 0xe803467f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
mulhu x20, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x2, 0x5a0493da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x8, 0x00000000 # initialize rs2
mulhu x2, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x13, 0x5eac0913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x14, 0x00000001 # initialize rs2
mulhu x13, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x12, 0x55360e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x27, 0x00000002 # initialize rs2
mulhu x12, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x17, 0x7e3763e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhu x17, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x20, 0x2643f01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x16, 0x80000001 # initialize rs2
mulhu x20, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x16, 0xe8c6a578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x5, 0x7fffffff # initialize rs2
mulhu x16, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x27, 0x56bd232a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mulhu x27, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x31, 0xa0af5054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x22, 0xffffffff # initialize rs2
mulhu x31, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x25, 0x62d2d694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mulhu x25, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x31, 0x361b6340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
mulhu x31, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x21, 0xc2d8eb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mulhu x21, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x10, 0xf2f2ffd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x13, 0x55555555 # initialize rs2
mulhu x10, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xf7f93bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
mulhu x21, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0x78f2f41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
mulhu x31, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x14, 0x343a357e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0x00000002 # initialize rs2
mulhu x14, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0x3553906c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x20, 0x80000000 # initialize rs2
mulhu x13, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0x49600ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x13, 0x80000001 # initialize rs2
mulhu x8, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xd0fdfc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # initialize rs1
li x18, 0x7fffffff # initialize rs2
mulhu x8, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x20, 0x5043b230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulhu x20, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xffa471f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
mulhu x5, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0x86a4de98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulhu x27, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x11, 0xd696b20f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
mulhu x11, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x3, 0xe303c173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mulhu x3, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x8, 0x1cbaf61e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x55555555 # initialize rs2
mulhu x8, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x7, 0x6e30c9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x22, 0x00000000 # initialize rs2
mulhu x7, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x26, 0xb9e54d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x5, 0x00000001 # initialize rs2
mulhu x26, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x18, 0x432b50b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
mulhu x18, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x0ec71031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
mulhu x25, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x7dfa3cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulhu x22, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x8, 0x81066aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulhu x8, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x9, 0x106753fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mulhu x9, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0x3103b69a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x13, 0xffffffff # initialize rs2
mulhu x30, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x4abdb74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x8, 0xfffffffe # initialize rs2
mulhu x22, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x20, 0xc169ed18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
mulhu x20, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x21, 0xee9dbde0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
mulhu x21, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0xe82b8635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
mulhu x9, x13, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x456d2cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc7d0f2ae # initialize rs1
li x3, 0x468fb47e # initialize rs2
mulhu x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9bafeaf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x65981572 # initialize rs1
li x12, 0x35c6fe44 # initialize rs2
mulhu x1, x1, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfb6080d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf352aeeb # initialize rs1
li x9, 0xd3ea63bf # initialize rs2
mulhu x2, x2, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa256fb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfb5faad4 # initialize rs1
li x26, 0x82432ad8 # initialize rs2
mulhu x3, x3, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x4a4333f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbc35a08c # initialize rs1
li x17, 0xed653732 # initialize rs2
mulhu x4, x4, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3a852a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4e137b3d # initialize rs1
li x27, 0xcd90bf4b # initialize rs2
mulhu x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xe44c5b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf7aa29e7 # initialize rs1
li x30, 0x842fd90a # initialize rs2
mulhu x6, x6, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x632b74a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x58f85aed # initialize rs1
li x17, 0x831ef865 # initialize rs2
mulhu x7, x7, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdb4f9d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x50eacd29 # initialize rs1
li x3, 0x0fed4102 # initialize rs2
mulhu x8, x8, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x33bdc67a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x856e917a # initialize rs1
li x22, 0x8d346804 # initialize rs2
mulhu x9, x9, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xffb8af0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1de93370 # initialize rs1
li x28, 0x9fad2579 # initialize rs2
mulhu x10, x10, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x84fe074b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1064c2ce # initialize rs1
li x29, 0x7613dc6e # initialize rs2
mulhu x11, x11, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa5aea6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xae89358f # initialize rs1
li x7, 0xac2dd3ba # initialize rs2
mulhu x12, x12, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc8a602ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0c093c41 # initialize rs1
li x5, 0xc860c421 # initialize rs2
mulhu x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb35138e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x45b1edd6 # initialize rs1
li x21, 0xc797c319 # initialize rs2
mulhu x14, x14, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4c2b7c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf5ed0424 # initialize rs1
li x5, 0x5d7b3106 # initialize rs2
mulhu x15, x15, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x82009bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x24965eb2 # initialize rs1
li x6, 0x8676c6a8 # initialize rs2
mulhu x16, x16, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaec9fdc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8407f4d6 # initialize rs1
li x14, 0x94ca00e9 # initialize rs2
mulhu x17, x17, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7e696237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x41745132 # initialize rs1
li x30, 0x3387b74a # initialize rs2
mulhu x18, x18, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x25c3097f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4ab47909 # initialize rs1
li x24, 0x0b8f59bf # initialize rs2
mulhu x19, x19, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfe46f501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x720b2760 # initialize rs1
li x17, 0x9ae33cd0 # initialize rs2
mulhu x20, x20, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2372a586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x03690874 # initialize rs1
li x14, 0x74cf4c3c # initialize rs2
mulhu x21, x21, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x87e48286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8ceb0b9f # initialize rs1
li x27, 0xf85cb158 # initialize rs2
mulhu x22, x22, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4845b1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5e6e4aa6 # initialize rs1
li x21, 0x86a0bc35 # initialize rs2
mulhu x23, x23, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd4772301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xae30f6af # initialize rs1
li x17, 0x468ffa7e # initialize rs2
mulhu x24, x24, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7c541494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a925604 # initialize rs1
li x23, 0x82e5c435 # initialize rs2
mulhu x25, x25, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x35969392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb3b134f8 # initialize rs1
li x15, 0x06d117b4 # initialize rs2
mulhu x26, x26, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xfc0501f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6b98a04a # initialize rs1
li x28, 0x88c17cb1 # initialize rs2
mulhu x27, x27, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2dde084d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf759d305 # initialize rs1
li x18, 0xffad1ef5 # initialize rs2
mulhu x28, x28, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbce95695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbc1993e3 # initialize rs1
li x7, 0x7a076647 # initialize rs2
mulhu x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd3e7c667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7224274c # initialize rs1
li x23, 0x8ccf3447 # initialize rs2
mulhu x30, x30, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xca7133d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x969eec47 # initialize rs1
li x30, 0x121cb219 # initialize rs2
mulhu x31, x31, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xc2ce7bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5510b112 # initialize rs1
li x0, 0x8ea8464a # initialize rs2
mulhu x0, x31, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x6df91f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x42d06bf5 # initialize rs1
li x1, 0x0bd863b8 # initialize rs2
mulhu x1, x25, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x213f49be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14848d04 # initialize rs1
li x2, 0x35f2afab # initialize rs2
mulhu x2, x9, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x27e02968 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe217633f # initialize rs1
li x3, 0x97224af8 # initialize rs2
mulhu x3, x31, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x6dc06e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x840e3d24 # initialize rs1
li x4, 0x508fd49a # initialize rs2
mulhu x4, x14, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xe6825059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc8fa4fc2 # initialize rs1
li x5, 0x526efbc8 # initialize rs2
mulhu x5, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x6db9eef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x72ef94dd # initialize rs1
li x6, 0xdd665d0e # initialize rs2
mulhu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x860ac98d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2466f0fd # initialize rs1
li x7, 0x9fb54a52 # initialize rs2
mulhu x7, x12, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x591013ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xccc5db74 # initialize rs1
li x8, 0x05c65edd # initialize rs2
mulhu x8, x2, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x5a2c299b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1d450484 # initialize rs1
li x9, 0x9b972eb8 # initialize rs2
mulhu x9, x23, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x7fe9a36b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf4606886 # initialize rs1
li x10, 0x02b70919 # initialize rs2
mulhu x10, x8, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x3cfc844c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc25c7889 # initialize rs1
li x11, 0x464bceae # initialize rs2
mulhu x11, x25, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x7f50d2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x04e73c66 # initialize rs1
li x12, 0x0e06b9af # initialize rs2
mulhu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x0e14149b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x371aacdc # initialize rs1
li x13, 0x326d0b25 # initialize rs2
mulhu x13, x4, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x3fe98110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf10232e1 # initialize rs1
li x14, 0x428a655c # initialize rs2
mulhu x14, x11, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xc03c429a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1f6cef1d # initialize rs1
li x15, 0x3a22c3a4 # initialize rs2
mulhu x15, x2, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x9fdf2ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbae2f672 # initialize rs1
li x16, 0x4fbdd514 # initialize rs2
mulhu x16, x29, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x32793066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7296fb1f # initialize rs1
li x17, 0xd98419df # initialize rs2
mulhu x17, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xa4dd97b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x900b86c3 # initialize rs1
li x18, 0x05ef0324 # initialize rs2
mulhu x18, x11, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xe229f89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb331f7b1 # initialize rs1
li x19, 0x658be6f1 # initialize rs2
mulhu x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x64ed335c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3110f00e # initialize rs1
li x20, 0xad1725f2 # initialize rs2
mulhu x20, x30, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x24bf3f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x085baffa # initialize rs1
li x21, 0x287ae2dc # initialize rs2
mulhu x21, x13, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xe35c2fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x660b2e8a # initialize rs1
li x22, 0x21af3fd4 # initialize rs2
mulhu x22, x11, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x248b8231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8dfe7b33 # initialize rs1
li x23, 0x6314e023 # initialize rs2
mulhu x23, x7, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xe6ba4c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeccc2df7 # initialize rs1
li x24, 0x4b5fd758 # initialize rs2
mulhu x24, x1, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xb93c9d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd3f51dd4 # initialize rs1
li x25, 0x4544401c # initialize rs2
mulhu x25, x1, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xa9ba1c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x857c1d8b # initialize rs1
li x26, 0xf5ea9c37 # initialize rs2
mulhu x26, x12, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x559c2714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x41dd00d7 # initialize rs1
li x27, 0x183f36e1 # initialize rs2
mulhu x27, x11, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xa4842cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x40297e5d # initialize rs1
li x28, 0xde616dcb # initialize rs2
mulhu x28, x10, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa897060a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4fb42557 # initialize rs1
li x29, 0x2e90974a # initialize rs2
mulhu x29, x30, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x19c82e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0338689f # initialize rs1
li x30, 0x9972ef1e # initialize rs2
mulhu x30, x27, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x3efe011a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6c5b6853 # initialize rs1
li x31, 0xe80f5346 # initialize rs2
mulhu x31, x31, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3928a80b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x96ea809c # initialize rs1
li x0, 0x9f61eb98 # initialize rs2
mulhu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x684d6dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x08df0c7a # initialize rs1
li x1, 0xcf87df48 # initialize rs2
mulhu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x2c59de19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a97b7bb # initialize rs1
li x2, 0x5b79dd3d # initialize rs2
mulhu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xdab18618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb25fe171 # initialize rs1
li x3, 0x48407d35 # initialize rs2
mulhu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x71ada18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x77ada704 # initialize rs1
li x4, 0xb1cb70e3 # initialize rs2
mulhu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x4e4524f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9c0066cb # initialize rs1
li x5, 0x032b1130 # initialize rs2
mulhu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xab843c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46a0f623 # initialize rs1
li x6, 0xbf32ece4 # initialize rs2
mulhu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x7afd76b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7da4d21c # initialize rs1
li x7, 0x946a71c5 # initialize rs2
mulhu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc2773630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8afb2d65 # initialize rs1
li x8, 0xb1a70bf6 # initialize rs2
mulhu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb0c53469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3f99fa2f # initialize rs1
li x9, 0x7aea7cce # initialize rs2
mulhu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5695728a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1a63dc9d # initialize rs1
li x10, 0xb142e426 # initialize rs2
mulhu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf9a70906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x441c4aa2 # initialize rs1
li x11, 0x7f210d5b # initialize rs2
mulhu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6390ac96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef82bd49 # initialize rs1
li x12, 0xdc5828e6 # initialize rs2
mulhu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1b3fc199 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9c1311a0 # initialize rs1
li x13, 0x20290f0d # initialize rs2
mulhu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2a27c164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa8ec8ec4 # initialize rs1
li x14, 0x2b63e893 # initialize rs2
mulhu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x85cdc19e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfa44d4aa # initialize rs1
li x15, 0x31be6821 # initialize rs2
mulhu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x024a78de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fb3921c # initialize rs1
li x16, 0x40d3310a # initialize rs2
mulhu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbf46f71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf9fd76cd # initialize rs1
li x17, 0xe0be5ee0 # initialize rs2
mulhu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1a02c22a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcefa5143 # initialize rs1
li x18, 0x4a65a8a7 # initialize rs2
mulhu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc6831624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x94677f0e # initialize rs1
li x19, 0x34c49a61 # initialize rs2
mulhu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x56f67964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc67f825c # initialize rs1
li x20, 0x2d1a6da9 # initialize rs2
mulhu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x77f60718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1df5fa2 # initialize rs1
li x21, 0xec01318d # initialize rs2
mulhu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9dd2c66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb355a6be # initialize rs1
li x22, 0x3561de66 # initialize rs2
mulhu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x61e813ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3d4493f2 # initialize rs1
li x23, 0xa5297d7e # initialize rs2
mulhu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfc7d6b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5a107ea3 # initialize rs1
li x24, 0x79d6bee0 # initialize rs2
mulhu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc0425d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5df5654f # initialize rs1
li x25, 0xc50310ba # initialize rs2
mulhu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xccb3a4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x20592a34 # initialize rs1
li x26, 0x0f5b6fd1 # initialize rs2
mulhu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd161faaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1e5c07d0 # initialize rs1
li x27, 0xfd2203f6 # initialize rs2
mulhu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xdec196ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2dda1678 # initialize rs1
li x28, 0x2db6955f # initialize rs2
mulhu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1c761690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x817a9325 # initialize rs1
li x29, 0x4a2b7640 # initialize rs2
mulhu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf1e7c97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbae0b49a # initialize rs1
li x30, 0xb0550e22 # initialize rs2
mulhu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x002e2cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x97c6b287 # initialize rs1
li x31, 0xf1bf4453 # initialize rs2
mulhu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x9, 0x62908a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x564c60f9 # initialize rs1
li x0, 0xcec878b8 # initialize rs2
mulhu x9, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x14, 0x4711341f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdb664cb0 # initialize rs1
li x1, 0x11a87af8 # initialize rs2
mulhu x14, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x29, 0xe8fd06ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1d8e332f # initialize rs1
li x2, 0xca203926 # initialize rs2
mulhu x29, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x14, 0xf11373e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc3987dbc # initialize rs1
li x3, 0xa6d09699 # initialize rs2
mulhu x14, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x10, 0x780581c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x393af397 # initialize rs1
li x4, 0x8c6a0814 # initialize rs2
mulhu x10, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x23, 0x393b4da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xff449c9b # initialize rs1
li x5, 0xda9eade6 # initialize rs2
mulhu x23, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x12, 0x4d66099e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x26102dc5 # initialize rs1
li x6, 0x840a85d0 # initialize rs2
mulhu x12, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x18, 0x8425f402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x895d2c44 # initialize rs1
li x7, 0xc20837f4 # initialize rs2
mulhu x18, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x7, 0xbdc4bb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x20124b6f # initialize rs1
li x8, 0x093721d8 # initialize rs2
mulhu x7, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x2652378a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa31ac56d # initialize rs1
li x9, 0x70cdb049 # initialize rs2
mulhu x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x19, 0xd98defcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7311df11 # initialize rs1
li x10, 0x14b77d71 # initialize rs2
mulhu x19, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x1, 0x1769e03f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b731313 # initialize rs1
li x11, 0x1409dd14 # initialize rs2
mulhu x1, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x3f9242be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d6e6255 # initialize rs1
li x12, 0x49c3e45d # initialize rs2
mulhu x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x61005b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd2af5463 # initialize rs1
li x13, 0x70d1ce95 # initialize rs2
mulhu x13, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x22, 0xdb5061ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb694be49 # initialize rs1
li x14, 0x427dc525 # initialize rs2
mulhu x22, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x25, 0x166daea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4b9fecad # initialize rs1
li x15, 0xf5e9107b # initialize rs2
mulhu x25, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x26, 0x99723e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b5e011f # initialize rs1
li x16, 0xac9b0bb5 # initialize rs2
mulhu x26, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x14, 0x1134df52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb81afd30 # initialize rs1
li x17, 0x035fa7cb # initialize rs2
mulhu x14, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x23, 0x532a0ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd32a1888 # initialize rs1
li x18, 0xdb0ba1d3 # initialize rs2
mulhu x23, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x16, 0xe6e67d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xae956b2d # initialize rs1
li x19, 0x98b83486 # initialize rs2
mulhu x16, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc9a31358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfe63e8a7 # initialize rs1
li x20, 0x817406d1 # initialize rs2
mulhu x20, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x10, 0xe08f1fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80d78037 # initialize rs1
li x21, 0xcf928d54 # initialize rs2
mulhu x10, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x12, 0x4f6e0f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x088c6afc # initialize rs1
li x22, 0x008c42c5 # initialize rs2
mulhu x12, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x6, 0xe41a1225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfdcb9417 # initialize rs1
li x23, 0x893013a9 # initialize rs2
mulhu x6, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x23, 0x631a05f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdb33b128 # initialize rs1
li x24, 0xe6497847 # initialize rs2
mulhu x23, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x14, 0x44006033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd5ff81e4 # initialize rs1
li x25, 0x48721af1 # initialize rs2
mulhu x14, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x4, 0xfe77ff41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1c93b1d2 # initialize rs1
li x26, 0xf0322e44 # initialize rs2
mulhu x4, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x8, 0x405dfd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x712c2527 # initialize rs1
li x27, 0xdd80eee6 # initialize rs2
mulhu x8, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x23, 0x2f0f7e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x252384de # initialize rs1
li x28, 0xe53e911d # initialize rs2
mulhu x23, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x82944262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x651524d7 # initialize rs1
li x29, 0x1b871dac # initialize rs2
mulhu x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x21, 0x34cfea91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x16c3588d # initialize rs1
li x30, 0x2c2b513f # initialize rs2
mulhu x21, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x24, 0x29ab895e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7430c0e9 # initialize rs1
li x31, 0xb9cba3c2 # initialize rs2
mulhu x24, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x662c9e08)
li x12, 0xbdd3af36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x662c9e08 # initialize rs1
li x22, 0x286c8bb3 # initialize rs2
mulhu x12, x25, x22 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x6e22696d)
li x29, 0xc855bf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x91dd9693 # initialize rs1
li x12, 0x89d4c23b # initialize rs2
mulhu x29, x31, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4633aad4)
li x11, 0x9a4d7714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2f77bdd4 # initialize rs1
li x18, 0x4633aad4 # initialize rs2
mulhu x11, x26, x18 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4c534bf0)
li x3, 0xcf05b4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x03c8a84a # initialize rs1
li x1, 0xb3acb410 # initialize rs2
mulhu x3, x12, x1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-mul.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7f5a802c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1aaf9321 # initialize rs1
li x31, 0x60320710 # initialize rs2
mul x0, x5, x31 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcffbaca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6181b589 # initialize rs1
li x2, 0x430e8806 # initialize rs2
mul x1, x7, x2 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xea5567ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5324985e # initialize rs1
li x19, 0x53fe2406 # initialize rs2
mul x2, x21, x19 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x214e1886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2fdb22fb # initialize rs1
li x25, 0xbb7cef52 # initialize rs2
mul x3, x27, x25 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x44017b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55092dec # initialize rs1
li x4, 0x49ae9c81 # initialize rs2
mul x4, x20, x4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1f9258d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9fc93ac1 # initialize rs1
li x22, 0xade5a182 # initialize rs2
mul x5, x6, x22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe4b8bc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8fd0b3cd # initialize rs1
li x12, 0x5e686f84 # initialize rs2
mul x6, x4, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x00715c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3548339d # initialize rs1
li x19, 0x62ea1e72 # initialize rs2
mul x7, x20, x19 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf6fcf2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x765e433c # initialize rs1
li x2, 0x513cc4d6 # initialize rs2
mul x8, x29, x2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfb784268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdbbbdebd # initialize rs1
li x19, 0x6b2ee91f # initialize rs2
mul x9, x21, x19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x72ff6233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb313267d # initialize rs1
li x18, 0x733c4df3 # initialize rs2
mul x10, x28, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x22d86764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x41b0e73c # initialize rs1
li x22, 0xa2c72460 # initialize rs2
mul x11, x19, x22 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x091e91c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6b1e148a # initialize rs1
li x3, 0x919a83d5 # initialize rs2
mul x12, x11, x3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc00c5e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9c69c26 # initialize rs1
li x13, 0xbeb6cd94 # initialize rs2
mul x13, x1, x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc767698e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x046093a2 # initialize rs1
li x13, 0xd5d2673f # initialize rs2
mul x14, x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6d2f0ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x916f170d # initialize rs1
li x7, 0x9937e601 # initialize rs2
mul x15, x23, x7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x4c217329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x62d26994 # initialize rs1
li x17, 0x1f24a8f2 # initialize rs2
mul x16, x30, x17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3637a58e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x45248016 # initialize rs1
li x7, 0xde67b23d # initialize rs2
mul x17, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb4554110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd78bf99d # initialize rs1
li x7, 0x8815b09f # initialize rs2
mul x18, x24, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x970f33a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xca45f6dc # initialize rs1
li x22, 0x2d97c2d2 # initialize rs2
mul x19, x2, x22 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4ef8837a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x144ef59b # initialize rs1
li x2, 0xd03db6e4 # initialize rs2
mul x20, x23, x2 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x04b4bb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf0172337 # initialize rs1
li x17, 0x7614198c # initialize rs2
mul x21, x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf435aec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x546eed06 # initialize rs1
li x23, 0xdabd6cee # initialize rs2
mul x22, x3, x23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xed4391b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x737d63c2 # initialize rs1
li x3, 0x6cc693ad # initialize rs2
mul x23, x31, x3 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x04e1b777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x890ef132 # initialize rs1
li x12, 0x3e21d1a0 # initialize rs2
mul x24, x21, x12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x563f9046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5e3ee5a0 # initialize rs1
li x24, 0xc17d42cf # initialize rs2
mul x25, x3, x24 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7d7e25fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb03332fb # initialize rs1
li x15, 0xedc835a1 # initialize rs2
mul x26, x2, x15 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x678daf3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x67dc1ba7 # initialize rs1
li x6, 0xa29ae857 # initialize rs2
mul x27, x17, x6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x872c1c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4735bbe1 # initialize rs1
li x7, 0x3f76a14e # initialize rs2
mul x28, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x74b97bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xab43e7e6 # initialize rs1
li x21, 0x35e1238f # initialize rs2
mul x29, x22, x21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa0e7e1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb3ba7c7b # initialize rs1
li x24, 0xe516ab0e # initialize rs2
mul x30, x14, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x3455db42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf30307c9 # initialize rs1
li x17, 0x23be65b2 # initialize rs2
mul x31, x20, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x30, 0x7ff7c0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x52baec3f # initialize rs1
li x15, 0x119fbc9a # initialize rs2
mul x30, x0, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x62e82a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x35f77e98 # initialize rs1
li x27, 0x99e77786 # initialize rs2
mul x25, x1, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0xcba5c9df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x06c585c2 # initialize rs1
li x18, 0x1c98c31d # initialize rs2
mul x19, x2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0xd40fb0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x097b57c0 # initialize rs1
li x19, 0xf4710f0d # initialize rs2
mul x20, x3, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x2, 0x9cd800d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7f5dd477 # initialize rs1
li x14, 0x478e4020 # initialize rs2
mul x2, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x4, 0x23d98961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2e87dfd4 # initialize rs1
li x28, 0xe84d7c20 # initialize rs2
mul x4, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0x5b77e2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x949a70c3 # initialize rs1
li x29, 0xb95d3b32 # initialize rs2
mul x30, x6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x94054415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdff122f6 # initialize rs1
li x14, 0xd8bb5709 # initialize rs2
mul x16, x7, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x7643c318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1ce33e25 # initialize rs1
li x21, 0xb3e136fb # initialize rs2
mul x7, x8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xab235219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c3337b0 # initialize rs1
li x7, 0x12d3c3b9 # initialize rs2
mul x21, x9, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x4ed82093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80adb4ae # initialize rs1
li x18, 0xba20573d # initialize rs2
mul x31, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x4434b671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11c68477 # initialize rs1
li x5, 0xe461a461 # initialize rs2
mul x28, x11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0x0a5abd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbf14d4fd # initialize rs1
li x2, 0x1c3606f2 # initialize rs2
mul x14, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xcdab7dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ddc995e # initialize rs1
li x9, 0xb667e224 # initialize rs2
mul x12, x13, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xc5d3132a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51758c1e # initialize rs1
li x19, 0xb4fed07f # initialize rs2
mul x8, x14, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x25967aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa19d1987 # initialize rs1
li x4, 0x4cad54d7 # initialize rs2
mul x9, x15, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0xe0a9e6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x99c9ea8d # initialize rs1
li x27, 0xd1b3969e # initialize rs2
mul x31, x16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x7f97641d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x38593421 # initialize rs1
li x10, 0xcec42e26 # initialize rs2
mul x9, x17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0xe88f5836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x31b85885 # initialize rs1
li x24, 0x74e4b6ae # initialize rs2
mul x8, x18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0xbe870c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x875d86d0 # initialize rs1
li x20, 0x6a1fea12 # initialize rs2
mul x31, x19, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xcecefe0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x47eb7220 # initialize rs1
li x15, 0x4e17ed11 # initialize rs2
mul x16, x20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x19, 0x62001443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x17c47374 # initialize rs1
li x7, 0xb40cc6cf # initialize rs2
mul x19, x21, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0xca17b175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd9af3377 # initialize rs1
li x1, 0x0bc06557 # initialize rs2
mul x24, x22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x17, 0x94081fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x03403b19 # initialize rs1
li x7, 0x50a73032 # initialize rs2
mul x17, x23, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0xd60341c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x54948bd9 # initialize rs1
li x15, 0xb8b589a2 # initialize rs2
mul x6, x24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x3652ed19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1bb62d73 # initialize rs1
li x22, 0x35cb45e0 # initialize rs2
mul x10, x25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x1d2234d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3718bb00 # initialize rs1
li x17, 0x4647c974 # initialize rs2
mul x19, x26, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x96e3f748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5b4c4814 # initialize rs1
li x11, 0x709e7d75 # initialize rs2
mul x30, x27, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x3, 0x42086244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x934546ff # initialize rs1
li x18, 0x7913630d # initialize rs2
mul x3, x28, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0xc9faec65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8bbb5260 # initialize rs1
li x7, 0x12e35e37 # initialize rs2
mul x28, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0x8e83d788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x70911fdc # initialize rs1
li x21, 0xbc92d1ea # initialize rs2
mul x31, x30, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0xdee36c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xed49d6ae # initialize rs1
li x26, 0xa25542f4 # initialize rs2
mul x3, x31, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x36b4752c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x18731e19 # initialize rs1
li x0, 0xdc9a11b4 # initialize rs2
mul x25, x10, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x8, 0x6cc3c9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x12ff8efe # initialize rs1
li x1, 0x90fc819b # initialize rs2
mul x8, x28, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x26d728e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xacb831df # initialize rs1
li x2, 0xe7e56917 # initialize rs2
mul x6, x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x91e4ff1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7410cff3 # initialize rs1
li x3, 0xa6d2b5c8 # initialize rs2
mul x23, x4, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x26, 0x4da9660f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe1cfdf21 # initialize rs1
li x4, 0xccf693c1 # initialize rs2
mul x26, x12, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x12, 0x8c4d3347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20902142 # initialize rs1
li x5, 0xbbea931f # initialize rs2
mul x12, x22, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x29, 0x1d085ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6827cb35 # initialize rs1
li x6, 0x05bfc400 # initialize rs2
mul x29, x12, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x14, 0xc9cecb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7984f5cf # initialize rs1
li x7, 0x68df92ea # initialize rs2
mul x14, x15, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x68402edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf9843a0e # initialize rs1
li x8, 0xf49bf670 # initialize rs2
mul x1, x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x2a3e2318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0fd99361 # initialize rs1
li x9, 0x27ddef75 # initialize rs2
mul x7, x23, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x05f27e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd442f3dc # initialize rs1
li x10, 0xbf0188f0 # initialize rs2
mul x20, x29, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x251ae3d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x39842a25 # initialize rs1
li x11, 0xc1e563a4 # initialize rs2
mul x14, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x6b3c4580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x52dadf58 # initialize rs1
li x12, 0xbd145146 # initialize rs2
mul x15, x23, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x83b2c67e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4c79e951 # initialize rs1
li x13, 0xa8d433b3 # initialize rs2
mul x3, x5, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0xd16cab60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0abef4e5 # initialize rs1
li x14, 0x13f997ee # initialize rs2
mul x6, x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x11f8a697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4f023b28 # initialize rs1
li x15, 0xc2b4f0c2 # initialize rs2
mul x5, x22, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x7a0043cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb84cba18 # initialize rs1
li x16, 0xbb99884f # initialize rs2
mul x31, x19, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0xcd99c2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x42940939 # initialize rs1
li x17, 0x366170cd # initialize rs2
mul x14, x15, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x9cb0a307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3fc94e12 # initialize rs1
li x18, 0x144012fc # initialize rs2
mul x26, x19, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xba898e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7195cd81 # initialize rs1
li x19, 0xe9acc68b # initialize rs2
mul x10, x7, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x99dd1204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe4baaa5d # initialize rs1
li x20, 0x781fcc61 # initialize rs2
mul x18, x1, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x60b82bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1376bb66 # initialize rs1
li x21, 0x3105e100 # initialize rs2
mul x18, x8, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0xa70dffec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa7bc7499 # initialize rs1
li x22, 0xac46c5fe # initialize rs2
mul x17, x6, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0xb2604ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc0eb5729 # initialize rs1
li x23, 0x2f1974b9 # initialize rs2
mul x12, x20, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x6cf7d96f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x914d6c28 # initialize rs1
li x24, 0x2bd6f451 # initialize rs2
mul x22, x26, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0xe543538f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfd307267 # initialize rs1
li x25, 0x772c6bad # initialize rs2
mul x28, x10, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x83b2d04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3c02bff2 # initialize rs1
li x26, 0x8ebaf00b # initialize rs2
mul x30, x7, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0xf974832f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe6160a68 # initialize rs1
li x27, 0xfc22acf4 # initialize rs2
mul x3, x21, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xa539e22e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe50bbbeb # initialize rs1
li x28, 0xb62c0dc4 # initialize rs2
mul x30, x2, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x16, 0x6e84d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbb6fc44b # initialize rs1
li x29, 0x11cb9298 # initialize rs2
mul x16, x11, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0xa4d5fc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc29bb274 # initialize rs1
li x30, 0x35cf880b # initialize rs2
mul x8, x5, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x8441c260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbdd58462 # initialize rs1
li x31, 0x13d5452b # initialize rs2
mul x5, x28, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd3d6e566)
li x26, 0xa5bf8b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa5bf8b2a # initialize rs1
li x0, 0x360e3ed0 # initialize rs2
mul x26, x18, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xfa4de78a)
li x31, 0xfa4de78a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfa4de78a # initialize rs1
li x8, 0xfa4de78a # initialize rs2
mul x31, x0, x8 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe79f3526)
li x19, 0x6578b251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe79f3526 # initialize rs1
li x29, 0xe79f3526 # initialize rs2
mul x19, x26, x29 # perform operation

# Testcase cmp_gpr_hazard raw test
mul x23, x14, x15 # perform first operation
mul x11, x23, x10 # perform second operation

# Testcase cmp_gpr_hazard raw test
mul x19, x21, x20 # perform first operation
mul x28, x2, x19 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x14, x15, x18 # perform first operation
mul x14, x6, x2 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x8, x15, x27 # perform first operation
mul x8, x1, x14 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x29, x23, x24 # perform first operation
mul x23, x26, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x5, x21, x14 # perform first operation
mul x14, x15, x23 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xcd81a4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x0, 0x0fd15a00 # initialize rs2
mul x8, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x9f4e1333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
mul x22, x7, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x5f8fd7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x17, x14, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xa5fa779c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x0, 0x64431af9 # initialize rs2
mul x10, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x61689390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
mul x28, x7, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0x5747489d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x18, x27, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x09ac766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x0, 0x79ce1aa2 # initialize rs2
mul x5, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0xa97cdbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
mul x25, x16, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x2b6f274c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
mul x21, x28, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0xfe7b1831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x0, 0x5291f8a4 # initialize rs2
mul x6, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0x47940dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x15, x26, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x79180876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x9, x25, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xd4f7ee6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x0, 0x9ce27634 # initialize rs2
mul x13, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x26, 0x5eeb2672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
mul x26, x27, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x603509a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
mul x15, x31, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0xe5c7577f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x0, 0xb7bb4d69 # initialize rs2
mul x14, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x68100647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
mul x24, x13, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0xec295ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
mul x3, x2, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0xa99155fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x0, 0xb57f54ad # initialize rs2
mul x18, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0xa9fc147b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mul x24, x10, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x35987678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x4, 0x7ffffffe # initialize rs2
mul x18, x16, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x14, 0x7ed9f06f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x0, 0x13c0bb83 # initialize rs2
mul x14, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x35e5b27b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x5, x17, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x745c233d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
mul x19, x6, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0x94cc490a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x0, 0x3f701b8c # initialize rs2
mul x13, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x84e2b207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
mul x1, x12, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x2485777d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
mul x28, x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x27, 0x845cd133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x0, 0x3763e50f # initialize rs2
mul x27, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x8, 0x677356a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
mul x8, x30, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x18, 0x6b5bbcd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
mul x18, x21, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0x8bb92edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x0, 0x75006c4e # initialize rs2
mul x4, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x30, 0xbd68d43e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mul x30, x19, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0x396dc3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mul x22, x3, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0xacd829d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x0, 0x184c448b # initialize rs2
mul x28, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x25, 0xbe951a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
mul x25, x3, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xe4c29e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
mul x22, x2, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x8cd88ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x2, 0xc5811fe0 # initialize rs2
mul x28, x19, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0xfdce8759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x26, 0x2b488444 # initialize rs2
mul x7, x1, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0xda737946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x18, 0x3a3464ba # initialize rs2
mul x21, x14, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x8a209db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x11, 0xa991451e # initialize rs2
mul x5, x15, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x3fe1b50a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x31, 0xdf5e10c0 # initialize rs2
mul x17, x6, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x401140de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x25, 0x170ce964 # initialize rs2
mul x8, x22, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x1cc079f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x29, 0xd4784946 # initialize rs2
mul x10, x4, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0xb8537e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x11, 0x1746bc51 # initialize rs2
mul x5, x13, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xd92db762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x22, 0x47b49ceb # initialize rs2
mul x2, x21, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x1, 0x15795ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x15, 0x372a5a55 # initialize rs2
mul x1, x27, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x4, 0xc8da8d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x3, 0x3cc34489 # initialize rs2
mul x4, x22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x20, 0x4048c1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x29, 0x7ce13cbf # initialize rs2
mul x20, x23, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x0b9c1c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8e941b51 # initialize rs1
li x4, 0x00000000 # initialize rs2
mul x27, x22, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x84f4b324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0250e91a # initialize rs1
li x13, 0x00000001 # initialize rs2
mul x14, x2, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x3087a52a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe1219837 # initialize rs1
li x27, 0x00000002 # initialize rs2
mul x29, x11, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x78edc97e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x27e7f09b # initialize rs1
li x24, 0x80000000 # initialize rs2
mul x3, x7, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x1, 0xb694ac91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8bd7fe58 # initialize rs1
li x4, 0x80000001 # initialize rs2
mul x1, x15, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0x31d82ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8aaac9ed # initialize rs1
li x26, 0x7fffffff # initialize rs2
mul x12, x3, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0x50635eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3d87b4a6 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mul x15, x29, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xd13be057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa2beab9f # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x24, x17, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x066db590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd2472156 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mul x23, x2, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0xcf9717d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x70f14637 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
mul x28, x29, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x30, 0xddf1435a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xff4489e5 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x30, x22, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xfe6c5ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd6d11fdf # initialize rs1
li x29, 0x55555555 # initialize rs2
mul x14, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0xd02e2864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
mul x2, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x14, 0xcb5cd4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x14, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x511cf38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
mul x30, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x320cbf79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
mul x1, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x1a3a0cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
mul x11, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x29, 0x9bee2473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
mul x29, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x990262ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mul x24, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x9a7d3faa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
mul x8, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x14b4990c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
mul x3, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x27, 0xc3923e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
mul x27, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0xa1916f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x19, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x3, 0x0b9967cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
mul x3, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x55a645dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
mul x9, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x9f292179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
mul x3, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x17, 0x951716df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
mul x17, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x4, 0x094190e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
mul x4, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0xff617e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x18, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x968f6fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x15, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x20, 0xf817deef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x20, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0xc1f13054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
mul x14, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x9df4ce1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
mul x19, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x7, 0x2f41ae6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
mul x7, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x4a496511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mul x31, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x664086b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
mul x12, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x1af885b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
mul x14, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0xaec5816a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
mul x14, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0xe618d39d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x28, 0x00000002 # initialize rs2
mul x10, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x16, 0x2d43d838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x20, 0x80000000 # initialize rs2
mul x16, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x637a971f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
mul x15, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x78284893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
mul x14, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x28, 0x5a2f5e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x28, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x6e400f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
mul x30, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0xbdd3d4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x25, 0xfffffffe # initialize rs2
mul x8, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x30, 0xba6b7efe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x30, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0xccc0eca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x26, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0x6afabf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
mul x11, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x4fe73262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
mul x11, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x27, 0xa7192256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
mul x27, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0xa64fb647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
mul x15, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x17, 0xc6b30d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
mul x17, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x16, 0xea22794f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
mul x16, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x06975566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x14, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x1, 0xe8df7074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
mul x1, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x3, 0xbe42df78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x3, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0xa93c0c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mul x23, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x6, 0xc775efa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mul x6, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x8a4f8445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mul x25, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x31, 0x11589f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
mul x31, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x11, 0x3e54dce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
mul x11, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x18, 0x9be32720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
mul x18, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x20, 0xaba94ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
mul x20, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x12, 0xb7baf1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
mul x12, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x29, 0x533e7416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
mul x29, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x6af62b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x28, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0xe9a93f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mul x1, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0xaca03dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x22, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x148b4b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
mul x23, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x6, 0xdc986bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
mul x6, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x0877e705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
mul x29, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x9144460b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
mul x9, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x20, 0xac0e594c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
mul x20, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x6b4c45d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x25, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x3, 0xee7944da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
mul x3, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x426a5ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
mul x11, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x8d193577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x20, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0xf57f7103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
mul x31, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x18, 0xbaf9d023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mul x18, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x20, 0xf4e3e99c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x20, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x22, 0xf419a961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x20, 0xfffffffe # initialize rs2
mul x22, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x19, 0xad3bcfa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x19, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0xeea9a38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mul x6, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x29, 0xdb2e2f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
mul x29, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x28, 0xa904d220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
mul x28, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x21, 0x44b80b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x25, 0x00000001 # initialize rs2
mul x21, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x29, 0x3de657bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
mul x29, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x3, 0xc50b0d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
mul x3, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x2037113c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x30, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x7, 0xa2a049d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
mul x7, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x3dcb49a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x23, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0xd86b814f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x17, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x30, 0xefe6246e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
mul x30, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x2, 0x118ceddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
mul x2, x30, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x8, 0xe00fa08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mul x8, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x5b41c831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
mul x10, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xba2f5754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
mul x29, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xca962449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
mul x1, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x48a7e351 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
mul x12, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0x9fe2e9d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
mul x15, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x15, 0x4dce45e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
mul x15, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x26, 0x53e34477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x26, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x21, 0x5bb9db75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mul x21, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0xb5873ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mul x26, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xec7636c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
mul x20, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x5, 0x0a2336de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mul x5, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x6, 0x1b642454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mul x6, x10, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x25, 0x0b3a066f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
mul x25, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0x240c6c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
mul x28, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x0ea4c94c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
mul x21, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0xa5f7b8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x28, 0x00000002 # initialize rs2
mul x25, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x4, 0x70adad27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x4, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x21, 0x1d36bc1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
mul x21, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0x26d608ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
mul x13, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x10, 0x49eca9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
mul x10, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0xdb8ec8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x6, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x16, 0xbd319016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
mul x16, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x20, 0xe679a309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
mul x20, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x4, 0x099d24d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x4, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0x892f1ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
mul x27, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x13, 0x1076f179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x8, 0x00000000 # initialize rs2
mul x13, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x9, 0x6c6eb5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x11, 0x00000001 # initialize rs2
mul x9, x31, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x13, 0x4a42319e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x31, 0x00000002 # initialize rs2
mul x13, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x27, 0xab70b045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x27, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x11, 0xf89736b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x11, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x3, 0xe7421409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mul x3, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x20, 0xe660f05b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mul x20, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x26, 0x30231325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x26, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x30, 0x94a211bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mul x30, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x29, 0xf7946398 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mul x29, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x9, 0x894bcc21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mul x9, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x17, 0x0c179ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x22, 0x55555555 # initialize rs2
mul x17, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0x2c6cf82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x24, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x7, 0xf1d5d9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x4, 0x00000001 # initialize rs2
mul x7, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0x253538d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x23, 0x00000002 # initialize rs2
mul x19, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0x80554242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x1, 0x80000000 # initialize rs2
mul x23, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x4, 0x9f207871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x4, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xc1bbafd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
mul x19, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x6, 0x9a20fa15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mul x6, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x12, 0xfdb1e012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x12, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x26, 0x8dad2b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x14, 0xfffffffe # initialize rs2
mul x26, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x19, 0xbe8cd992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x19, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x6, 0x458ea834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x6, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0xda7f352e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x23, 0x55555555 # initialize rs2
mul x14, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x21, 0xb072d0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
mul x21, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x13, 0x2818016c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x19, 0x00000001 # initialize rs2
mul x13, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x10, 0x03d10e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
mul x10, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x5e786ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x22, 0x80000000 # initialize rs2
mul x25, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x21, 0x3b57cc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x21, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x4, 0x61860b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mul x4, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x1c4b9f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mul x25, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0xbc4fd277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
mul x10, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x25, 0xb3d4a2e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x7, 0xfffffffe # initialize rs2
mul x25, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x10, 0xc4726e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
mul x10, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x24, 0xc5156777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x24, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x10, 0x4f8c4566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
mul x10, x8, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd2b903b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2b8252ce # initialize rs1
li x25, 0x5fc4bd67 # initialize rs2
mul x0, x0, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x54ccaf92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe808119e # initialize rs1
li x29, 0x1ec837ce # initialize rs2
mul x1, x1, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8b59b368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2d8b58b3 # initialize rs1
li x29, 0x79b30561 # initialize rs2
mul x2, x2, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0475d070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa87c880f # initialize rs1
li x16, 0x1d856d95 # initialize rs2
mul x3, x3, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe7fe309f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xacf57bb0 # initialize rs1
li x9, 0xee56281f # initialize rs2
mul x4, x4, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7c136cef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x21cec6f3 # initialize rs1
li x28, 0x8617ebaf # initialize rs2
mul x5, x5, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xde7f41f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x19cc38a7 # initialize rs1
li x21, 0x21b50c3d # initialize rs2
mul x6, x6, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x71d0fd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd336076 # initialize rs1
li x11, 0x2e5c8ce2 # initialize rs2
mul x7, x7, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4e408c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea3423ef # initialize rs1
li x3, 0x37f83b71 # initialize rs2
mul x8, x8, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd350423c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaee812a9 # initialize rs1
li x9, 0x4a5958af # initialize rs2
mul x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3513f8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc409dd5d # initialize rs1
li x4, 0xfee08b3d # initialize rs2
mul x10, x10, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x301ef5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb0d167b3 # initialize rs1
li x20, 0x36ac3190 # initialize rs2
mul x11, x11, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1cd157b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x82638d89 # initialize rs1
li x10, 0xc224d074 # initialize rs2
mul x12, x12, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9088aae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x959746b9 # initialize rs1
li x28, 0xe4844d2d # initialize rs2
mul x13, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe042fdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9d3aa74c # initialize rs1
li x25, 0xb680fbb0 # initialize rs2
mul x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0cf145ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd2cbb06a # initialize rs1
li x28, 0x68799bca # initialize rs2
mul x15, x15, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6408412f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x29b97dea # initialize rs1
li x23, 0x7fef2393 # initialize rs2
mul x16, x16, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x84db6bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x084cc4a1 # initialize rs1
li x20, 0x7b12561e # initialize rs2
mul x17, x17, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2bd59294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xad199095 # initialize rs1
li x6, 0x5dfe4951 # initialize rs2
mul x18, x18, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9df99130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xed971bb2 # initialize rs1
li x13, 0x454c632f # initialize rs2
mul x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x27311669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9826ad4d # initialize rs1
li x10, 0x939c971f # initialize rs2
mul x20, x20, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd93a2762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb1ce2f41 # initialize rs1
li x19, 0xfcaa80b7 # initialize rs2
mul x21, x21, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xaa71c487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x37332da4 # initialize rs1
li x13, 0x700c9ae4 # initialize rs2
mul x22, x22, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x593ed0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x62c31bea # initialize rs1
li x4, 0x4c44ad30 # initialize rs2
mul x23, x23, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe8feba8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xab254a39 # initialize rs1
li x7, 0x65e59bd8 # initialize rs2
mul x24, x24, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x50a77f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4be7921b # initialize rs1
li x4, 0x80de0c7c # initialize rs2
mul x25, x25, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcf5fa389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02e99b42 # initialize rs1
li x26, 0x3dfe3b5b # initialize rs2
mul x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb6690244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcef1b1e4 # initialize rs1
li x17, 0x8482db13 # initialize rs2
mul x27, x27, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe153ddba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfa507aa5 # initialize rs1
li x19, 0x4a019c06 # initialize rs2
mul x28, x28, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3a544b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4d686b6d # initialize rs1
li x12, 0x6675e435 # initialize rs2
mul x29, x29, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd623db2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3b651b53 # initialize rs1
li x12, 0xaa23f223 # initialize rs2
mul x30, x30, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbd3081d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x845f08c5 # initialize rs1
li x31, 0xcc54eb4c # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xaab89ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x908143f4 # initialize rs1
li x0, 0x3fe28011 # initialize rs2
mul x0, x19, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xadc73b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2b9152f5 # initialize rs1
li x1, 0x33a7c24d # initialize rs2
mul x1, x17, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x25b99d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x282acb96 # initialize rs1
li x2, 0x619bd08d # initialize rs2
mul x2, x24, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x14420d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x851c02e5 # initialize rs1
li x3, 0xdd9919b6 # initialize rs2
mul x3, x9, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x5c571a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc0a78610 # initialize rs1
li x4, 0x3239a640 # initialize rs2
mul x4, x6, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xeaf1dccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8f4a0d7f # initialize rs1
li x5, 0x8441203f # initialize rs2
mul x5, x1, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x909b36d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa5d28f94 # initialize rs1
li x6, 0x2c147c65 # initialize rs2
mul x6, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xee15427e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x909e3f5f # initialize rs1
li x7, 0x18012ecd # initialize rs2
mul x7, x31, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x2e0f0328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3b7c52ed # initialize rs1
li x8, 0xf6ebbc3e # initialize rs2
mul x8, x16, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xdf5e3c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc294c637 # initialize rs1
li x9, 0xfda86137 # initialize rs2
mul x9, x31, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa1751344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x06f8dde0 # initialize rs1
li x10, 0x429b8702 # initialize rs2
mul x10, x26, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x37ee5791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe85f2113 # initialize rs1
li x11, 0x07b8f344 # initialize rs2
mul x11, x24, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x8847a5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x069bdc97 # initialize rs1
li x12, 0xac08a14f # initialize rs2
mul x12, x1, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x121912c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4771f331 # initialize rs1
li x13, 0xda11d1ac # initialize rs2
mul x13, x16, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x8b0e4b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x77c2a84b # initialize rs1
li x14, 0xd6fff9dc # initialize rs2
mul x14, x31, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x786ae732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x063711f7 # initialize rs1
li x15, 0xc0e5c6b0 # initialize rs2
mul x15, x1, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xd254a2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd0e899bf # initialize rs1
li x16, 0xf7150e53 # initialize rs2
mul x16, x12, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xb5df0e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x634fe714 # initialize rs1
li x17, 0xccc1bb9c # initialize rs2
mul x17, x18, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x1c04686e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd3de2ec2 # initialize rs1
li x18, 0xb4979e56 # initialize rs2
mul x18, x30, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x961e98c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf0f23f26 # initialize rs1
li x19, 0x6e7586ae # initialize rs2
mul x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa79cba01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x726441e3 # initialize rs1
li x20, 0x8518e5c3 # initialize rs2
mul x20, x18, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x1eda3c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdc7dced5 # initialize rs1
li x21, 0xf7760bc6 # initialize rs2
mul x21, x21, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x5cde1ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a2ea202 # initialize rs1
li x22, 0x95c6e4de # initialize rs2
mul x22, x11, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x28d419a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd5217506 # initialize rs1
li x23, 0x013d1a90 # initialize rs2
mul x23, x8, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x3f5d4b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe39551be # initialize rs1
li x24, 0xe6554e92 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x144dbdda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x19dee5d8 # initialize rs1
li x25, 0x2090da68 # initialize rs2
mul x25, x28, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xc279bc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xebd5bfc9 # initialize rs1
li x26, 0x85712def # initialize rs2
mul x26, x10, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x178f0c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x405b6b7c # initialize rs1
li x27, 0x1f17942b # initialize rs2
mul x27, x17, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x2832a53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xad230c92 # initialize rs1
li x28, 0x72c70808 # initialize rs2
mul x28, x5, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x81edcdf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8867d514 # initialize rs1
li x29, 0xfb18aeba # initialize rs2
mul x29, x16, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x1a427eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1c45b957 # initialize rs1
li x30, 0x6b44a162 # initialize rs2
mul x30, x17, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4f324002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2184f7c3 # initialize rs1
li x31, 0xb66a9f2e # initialize rs2
mul x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd965b8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x33f734f9 # initialize rs1
li x0, 0x628892ad # initialize rs2
mul x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xaac99555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7f9d25a1 # initialize rs1
li x1, 0x7c24c903 # initialize rs2
mul x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xf99e0e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfe08b5a9 # initialize rs1
li x2, 0xb8a63d2a # initialize rs2
mul x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb97045f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x787a46b7 # initialize rs1
li x3, 0xa5ffdf75 # initialize rs2
mul x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x02fa0ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x44c6bc23 # initialize rs1
li x4, 0xfa40eb4e # initialize rs2
mul x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x0fa08db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0b9de160 # initialize rs1
li x5, 0x200d82c4 # initialize rs2
mul x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xeccc5ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x58f67e2f # initialize rs1
li x6, 0x73bc486e # initialize rs2
mul x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x2c3f0437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x14f1ce48 # initialize rs1
li x7, 0xd6a6ceb9 # initialize rs2
mul x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x922e7c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x46cb3186 # initialize rs1
li x8, 0xe7ffcec0 # initialize rs2
mul x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x27376417 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4b8ad74a # initialize rs1
li x9, 0x215eb95d # initialize rs2
mul x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3f21ba3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5ae37c04 # initialize rs1
li x10, 0x390f16a5 # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa0262acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa12d0868 # initialize rs1
li x11, 0x0a0c7787 # initialize rs2
mul x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xfba2fdfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x33c6e03e # initialize rs1
li x12, 0x62dcc602 # initialize rs2
mul x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd8a22de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe15fc5e5 # initialize rs1
li x13, 0x2e58dcba # initialize rs2
mul x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfd693588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x894f6f19 # initialize rs1
li x14, 0x31fe2cdf # initialize rs2
mul x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8cfb1948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xda9ff723 # initialize rs1
li x15, 0x85d2510a # initialize rs2
mul x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc45fe789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc2dbbb2e # initialize rs1
li x16, 0xc3a014af # initialize rs2
mul x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdbd75371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf2cb9c4f # initialize rs1
li x17, 0x01bbb605 # initialize rs2
mul x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbc6311e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa2d7e85d # initialize rs1
li x18, 0xf0a833ba # initialize rs2
mul x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x37483ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2193bc01 # initialize rs1
li x19, 0xcdbf8f89 # initialize rs2
mul x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x90e22e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8cd83ad8 # initialize rs1
li x20, 0xed60e374 # initialize rs2
mul x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x790984ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xca837a63 # initialize rs1
li x21, 0x38b1efeb # initialize rs2
mul x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x19fa3b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf60ffb71 # initialize rs1
li x22, 0x912fdb8d # initialize rs2
mul x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4f39ef9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7c5f4ea9 # initialize rs1
li x23, 0x96bf20f0 # initialize rs2
mul x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x6a325b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8234bb3b # initialize rs1
li x24, 0xc8bfa277 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf6db5077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa1518387 # initialize rs1
li x25, 0x0433ebbd # initialize rs2
mul x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa28a1180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf8a87140 # initialize rs1
li x26, 0x47eeb1ef # initialize rs2
mul x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc1178002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2be78fee # initialize rs1
li x27, 0x8d35956d # initialize rs2
mul x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xf85d75b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcb4745fe # initialize rs1
li x28, 0x49135c6e # initialize rs2
mul x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb1e8de12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcf1dda03 # initialize rs1
li x29, 0xcf79a508 # initialize rs2
mul x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xdb04cb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0963aaea # initialize rs1
li x30, 0xe95dbd3c # initialize rs2
mul x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x49b8486f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xdd582da2 # initialize rs1
li x31, 0x6b530585 # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x4e6790da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x97c169de # initialize rs1
li x0, 0x9a607909 # initialize rs2
mul x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x22, 0xcf2d0b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7df468a6 # initialize rs1
li x1, 0xf9224f34 # initialize rs2
mul x22, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x6, 0x1b90010c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x50a7f9b3 # initialize rs1
li x2, 0x0a15b9d1 # initialize rs2
mul x6, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x8, 0xb7b8ba99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0db63701 # initialize rs1
li x3, 0x0018c60c # initialize rs2
mul x8, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0xccd819db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdbf895f6 # initialize rs1
li x4, 0x2d0cd3e1 # initialize rs2
mul x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x28, 0x0b9e2b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0158494 # initialize rs1
li x5, 0x0894d3cb # initialize rs2
mul x28, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x17, 0xabf0dbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x650c06c4 # initialize rs1
li x6, 0x1c43691e # initialize rs2
mul x17, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x31, 0xbd1f9814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4c7896bf # initialize rs1
li x7, 0xb5dd6f30 # initialize rs2
mul x31, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x232f5d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb561f175 # initialize rs1
li x8, 0x1ab34c0e # initialize rs2
mul x8, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x25, 0x32f190fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b2be0fa # initialize rs1
li x9, 0xee17123f # initialize rs2
mul x25, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x03dfcdc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf80d618e # initialize rs1
li x10, 0xba864a26 # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x14, 0x8da0306f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8e80b120 # initialize rs1
li x11, 0x74763116 # initialize rs2
mul x14, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x3, 0x0d9dca5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb210dced # initialize rs1
li x12, 0x5a6fab77 # initialize rs2
mul x3, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0xa3483778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdb3a61c9 # initialize rs1
li x13, 0x8d620b63 # initialize rs2
mul x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x13, 0xd152a88a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf14f15e # initialize rs1
li x14, 0x760f7c15 # initialize rs2
mul x13, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x28, 0xaab0a078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4fef1b57 # initialize rs1
li x15, 0x73d6bc4d # initialize rs2
mul x28, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x11, 0x98ad81e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x73d9ecaf # initialize rs1
li x16, 0x3ce37f5e # initialize rs2
mul x11, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x24, 0x5df64b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa02d9b54 # initialize rs1
li x17, 0xc15add3d # initialize rs2
mul x24, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x28, 0x72f1a6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf848086c # initialize rs1
li x18, 0xe94c22a6 # initialize rs2
mul x28, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0x8431de30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8e5c855e # initialize rs1
li x19, 0xc4c4d1d3 # initialize rs2
mul x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0x8e84e451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x005e857c # initialize rs1
li x20, 0xc985d0b2 # initialize rs2
mul x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x20, 0x85f89e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa8837b96 # initialize rs1
li x21, 0x10d7ba5c # initialize rs2
mul x20, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x16, 0xdfc7a53b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x353dab1b # initialize rs1
li x22, 0x004c7416 # initialize rs2
mul x16, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x17, 0x011b9469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x60f4b4ad # initialize rs1
li x23, 0x86281c99 # initialize rs2
mul x17, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4ee22de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5d149368 # initialize rs1
li x24, 0xb270c878 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x24, 0x72e5ccb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa332872d # initialize rs1
li x25, 0x850788a0 # initialize rs2
mul x24, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x11, 0x6f2f6b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x93eb2201 # initialize rs1
li x26, 0x2c1fc853 # initialize rs2
mul x11, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x5, 0xac3d54a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3df665d3 # initialize rs1
li x27, 0xa73f9f76 # initialize rs2
mul x5, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x1, 0x35c165af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8e71213d # initialize rs1
li x28, 0xe52ea421 # initialize rs2
mul x1, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0xd25bd4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd13a12c9 # initialize rs1
li x29, 0x3de1b1c5 # initialize rs2
mul x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x26, 0xe6cba2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b514217 # initialize rs1
li x30, 0x3601aee1 # initialize rs2
mul x26, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0xe64d69dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa75ad9d9 # initialize rs1
li x31, 0xffd6066d # initialize rs2
mul x13, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x164146be)
li x20, 0x6c8054cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x164146be # initialize rs1
li x28, 0x750995e8 # initialize rs2
mul x20, x7, x28 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5a239287)
li x15, 0xacefc5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa5dc6d79 # initialize rs1
li x25, 0xc4a7c4fb # initialize rs2
mul x15, x30, x25 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x1e63d3cf)
li x16, 0xf9ce766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa3270d0a # initialize rs1
li x22, 0x1e63d3cf # initialize rs2
mul x16, x25, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x1ddae068)
li x9, 0x32ce14a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x215bd4c6 # initialize rs1
li x5, 0xe2251f98 # initialize rs2
mul x9, x28, x5 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-div.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x59a99ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdc4f81d7 # initialize rs1
li x24, 0xc9d83226 # initialize rs2
div x0, x27, x24 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0078c141 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14828ffa # initialize rs1
li x22, 0x546a2027 # initialize rs2
div x1, x9, x22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3bd74531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb22196fd # initialize rs1
li x23, 0x83026ab2 # initialize rs2
div x2, x29, x23 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xae671d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6acad670 # initialize rs1
li x24, 0x623ac830 # initialize rs2
div x3, x9, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x758bcd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x530067c5 # initialize rs1
li x16, 0x1c7cd7e0 # initialize rs2
div x4, x2, x16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc33bd824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x69316c0c # initialize rs1
li x13, 0x2a02f5aa # initialize rs2
div x5, x5, x13 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa09e153b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7418e53b # initialize rs1
li x12, 0xd73ae682 # initialize rs2
div x6, x29, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x8ba33fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9b30809 # initialize rs1
li x18, 0x04c7d6b3 # initialize rs2
div x7, x30, x18 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5dce67ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6515b73c # initialize rs1
li x21, 0x92e790ba # initialize rs2
div x8, x24, x21 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf7915aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5a13cde1 # initialize rs1
li x28, 0xf9450433 # initialize rs2
div x9, x2, x28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x321a447a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55772f2b # initialize rs1
li x17, 0x69edfe82 # initialize rs2
div x10, x22, x17 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5502d608 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc4081a8b # initialize rs1
li x27, 0xf52102e5 # initialize rs2
div x11, x8, x27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x113f375a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9e737594 # initialize rs1
li x8, 0xbf7df7b3 # initialize rs2
div x12, x3, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xfd450487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa2197cd1 # initialize rs1
li x18, 0x0d118546 # initialize rs2
div x13, x31, x18 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xefefcf1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0f039cf4 # initialize rs1
li x10, 0x6a4de7ce # initialize rs2
div x14, x4, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa3aea543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xef1fcb6e # initialize rs1
li x26, 0x0a710487 # initialize rs2
div x15, x30, x26 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3e81ef4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x29c151b6 # initialize rs1
li x9, 0x4aac869a # initialize rs2
div x16, x23, x9 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xae8f6d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe162a0b6 # initialize rs1
li x25, 0x0776a0a1 # initialize rs2
div x17, x15, x25 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x55038d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc33b353d # initialize rs1
li x29, 0xa65b026c # initialize rs2
div x18, x20, x29 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc882892d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x39e5162b # initialize rs1
li x14, 0x4ba5e38e # initialize rs2
div x19, x1, x14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa5da8726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa376ad56 # initialize rs1
li x6, 0xba69b40c # initialize rs2
div x20, x10, x6 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd22a6e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x92618c37 # initialize rs1
li x3, 0x951aaf0a # initialize rs2
div x21, x12, x3 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x63d756ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6bdc7077 # initialize rs1
li x21, 0xcde5f292 # initialize rs2
div x22, x11, x21 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8eb0004b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbffa4923 # initialize rs1
li x14, 0x87b44771 # initialize rs2
div x23, x30, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x41b20b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa79c9159 # initialize rs1
li x21, 0xba75b6d8 # initialize rs2
div x24, x15, x21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x95f65f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x930ca592 # initialize rs1
li x14, 0xbd82e7d7 # initialize rs2
div x25, x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb4f5fd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4a080e7f # initialize rs1
li x19, 0x0953e890 # initialize rs2
div x26, x2, x19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xed3b8fef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf46bb227 # initialize rs1
li x19, 0x673aa009 # initialize rs2
div x27, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8ebf3eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7d28c1f9 # initialize rs1
li x31, 0x5dbc95fc # initialize rs2
div x28, x2, x31 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x888a407c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86fe85a4 # initialize rs1
li x24, 0xd642afa1 # initialize rs2
div x29, x11, x24 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3e6a5fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf077b96c # initialize rs1
li x17, 0xe5659afe # initialize rs2
div x30, x28, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x53d04aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb241c545 # initialize rs1
li x24, 0x744f76fc # initialize rs2
div x31, x15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x1, 0xf7ddeea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9b9d2d9f # initialize rs1
li x2, 0x48b9b48f # initialize rs2
div x1, x0, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0xa7471b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc0ca2ffd # initialize rs1
li x19, 0x17dc04c7 # initialize rs2
div x5, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0xb93aa285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x073baedf # initialize rs1
li x7, 0xc30e99a1 # initialize rs2
div x26, x2, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x5a433a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa67d4c7d # initialize rs1
li x7, 0x070922b4 # initialize rs2
div x6, x3, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x16, 0x322f31a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe596566f # initialize rs1
li x14, 0x3e5a51a7 # initialize rs2
div x16, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0x2be56a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xed4f574f # initialize rs1
li x7, 0xa5a1111a # initialize rs2
div x6, x5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x2c4045c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xcf4f2ab0 # initialize rs1
li x25, 0xb4cfcc45 # initialize rs2
div x12, x6, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x30381112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xda266a8e # initialize rs1
li x31, 0x0ed69200 # initialize rs2
div x16, x7, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0x093b547e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6ec4d423 # initialize rs1
li x24, 0x58bfe8e1 # initialize rs2
div x21, x8, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x31, 0xb9a5bb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2fb765ff # initialize rs1
li x26, 0x58502345 # initialize rs2
div x31, x9, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xa94acd40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed5b5abd # initialize rs1
li x18, 0xcc0051bd # initialize rs2
div x21, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x012f1723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x71af39b7 # initialize rs1
li x15, 0xd3c275e1 # initialize rs2
div x4, x11, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0xd08b5f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5c366bdb # initialize rs1
li x10, 0x465cc32d # initialize rs2
div x19, x12, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x4fce3c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x13f12e83 # initialize rs1
li x26, 0x2f1d11e4 # initialize rs2
div x8, x13, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x8ed76459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x98cf7a9b # initialize rs1
li x28, 0x1b819e38 # initialize rs2
div x20, x14, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x741296d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2974fca0 # initialize rs1
li x14, 0xc4d9b6c9 # initialize rs2
div x29, x15, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0xf9c19231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe560ff43 # initialize rs1
li x9, 0x970df637 # initialize rs2
div x19, x16, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0xc01bdd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xce8d795d # initialize rs1
li x21, 0x7fffc6c7 # initialize rs2
div x6, x17, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0xb0338783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x167c4f86 # initialize rs1
li x2, 0x5f5e45ec # initialize rs2
div x3, x18, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0xd3907d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ed31610 # initialize rs1
li x29, 0x6ab406bf # initialize rs2
div x28, x19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x80cbbe75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa00f7213 # initialize rs1
li x24, 0x13c9be9a # initialize rs2
div x2, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x7848d623 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa499821e # initialize rs1
li x10, 0xfb009ad2 # initialize rs2
div x20, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0x4a1fea2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xae9cd760 # initialize rs1
li x18, 0xb0e6d780 # initialize rs2
div x15, x22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x20234549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe06726c0 # initialize rs1
li x21, 0x73687dde # initialize rs2
div x31, x23, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0x05dfa5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf52a7cd5 # initialize rs1
li x27, 0x0ab61cb4 # initialize rs2
div x3, x24, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x6c47526e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x50cdc409 # initialize rs1
li x13, 0x47d8c47b # initialize rs2
div x10, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0x30bbb078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ca4aa39 # initialize rs1
li x24, 0xd9c3f04c # initialize rs2
div x22, x26, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0x2df520f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x01cc5ea4 # initialize rs1
li x4, 0xaa2540ca # initialize rs2
div x26, x27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xd79d0bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x745b6784 # initialize rs1
li x13, 0x4ad0e57f # initialize rs2
div x30, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0x8bb4b2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc72d932a # initialize rs1
li x8, 0x70351e0e # initialize rs2
div x15, x29, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0xe3250f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9ec0cb3 # initialize rs1
li x19, 0x7d1ddc72 # initialize rs2
div x22, x30, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x581fe333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0071c26f # initialize rs1
li x1, 0xff0ad905 # initialize rs2
div x19, x31, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0x5bd478c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9c292006 # initialize rs1
li x0, 0x772a3ae6 # initialize rs2
div x22, x19, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x24, 0xc6843528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe8ab49ae # initialize rs1
li x1, 0x9ea6b2c4 # initialize rs2
div x24, x13, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0x7543eb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2773c1e5 # initialize rs1
li x2, 0x86cf2007 # initialize rs2
div x20, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0xeeb2c844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x97abb85c # initialize rs1
li x3, 0x2f962a50 # initialize rs2
div x25, x22, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x23, 0x20e79f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc704d541 # initialize rs1
li x4, 0x5ae16fb5 # initialize rs2
div x23, x2, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x7, 0x2a4cb83b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2dd13895 # initialize rs1
li x5, 0xbb842e6f # initialize rs2
div x7, x30, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x18, 0xa0de8559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8eb2f893 # initialize rs1
li x6, 0xa336aa25 # initialize rs2
div x18, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x5, 0xca864d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbb1892d7 # initialize rs1
li x7, 0x3756d589 # initialize rs2
div x5, x30, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xae7640cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa09074c4 # initialize rs1
li x8, 0x2dbc45cf # initialize rs2
div x9, x25, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x9dfc8c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb6b8f929 # initialize rs1
li x9, 0xd9f21c4b # initialize rs2
div x14, x18, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x5f981ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11ef826e # initialize rs1
li x10, 0x33e40d95 # initialize rs2
div x5, x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x3, 0xca3a484a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8492bf31 # initialize rs1
li x11, 0x359fa07d # initialize rs2
div x3, x23, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x586f639a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d49da00 # initialize rs1
li x12, 0xcaabf279 # initialize rs2
div x22, x28, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x9657fec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x49b2b714 # initialize rs1
li x13, 0x9180d182 # initialize rs2
div x11, x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0xec2a9e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf307326f # initialize rs1
li x14, 0x361b2c77 # initialize rs2
div x15, x6, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xd78e5320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe213efc6 # initialize rs1
li x15, 0x6a65f16c # initialize rs2
div x30, x5, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0xe69cd59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x31758c86 # initialize rs1
li x16, 0x8b184e6c # initialize rs2
div x22, x28, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x12ba04a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4583e9ff # initialize rs1
li x17, 0xa1ff43ed # initialize rs2
div x13, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x59275146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0090a0e3 # initialize rs1
li x18, 0xa2f20f5f # initialize rs2
div x13, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x4d5d74d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x71cb2f59 # initialize rs1
li x19, 0x27739185 # initialize rs2
div x28, x3, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0x6a69c855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x72d78cf9 # initialize rs1
li x20, 0x2cb4b195 # initialize rs2
div x6, x8, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x642d47bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x30e47907 # initialize rs1
li x21, 0x7a912a38 # initialize rs2
div x2, x7, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x4e9bd6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8ce5ae1b # initialize rs1
li x22, 0x6d3af4c0 # initialize rs2
div x20, x11, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0x0862716a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2cb3943c # initialize rs1
li x23, 0x0b30a8f7 # initialize rs2
div x2, x19, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0x4600eeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8c3bfb02 # initialize rs1
li x24, 0xc29ca574 # initialize rs2
div x25, x22, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0xaadf21a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff4cca6b # initialize rs1
li x25, 0xa83163fd # initialize rs2
div x6, x12, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xfe81671d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb785f0c6 # initialize rs1
li x26, 0xaae8ee19 # initialize rs2
div x24, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x2b616c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5040a528 # initialize rs1
li x27, 0xf7993c43 # initialize rs2
div x1, x17, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0xc1bf0e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbf2183fa # initialize rs1
li x28, 0x29201349 # initialize rs2
div x24, x4, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x4d7311a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcb89dda4 # initialize rs1
li x29, 0xdc149e6c # initialize rs2
div x9, x28, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xac7b79d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x24998440 # initialize rs1
li x30, 0xd18c725e # initialize rs2
div x18, x6, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xc0df3423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x735c4446 # initialize rs1
li x31, 0x04e3bc46 # initialize rs2
div x28, x3, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xc7ff2429)
li x27, 0x48f00d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x48f00d7f # initialize rs1
li x0, 0x52c0c799 # initialize rs2
div x27, x17, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x7cb8b7e9)
li x7, 0x7cb8b7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7cb8b7e9 # initialize rs1
li x5, 0x7cb8b7e9 # initialize rs2
div x7, x0, x5 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x4899539b)
li x9, 0x3b80901a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4899539b # initialize rs1
li x14, 0x4899539b # initialize rs2
div x9, x28, x14 # perform operation

# Testcase cmp_gpr_hazard raw test
div x31, x9, x12 # perform first operation
div x25, x31, x26 # perform second operation

# Testcase cmp_gpr_hazard raw test
div x12, x14, x25 # perform first operation
div x16, x27, x12 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x2, x15, x9 # perform first operation
div x2, x6, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
div x16, x5, x17 # perform first operation
div x16, x23, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
div x12, x16, x23 # perform first operation
div x16, x20, x23 # perform second operation

# Testcase cmp_gpr_hazard war test
div x14, x21, x16 # perform first operation
div x16, x24, x16 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xd5b6e1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x0, 0xd78b2342 # initialize rs2
div x6, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0xff55f633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
div x13, x24, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xa83a1fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x5, 0x00000000 # initialize rs2
div x7, x28, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x3134d649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x0, 0xdf13e76e # initialize rs2
div x30, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x8938690d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
div x23, x26, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x13d4a996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
div x8, x28, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xf6a61f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x0, 0x7cc339c4 # initialize rs2
div x16, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xe18f19e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
div x16, x24, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0xd48e1937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
div x31, x18, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0xc84a0b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x0, 0xeb5a33f5 # initialize rs2
div x2, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x14, 0x35e2443b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
div x14, x25, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0xf4f2c427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
div x21, x2, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x91707f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x0, 0xc07a94af # initialize rs2
div x21, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x9, 0xd8f1293e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
div x9, x4, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x7db15b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
div x19, x30, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x7, 0x6d8a64a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x0, 0xfac0d600 # initialize rs2
div x7, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0xd5ce5cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
div x31, x21, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x1, 0x6c7898a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
div x1, x22, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x5, 0x796b65c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x0, 0xe1de4bff # initialize rs2
div x5, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0x3a61e772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
div x19, x23, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0x96c92ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
div x24, x10, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0xf6c8727f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x0, 0x60249f51 # initialize rs2
div x16, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0xde526388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
div x12, x28, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x0fae4582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
div x22, x19, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x5b874e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x0, 0xf57837d1 # initialize rs2
div x27, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0x614e6770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
div x26, x1, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xfe14fec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
div x23, x8, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x21, 0x00d5e76a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x0, 0xc474ce69 # initialize rs2
div x21, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0x6980a747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
div x11, x25, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x16, 0xa9c7eca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
div x16, x23, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x356725aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x0, 0xd267a331 # initialize rs2
div x2, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x5, 0x2df7c155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
div x5, x21, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x13, 0x1e3dd8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
div x13, x14, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0x16858ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x0, 0xd73ab71a # initialize rs2
div x26, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0xc6d5c6be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
div x26, x2, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0xd7cd8413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
div x29, x24, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x2f232d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x17, 0x2947b57c # initialize rs2
div x14, x9, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0xeb281315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x6, 0x9494606f # initialize rs2
div x21, x1, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0xac5ac854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x21, 0x4348dd01 # initialize rs2
div x15, x24, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0xdf7b4553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x13, 0xd0905866 # initialize rs2
div x25, x21, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xf18bc72a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x20, 0x7158cdaf # initialize rs2
div x13, x29, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x3dfd732f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x20, 0xe3710ade # initialize rs2
div x1, x10, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x1e04518b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x3, 0x3525545b # initialize rs2
div x28, x19, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x57f6c38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x10, 0x6d96d58f # initialize rs2
div x7, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x1d9c4f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x1, 0x2c0d3490 # initialize rs2
div x5, x19, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0xfc1e4dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x20, 0x559307ef # initialize rs2
div x9, x22, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xcd70f336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x6, 0x36cf9739 # initialize rs2
div x2, x9, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x4bca170e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x23, 0x7ccde768 # initialize rs2
div x11, x17, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x4, 0x17581e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8181f2a9 # initialize rs1
li x2, 0x00000000 # initialize rs2
div x4, x16, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xf1938f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2d8f682f # initialize rs1
li x14, 0x00000001 # initialize rs2
div x17, x25, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x92b45d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xda72135d # initialize rs1
li x4, 0x00000002 # initialize rs2
div x5, x19, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x2, 0x910c65c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3d6a089d # initialize rs1
li x20, 0x80000000 # initialize rs2
div x2, x17, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x7, 0xb9b43cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c0ff55a # initialize rs1
li x16, 0x80000001 # initialize rs2
div x7, x11, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0xe9e0549b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x79097a71 # initialize rs1
li x21, 0x7fffffff # initialize rs2
div x26, x19, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0x26248601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfbee35c5 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
div x17, x31, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xb872662a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x688ef01b # initialize rs1
li x1, 0xffffffff # initialize rs2
div x16, x25, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x5f5d1cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x927a2201 # initialize rs1
li x10, 0xfffffffe # initialize rs2
div x13, x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x8, 0x5e488655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5ffe0298 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x8, x7, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xedb8909f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x607439d2 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x14, x25, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0x71599eec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1d4d3538 # initialize rs1
li x2, 0x55555555 # initialize rs2
div x31, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0xf323cfdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
div x22, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0xb80e7d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
div x13, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x4, 0xa7c9532a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
div x4, x2, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x17, 0x8170a45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
div x17, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x3, 0x950c26bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
div x3, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x27, 0x8a8cf96e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
div x27, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x2, 0xb959e62e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
div x2, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0xeac6c551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
div x20, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x88ecce6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x29, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x2, 0xfdc1bc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
div x2, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0xaf1987e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
div x10, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x9, 0xfd11caae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
div x9, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x406e601b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
div x16, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x640ef1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
div x30, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x6998938e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
div x2, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x23, 0x8573fa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x4, 0x80000000 # initialize rs2
div x23, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x7b6458bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
div x29, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0xea5172ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x27, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x024bed62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
div x11, x30, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x8b5fdc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
div x7, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x6e0e1cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x7, 0xfffffffe # initialize rs2
div x17, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x27, 0x8e744f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
div x27, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x115777f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x23, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x568fb389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
div x12, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x388367b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x15, 0x00000000 # initialize rs2
div x18, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x50b84533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x14, 0x00000001 # initialize rs2
div x12, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x8a2c94be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
div x23, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x11, 0xe18c0fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
div x11, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x86ffd423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x22, 0x80000001 # initialize rs2
div x20, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x12, 0x07ed66cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x12, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0xa53bd2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
div x31, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x9faf02c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
div x24, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0x1f8ed3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x5, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x23, 0x72d624fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
div x23, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x94afe7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
div x19, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x15, 0x0d67513b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x23, 0x55555555 # initialize rs2
div x15, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x21, 0x5ad6ea89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
div x21, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0xbb87a25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
div x8, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x8accac0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
div x14, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x6, 0xdc14ee7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
div x6, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x30, 0xed2b88c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
div x30, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x7b885f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
div x15, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x4, 0x61dff236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
div x4, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x2, 0xa60c4356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
div x2, x18, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x4, 0x9a450fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
div x4, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x11, 0xda8b1532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
div x11, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x4a50858c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
div x11, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x0a97c5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x13, 0x55555555 # initialize rs2
div x30, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x9, 0xf4e6b89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
div x9, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x1, 0x5ca158fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
div x1, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x42fea32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
div x31, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x879a1410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
div x5, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x26, 0x938b5c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
div x26, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0x39df053f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
div x17, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x1a671640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
div x1, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x28, 0x3c2ddf7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
div x28, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x1, 0x0730ef4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
div x1, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x29, 0x1646bdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
div x29, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x30, 0xe27e796f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
div x30, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x74ff0c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
div x5, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x10, 0xbc04e078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
div x10, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x9, 0x1923c162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
div x9, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0xae752e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
div x7, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x31, 0x5d92a2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
div x31, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x0ce7e5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x3, 0x80000001 # initialize rs2
div x20, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0x5a76990e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
div x21, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0xa9fc0157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
div x14, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x17, 0x60a250e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
div x17, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x26, 0xfa29de50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x26, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x27, 0x34283c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
div x27, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x12, 0xb2d35c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
div x12, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x59cf7bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
div x1, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x21, 0x80df3a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
div x21, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x15, 0xa3b90764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
div x15, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x17, 0x29ce95a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x22, 0x00000002 # initialize rs2
div x17, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x836f4532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
div x17, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0xd5dac690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x30, 0x80000001 # initialize rs2
div x19, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x88f41aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
div x15, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0xf61d3ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
div x24, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x8, 0xd6724578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
div x8, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x4, 0xde0b68d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
div x4, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x1, 0x72bff429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
div x1, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x14, 0xf4150253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
div x14, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x9d59d9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
div x17, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xf3d1ec6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
div x13, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x172ed6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
div x29, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0xd4f2ff62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
div x24, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x12, 0x68b1604b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x4, 0x80000000 # initialize rs2
div x12, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x26, 0xe80d8e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
div x26, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x13, 0xebb1cd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
div x13, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0x1fab6443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
div x30, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0xdd132f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
div x14, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x9b31031e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
div x28, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x17, 0x70135435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
div x17, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0x945b9b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
div x23, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0x469b2c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
div x3, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x4, 0xeeaa03e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
div x4, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x29, 0x4c6ae0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
div x29, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0xf1644195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
div x10, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0x70b95c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
div x28, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xe4570e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
div x2, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x19, 0xfd23fb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
div x19, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x19, 0x866752c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
div x19, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x22, 0x57931e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
div x22, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x352f5d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
div x31, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x27, 0xa8f7b55e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x27, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0x5a9dd756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
div x18, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x2, 0xd16e66d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
div x2, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x5, 0xfb831f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x4, 0x00000000 # initialize rs2
div x5, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x20, 0x39165075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x7, 0x00000001 # initialize rs2
div x20, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x31, 0x4ec7eec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x3, 0x00000002 # initialize rs2
div x31, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x16, 0xff75863f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x6, 0x80000000 # initialize rs2
div x16, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x31, 0x034db15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x4, 0x80000001 # initialize rs2
div x31, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x8, 0x2dc87f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x6, 0x7fffffff # initialize rs2
div x8, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x21, 0xa76ed326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
div x21, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x1, 0x283bdd87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x13, 0xffffffff # initialize rs2
div x1, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x19, 0x15630ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x23, 0xfffffffe # initialize rs2
div x19, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x11, 0x4d02b37f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
div x11, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x8, 0x584063f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
div x8, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x14, 0x43e036be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x23, 0x55555555 # initialize rs2
div x14, x27, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0xa704a6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x8, 0x00000000 # initialize rs2
div x24, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x14, 0x101cbc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x18, 0x00000001 # initialize rs2
div x14, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x31, 0x5f80e4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x15, 0x00000002 # initialize rs2
div x31, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0xa49bd321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x3, 0x80000000 # initialize rs2
div x12, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x16, 0x1f14d962 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0x80000001 # initialize rs2
div x16, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x30, 0xc98c75ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x30, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x27, 0xa5e5878c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x7ffffffe # initialize rs2
div x27, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x24, 0x86cb9b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x21, 0xffffffff # initialize rs2
div x24, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xacabf4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
div x27, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x25, 0xbebf88c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
div x25, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0x9120f13a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
div x5, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x25, 0xcd26f704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
div x25, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x1bb08e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
div x1, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x45ea097e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x22, 0x00000001 # initialize rs2
div x24, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0xd5c73e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
div x27, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x20, 0x7acfdcb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x14, 0x80000000 # initialize rs2
div x20, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0xa47d2d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
div x9, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x6, 0xda97efa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x10, 0x7fffffff # initialize rs2
div x6, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x12, 0x2f1ce62c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
div x12, x4, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x1, 0x70f40913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x15, 0xffffffff # initialize rs2
div x1, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x25f740b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x11, 0xfffffffe # initialize rs2
div x22, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x27, 0xf391afde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
div x27, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x27, 0xa5f937fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
div x27, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x2f0d157f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
div x18, x17, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xab4f3594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x03a3c7fc # initialize rs1
li x8, 0x3ba0d06c # initialize rs2
div x0, x0, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xea5da52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc6ac08da # initialize rs1
li x7, 0xed4f9bc4 # initialize rs2
div x1, x1, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x346b9c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x52868605 # initialize rs1
li x15, 0xbb4e83f5 # initialize rs2
div x2, x2, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7cacf05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x382331be # initialize rs1
li x31, 0x3587bb07 # initialize rs2
div x3, x3, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x73044e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0bc95633 # initialize rs1
li x23, 0xcafdd250 # initialize rs2
div x4, x4, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x509932f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd443ad19 # initialize rs1
li x25, 0x9a8f091f # initialize rs2
div x5, x5, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xd5da5455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xac7136da # initialize rs1
li x7, 0x023a72f8 # initialize rs2
div x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xe454a67f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc12eaf2f # initialize rs1
li x10, 0x5bc67d71 # initialize rs2
div x7, x7, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x611cb3df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe099507f # initialize rs1
li x17, 0x2034079e # initialize rs2
div x8, x8, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xde9cec67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7f42c5c6 # initialize rs1
li x19, 0xed92a622 # initialize rs2
div x9, x9, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x75e8b30a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd68f4067 # initialize rs1
li x27, 0x7556f3c6 # initialize rs2
div x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x93b35205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xee9fc0b7 # initialize rs1
li x5, 0x7632914a # initialize rs2
div x11, x11, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2b609f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe963be49 # initialize rs1
li x27, 0x61349cc3 # initialize rs2
div x12, x12, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1151c46e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x588ee796 # initialize rs1
li x2, 0x3953abe3 # initialize rs2
div x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x48bae6cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa6b29297 # initialize rs1
li x2, 0xe4cbc9e9 # initialize rs2
div x14, x14, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd1ba3490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2561fca6 # initialize rs1
li x24, 0x5c7c9498 # initialize rs2
div x15, x15, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xda7c477c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x359b9c2e # initialize rs1
li x23, 0xdeb84cd3 # initialize rs2
div x16, x16, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x00dd4585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcb6dcd21 # initialize rs1
li x10, 0xb03d9a42 # initialize rs2
div x17, x17, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4773bdf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x52e04084 # initialize rs1
li x23, 0x1f1809d3 # initialize rs2
div x18, x18, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xffca4626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8b8c56f9 # initialize rs1
li x8, 0x53f9e272 # initialize rs2
div x19, x19, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4ff1af7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb775124e # initialize rs1
li x23, 0x5878656e # initialize rs2
div x20, x20, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa7d57684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b1c6c93 # initialize rs1
li x4, 0x36d749c5 # initialize rs2
div x21, x21, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5e529e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x459951df # initialize rs1
li x16, 0x522c7867 # initialize rs2
div x22, x22, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd593bed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x56b94ccb # initialize rs1
li x8, 0xaee15e1b # initialize rs2
div x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5fbe855b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8d93b52b # initialize rs1
li x10, 0x743748d8 # initialize rs2
div x24, x24, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3ecf8346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa64f8903 # initialize rs1
li x15, 0xd22acfdb # initialize rs2
div x25, x25, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8779d30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4de7c5e0 # initialize rs1
li x14, 0x3b8d1de6 # initialize rs2
div x26, x26, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0bac6706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xee0b8e00 # initialize rs1
li x30, 0x36f49321 # initialize rs2
div x27, x27, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe87d4765 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7343d8b1 # initialize rs1
li x12, 0xb001f965 # initialize rs2
div x28, x28, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e53aafc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe15b2cc8 # initialize rs1
li x1, 0xf46e9056 # initialize rs2
div x29, x29, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3589359c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x430cc918 # initialize rs1
li x6, 0xa76bc30c # initialize rs2
div x30, x30, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3f5d3f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x31922ffc # initialize rs1
li x17, 0xf757b495 # initialize rs2
div x31, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4daba62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa77223f1 # initialize rs1
li x0, 0x7298e7c0 # initialize rs2
div x0, x9, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa8a7db74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbfad0cb9 # initialize rs1
li x1, 0xe64b468e # initialize rs2
div x1, x11, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x6bfaf0cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5c31f7ec # initialize rs1
li x2, 0xa305e5fe # initialize rs2
div x2, x29, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x14134887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x69cc19a6 # initialize rs1
li x3, 0x31a8eeca # initialize rs2
div x3, x15, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x8bd18d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1c5ce384 # initialize rs1
li x4, 0xbe1f9937 # initialize rs2
div x4, x4, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x24b0c8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83e5a9e6 # initialize rs1
li x5, 0x915e8a39 # initialize rs2
div x5, x1, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x46bcae5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe7b74b9a # initialize rs1
li x6, 0x0cb25ac3 # initialize rs2
div x6, x1, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x36096a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa4a17ff9 # initialize rs1
li x7, 0xbba26556 # initialize rs2
div x7, x16, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x553775df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x614e0108 # initialize rs1
li x8, 0xf123d102 # initialize rs2
div x8, x17, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf37efea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1903ac83 # initialize rs1
li x9, 0x4e60b27a # initialize rs2
div x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x32fbac2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9a9d8d8d # initialize rs1
li x10, 0xe53f149e # initialize rs2
div x10, x28, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x13f83b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x26ec377a # initialize rs1
li x11, 0x85435b92 # initialize rs2
div x11, x25, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x2863412c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa26b4075 # initialize rs1
li x12, 0x77d150c1 # initialize rs2
div x12, x25, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x8037c2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x176ab2dd # initialize rs1
li x13, 0x2f29335d # initialize rs2
div x13, x7, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x3c9d5c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe9560086 # initialize rs1
li x14, 0x22efb65a # initialize rs2
div x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xba280738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8291aa80 # initialize rs1
li x15, 0xf079ef03 # initialize rs2
div x15, x27, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xb5d0031d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf6bf1962 # initialize rs1
li x16, 0xcbe62786 # initialize rs2
div x16, x23, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe7bc1ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x07f1966c # initialize rs1
li x17, 0xb6570223 # initialize rs2
div x17, x7, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xff6145ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5639274d # initialize rs1
li x18, 0xb4b99c24 # initialize rs2
div x18, x18, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x2e8b1588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1fe1da74 # initialize rs1
li x19, 0xceee0e3c # initialize rs2
div x19, x29, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x5070a682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57b0d155 # initialize rs1
li x20, 0xa62d0c1b # initialize rs2
div x20, x12, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xdf49e8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x625c18c2 # initialize rs1
li x21, 0x54eecf48 # initialize rs2
div x21, x19, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xfa109e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x95a8da76 # initialize rs1
li x22, 0x5be9ab82 # initialize rs2
div x22, x4, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x5cc8486e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xba5efafd # initialize rs1
li x23, 0xfa860530 # initialize rs2
div x23, x27, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xc45ef159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x59cfb408 # initialize rs1
li x24, 0xe694e87c # initialize rs2
div x24, x21, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x01666108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x94b2c453 # initialize rs1
li x25, 0x691b387b # initialize rs2
div x25, x12, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x004ef8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc3282ebe # initialize rs1
li x26, 0x2198f94d # initialize rs2
div x26, x23, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xf1a0e637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x30b7248a # initialize rs1
li x27, 0x6327add4 # initialize rs2
div x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xf54d011b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3869b7fb # initialize rs1
li x28, 0x13161e92 # initialize rs2
div x28, x26, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x214bea60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8b1a9386 # initialize rs1
li x29, 0xa3e3f494 # initialize rs2
div x29, x15, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x26362156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xff0dcd76 # initialize rs1
li x30, 0xc1500fc5 # initialize rs2
div x30, x7, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xced7be5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x79b513eb # initialize rs1
li x31, 0x82801e06 # initialize rs2
div x31, x25, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0447ab98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6f328a87 # initialize rs1
li x0, 0x876abf9c # initialize rs2
div x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf48c9175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x30010108 # initialize rs1
li x1, 0xc6c592cb # initialize rs2
div x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6ffc3329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaebab0 # initialize rs1
li x2, 0xf86fd569 # initialize rs2
div x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x41b20386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdee171d1 # initialize rs1
li x3, 0x6b5c5a81 # initialize rs2
div x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x8a17b773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb381a14b # initialize rs1
li x4, 0x72217e57 # initialize rs2
div x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x834423d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6dee259d # initialize rs1
li x5, 0x616abced # initialize rs2
div x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x18f688bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdc8d19f5 # initialize rs1
li x6, 0x36393c54 # initialize rs2
div x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xc609c654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dbda869 # initialize rs1
li x7, 0xd64e5286 # initialize rs2
div x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc70eb8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcb1b185e # initialize rs1
li x8, 0xcce9712d # initialize rs2
div x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x00d2b20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x32eeef90 # initialize rs1
li x9, 0x5ce833ef # initialize rs2
div x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7307bbd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x27ce543c # initialize rs1
li x10, 0x8d6b8360 # initialize rs2
div x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc94d2ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3934e744 # initialize rs1
li x11, 0xd35370d3 # initialize rs2
div x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x37934cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x87231dae # initialize rs1
li x12, 0xfee467bd # initialize rs2
div x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x60e54229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf896f99a # initialize rs1
li x13, 0xb6890d95 # initialize rs2
div x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6b38a35f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x668caca3 # initialize rs1
li x14, 0x23b56d82 # initialize rs2
div x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x59734b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2357dc93 # initialize rs1
li x15, 0x5b7d1129 # initialize rs2
div x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x707e9677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe098e4f1 # initialize rs1
li x16, 0x87b6b92f # initialize rs2
div x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbdadff87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd38152d1 # initialize rs1
li x17, 0x2753d7be # initialize rs2
div x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc082c25a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa9c2b8c3 # initialize rs1
li x18, 0x61e4ccc3 # initialize rs2
div x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe642b0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ddbf1a0 # initialize rs1
li x19, 0x6b067a15 # initialize rs2
div x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7bdd12eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xff504499 # initialize rs1
li x20, 0x45133915 # initialize rs2
div x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x429dd82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6d6e3a7d # initialize rs1
li x21, 0x8350331a # initialize rs2
div x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf5789deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1ec7c01e # initialize rs1
li x22, 0x916efb85 # initialize rs2
div x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5baafe32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x827a56c5 # initialize rs1
li x23, 0x01644ba8 # initialize rs2
div x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfb48ce7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0bcd6c00 # initialize rs1
li x24, 0xdb73aeba # initialize rs2
div x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1489d752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a2fb931 # initialize rs1
li x25, 0xc9f5b10f # initialize rs2
div x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe83da211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf6efdd6d # initialize rs1
li x26, 0x57692ebc # initialize rs2
div x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5b7c79be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4d3a8833 # initialize rs1
li x27, 0x1b36ad18 # initialize rs2
div x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb74417b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6873e0c5 # initialize rs1
li x28, 0xea072e2f # initialize rs2
div x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb3acdb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x679a864d # initialize rs1
li x29, 0x7530b27c # initialize rs2
div x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe1a78dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ca7e44c # initialize rs1
li x30, 0xc66b4a3f # initialize rs2
div x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x67d18e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x13c302d3 # initialize rs1
li x31, 0xa5e1d57e # initialize rs2
div x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x22, 0xb5dd17fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2d96ab1a # initialize rs1
li x0, 0x7c444bac # initialize rs2
div x22, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x13, 0x13070630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x564c41fb # initialize rs1
li x1, 0x20969975 # initialize rs2
div x13, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x26, 0xcc3c1cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5d24c238 # initialize rs1
li x2, 0x4958bbca # initialize rs2
div x26, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0xe5ddf69e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1eea78c5 # initialize rs1
li x3, 0x349a9a6b # initialize rs2
div x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x8, 0x8a4f855f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe8d74316 # initialize rs1
li x4, 0x760669fe # initialize rs2
div x8, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x17, 0x6c7b9f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x827a0688 # initialize rs1
li x5, 0xb04d9a0f # initialize rs2
div x17, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x18, 0xec63fb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa307c286 # initialize rs1
li x6, 0xa8098490 # initialize rs2
div x18, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0xa31aee58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x85c84e5c # initialize rs1
li x7, 0x53d8726c # initialize rs2
div x7, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x5, 0x2fa9e64f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xae86b7f0 # initialize rs1
li x8, 0xb64cc6af # initialize rs2
div x5, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xbd6fb826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14911af0 # initialize rs1
li x9, 0xf90ffc3e # initialize rs2
div x9, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x26, 0x294fc3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a8219ce # initialize rs1
li x10, 0x83aa16d5 # initialize rs2
div x26, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x24, 0xfdf1fe87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d6ef242 # initialize rs1
li x11, 0xafc123ef # initialize rs2
div x24, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x19, 0xb99b3ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d1a2ab5 # initialize rs1
li x12, 0x4d86eaec # initialize rs2
div x19, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x4, 0x7b49a244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc8d01f7a # initialize rs1
li x13, 0x4bcbe9e9 # initialize rs2
div x4, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x11, 0xf1c00fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x29f5e806 # initialize rs1
li x14, 0x5336a7d1 # initialize rs2
div x11, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x16, 0x94155f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6c45adb7 # initialize rs1
li x15, 0x9bddd15c # initialize rs2
div x16, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x28, 0xd1b1ce3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x705b7a66 # initialize rs1
li x16, 0x33216be3 # initialize rs2
div x28, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x7, 0xc2774680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe3daef4d # initialize rs1
li x17, 0x3959c183 # initialize rs2
div x7, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x19, 0x4c6c0300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x54e8cf48 # initialize rs1
li x18, 0x9e0546f0 # initialize rs2
div x19, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x23, 0x3b285fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf5b992eb # initialize rs1
li x19, 0x332fac1a # initialize rs2
div x23, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x31, 0xd9cd0fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd2103446 # initialize rs1
li x20, 0x80584046 # initialize rs2
div x31, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x13, 0x9e646761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc2c6703b # initialize rs1
li x21, 0xd68f3492 # initialize rs2
div x13, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x13, 0x0407ab03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0eb35ca8 # initialize rs1
li x22, 0x349eb097 # initialize rs2
div x13, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x2f67f991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x891f35bc # initialize rs1
li x23, 0xb45875ca # initialize rs2
div x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x28, 0xf6f5c133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb5a8fc5a # initialize rs1
li x24, 0x9957d75a # initialize rs2
div x28, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x12, 0xa1b0afd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xed3e985b # initialize rs1
li x25, 0x6278aa22 # initialize rs2
div x12, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x18, 0x87ed2291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x759b7e69 # initialize rs1
li x26, 0xb9031058 # initialize rs2
div x18, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0x37b2eb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffa279a8 # initialize rs1
li x27, 0xa9be2bf6 # initialize rs2
div x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x17, 0x0d0b9ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6dbf2cb8 # initialize rs1
li x28, 0xc14c077d # initialize rs2
div x17, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0x87bcf715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x460e331a # initialize rs1
li x29, 0x9b2bbf3c # initialize rs2
div x16, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x20, 0x32009ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x296e2fe4 # initialize rs1
li x30, 0x85e6bf7e # initialize rs2
div x20, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x14, 0xad9a5b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x749aabab # initialize rs1
li x31, 0xc1d345e1 # initialize rs2
div x14, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x1c5f7269)
li x10, 0xb179f1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1c5f7269 # initialize rs1
li x24, 0xf2bf76e7 # initialize rs2
div x10, x28, x24 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1c1f728f)
li x31, 0xb9063a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3e08d71 # initialize rs1
li x22, 0xc3ee870a # initialize rs2
div x31, x12, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6c63a343)
li x6, 0xbbef0981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd483b866 # initialize rs1
li x29, 0x6c63a343 # initialize rs2
div x6, x9, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x7fd8bdec)
li x2, 0x6fb5534e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaa126941 # initialize rs1
li x6, 0x80274214 # initialize rs2
div x2, x19, x6 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
