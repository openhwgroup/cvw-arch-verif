///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zicond//WALLY-COV-czero.nez.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.437892
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x14789bde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x28fef9ef # initialize rs1
li x14, 0xccfcd33e # initialize rs2
czero.nez x0, x4, x14 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x51544a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xebcdc093 # initialize rs1
li x25, 0xbb455f97 # initialize rs2
czero.nez x1, x7, x25 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x90736de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xee97b4e7 # initialize rs1
li x10, 0xdaee6a53 # initialize rs2
czero.nez x2, x20, x10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8cdd7583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x03beffbe # initialize rs1
li x8, 0x600a83d7 # initialize rs2
czero.nez x3, x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xddac9874 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcab31bca # initialize rs1
li x20, 0xb2f1cdee # initialize rs2
czero.nez x4, x21, x20 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x689ea2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xba8e9ba0 # initialize rs1
li x19, 0x6a87ab87 # initialize rs2
czero.nez x5, x22, x19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb14ed6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x871d4165 # initialize rs1
li x17, 0x66971047 # initialize rs2
czero.nez x6, x22, x17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xbcb772f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7eb612e3 # initialize rs1
li x30, 0xecbe87ed # initialize rs2
czero.nez x7, x8, x30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3c9eae24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x05e3c3e0 # initialize rs1
li x14, 0xf381da8f # initialize rs2
czero.nez x8, x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6b3a6bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6f8ee46a # initialize rs1
li x22, 0x158539e9 # initialize rs2
czero.nez x9, x27, x22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x6be35e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5a90401f # initialize rs1
li x31, 0x79050b08 # initialize rs2
czero.nez x10, x21, x31 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc6ebb63c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x71efc9d5 # initialize rs1
li x11, 0x15ff3b97 # initialize rs2
czero.nez x11, x27, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x074c11a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf11dfacd # initialize rs1
li x3, 0xad62a374 # initialize rs2
czero.nez x12, x9, x3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x77219fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xea2e4b1f # initialize rs1
li x6, 0x3fd3e960 # initialize rs2
czero.nez x13, x9, x6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcd76c0db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x229a0ffe # initialize rs1
li x26, 0xc6fa4873 # initialize rs2
czero.nez x14, x23, x26 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7bc81112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bea116c # initialize rs1
li x8, 0xf6d6f5cc # initialize rs2
czero.nez x15, x9, x8 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3d9013d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc6f61f79 # initialize rs1
li x7, 0x57aaf029 # initialize rs2
czero.nez x16, x24, x7 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6ee4bb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1eae927c # initialize rs1
li x17, 0x7712e390 # initialize rs2
czero.nez x17, x4, x17 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4c4093ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfce43d4e # initialize rs1
li x23, 0xde533136 # initialize rs2
czero.nez x18, x1, x23 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x85ff3aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5d15e354 # initialize rs1
li x4, 0x80981909 # initialize rs2
czero.nez x19, x14, x4 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe8ca6064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x479948bf # initialize rs1
li x28, 0xda54a947 # initialize rs2
czero.nez x20, x20, x28 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x34f88439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x071e1890 # initialize rs1
li x4, 0xe625108e # initialize rs2
czero.nez x21, x6, x4 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x69325e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x35fd697f # initialize rs1
li x6, 0xea4a799d # initialize rs2
czero.nez x22, x1, x6 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x78ab9265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x395b5ae2 # initialize rs1
li x14, 0x9a46a490 # initialize rs2
czero.nez x23, x6, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x800f1de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e4eb79f # initialize rs1
li x27, 0xf2ba0a9d # initialize rs2
czero.nez x24, x13, x27 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7872155f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ecf4cb5 # initialize rs1
li x23, 0x4c4e42bc # initialize rs2
czero.nez x25, x26, x23 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb5af2769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x94b01c6e # initialize rs1
li x3, 0x49ffa51d # initialize rs2
czero.nez x26, x21, x3 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5c6f8f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb22d12df # initialize rs1
li x15, 0x2ad31e25 # initialize rs2
czero.nez x27, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8a47f75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x25a0b0c9 # initialize rs1
li x12, 0x84ab1c45 # initialize rs2
czero.nez x28, x20, x12 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfac8dca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x24f0d10b # initialize rs1
li x3, 0xd217041d # initialize rs2
czero.nez x29, x20, x3 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xe102468e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0f5cc62f # initialize rs1
li x27, 0xc12584c0 # initialize rs2
czero.nez x30, x2, x27 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1180c2db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x253ba1fe # initialize rs1
li x8, 0x86f08a70 # initialize rs2
czero.nez x31, x30, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x15, 0x2a6fe55d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x510186f7 # initialize rs1
li x12, 0xea36d19d # initialize rs2
czero.nez x15, x0, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0xe9884a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd0df5cd2 # initialize rs1
li x19, 0xf5d1d02c # initialize rs2
czero.nez x31, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0xd88faee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb09cb90a # initialize rs1
li x22, 0x7fd5f23b # initialize rs2
czero.nez x10, x2, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x024601c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4ea1daa6 # initialize rs1
li x10, 0xa1f1f178 # initialize rs2
czero.nez x1, x3, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x24, 0x87ba62f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1471eb4d # initialize rs1
li x23, 0xce0d0b70 # initialize rs2
czero.nez x24, x4, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0x50ec2f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf9d4f3fa # initialize rs1
li x1, 0xe909ca19 # initialize rs2
czero.nez x3, x5, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0x743e8844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x115d6a74 # initialize rs1
li x18, 0xc2dac034 # initialize rs2
czero.nez x5, x6, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0x363fb749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb5f7d11c # initialize rs1
li x6, 0x727442f5 # initialize rs2
czero.nez x25, x7, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x0d1d0767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd378994d # initialize rs1
li x20, 0xdba6fa00 # initialize rs2
czero.nez x4, x8, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x9f3268da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x07dfa162 # initialize rs1
li x31, 0x7ef7d820 # initialize rs2
czero.nez x30, x9, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0x045f9657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xce979a36 # initialize rs1
li x24, 0x857759d8 # initialize rs2
czero.nez x27, x10, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xbc4299e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x26c176a6 # initialize rs1
li x16, 0x837fbac3 # initialize rs2
czero.nez x6, x11, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xe758d1a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0aa507a2 # initialize rs1
li x11, 0x446abd70 # initialize rs2
czero.nez x13, x12, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x42236da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99dd6214 # initialize rs1
li x12, 0x4f6c4e0d # initialize rs2
czero.nez x2, x13, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xec7edee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfaa9c5cd # initialize rs1
li x10, 0x8e9bff0b # initialize rs2
czero.nez x23, x14, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0xaca87153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf9de9759 # initialize rs1
li x21, 0x4db74cd5 # initialize rs2
czero.nez x9, x15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0x1ac68a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8297d39f # initialize rs1
li x17, 0xbd7e197d # initialize rs2
czero.nez x31, x16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0x41066d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x434505e1 # initialize rs1
li x6, 0x64ad295c # initialize rs2
czero.nez x22, x17, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x2, 0x9f2973c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9ebe9cb3 # initialize rs1
li x8, 0x55cca05e # initialize rs2
czero.nez x2, x18, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x1635ab96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe8f0a163 # initialize rs1
li x31, 0x94b2eb55 # initialize rs2
czero.nez x20, x19, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0xe50b21ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb2c9b831 # initialize rs1
li x16, 0x7ec36d07 # initialize rs2
czero.nez x3, x20, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0xffb4a6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xee069c82 # initialize rs1
li x2, 0xb3ea8d07 # initialize rs2
czero.nez x5, x21, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x6c409203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x507afe77 # initialize rs1
li x3, 0xad6a7f54 # initialize rs2
czero.nez x7, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x7cc97636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xeef73dcf # initialize rs1
li x17, 0xa78220a5 # initialize rs2
czero.nez x4, x23, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0x319ca175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x02d58815 # initialize rs1
li x25, 0x6b8a1953 # initialize rs2
czero.nez x16, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x27, 0x2490f350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc15415c4 # initialize rs1
li x22, 0xad80529f # initialize rs2
czero.nez x27, x25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0xceb2faef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x852cc69f # initialize rs1
li x20, 0x91c80d0c # initialize rs2
czero.nez x12, x26, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0x22ed01d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa65e43d7 # initialize rs1
li x16, 0x4c549b51 # initialize rs2
czero.nez x17, x27, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xa01d8bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x32eab2b0 # initialize rs1
li x8, 0x6c1434f5 # initialize rs2
czero.nez x12, x28, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0x06a49a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd1e07671 # initialize rs1
li x27, 0xb8dd887c # initialize rs2
czero.nez x19, x29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0x64e63c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbc560e3e # initialize rs1
li x23, 0x5e7e0a81 # initialize rs2
czero.nez x13, x30, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x52a70322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x688721c9 # initialize rs1
li x7, 0x307e59e1 # initialize rs2
czero.nez x19, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xc0ff4355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00ffcd96 # initialize rs1
li x0, 0x1a66b3b3 # initialize rs2
czero.nez x27, x4, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xbc5c85ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd81fe684 # initialize rs1
li x1, 0x0781cc67 # initialize rs2
czero.nez x9, x20, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xaa2834e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa9db9d59 # initialize rs1
li x2, 0x7b03d4b5 # initialize rs2
czero.nez x8, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x8a4e58ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x21e13705 # initialize rs1
li x3, 0x0053f49c # initialize rs2
czero.nez x2, x5, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x7, 0x9195b6db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdfd49941 # initialize rs1
li x4, 0x9f64f6c1 # initialize rs2
czero.nez x7, x14, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x22, 0x40709c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x40559203 # initialize rs1
li x5, 0x6eb14d65 # initialize rs2
czero.nez x22, x20, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x20, 0xdc3c9bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xde09585c # initialize rs1
li x6, 0xc8657951 # initialize rs2
czero.nez x20, x2, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x13, 0x5b6f57f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x62c373a6 # initialize rs1
li x7, 0xb0304aa7 # initialize rs2
czero.nez x13, x25, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0xee5db1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd56e8bb6 # initialize rs1
li x8, 0xbb343c26 # initialize rs2
czero.nez x26, x17, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x0a6f6fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3744b52d # initialize rs1
li x9, 0x375ed895 # initialize rs2
czero.nez x24, x3, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0xed1a88d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb299ffe2 # initialize rs1
li x10, 0x902de42a # initialize rs2
czero.nez x26, x7, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x313fb8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xea20bcd7 # initialize rs1
li x11, 0x4f1ee997 # initialize rs2
czero.nez x20, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0xabfb319e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf40a4e2b # initialize rs1
li x12, 0x5115b0fc # initialize rs2
czero.nez x15, x21, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x96228bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc51ddd52 # initialize rs1
li x13, 0x422e28fe # initialize rs2
czero.nez x6, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xe56f51a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x403a0521 # initialize rs1
li x14, 0xc85edb77 # initialize rs2
czero.nez x29, x8, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0xe5aff328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x37f0b12a # initialize rs1
li x15, 0x0dd34775 # initialize rs2
czero.nez x8, x28, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x730ee928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7b85df3b # initialize rs1
li x16, 0x6425fa4e # initialize rs2
czero.nez x19, x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0xfa7f3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6fe17232 # initialize rs1
li x17, 0x1e0f28c6 # initialize rs2
czero.nez x18, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x47fc6657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbe3f89a4 # initialize rs1
li x18, 0x7d87255e # initialize rs2
czero.nez x26, x12, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x760a668e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf694f825 # initialize rs1
li x19, 0x77c191ea # initialize rs2
czero.nez x3, x27, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0x2fa35712 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe9cdd359 # initialize rs1
li x20, 0xaf5d4dc5 # initialize rs2
czero.nez x6, x1, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x877a2ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0289a2d9 # initialize rs1
li x21, 0xce538d31 # initialize rs2
czero.nez x25, x6, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0x82e6d04c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x24a3ce52 # initialize rs1
li x22, 0x999e39ff # initialize rs2
czero.nez x25, x19, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x6166a080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4dfd7635 # initialize rs1
li x23, 0xe0102798 # initialize rs2
czero.nez x3, x22, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x5543c7db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7951c2ba # initialize rs1
li x24, 0x1afaeb38 # initialize rs2
czero.nez x16, x8, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0x10ddaaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x25668549 # initialize rs1
li x25, 0x39fd6710 # initialize rs2
czero.nez x24, x4, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x4, 0x722f4404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x85563d8e # initialize rs1
li x26, 0xd4c3a58f # initialize rs2
czero.nez x4, x3, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xacec366f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x50952fa4 # initialize rs1
li x27, 0x9a8582d1 # initialize rs2
czero.nez x10, x29, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x539a03c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xeab5a13f # initialize rs1
li x28, 0xc5461b09 # initialize rs2
czero.nez x1, x30, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0xdd4bb40d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5ed2f11c # initialize rs1
li x29, 0x20c50353 # initialize rs2
czero.nez x17, x5, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x930b5aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x68fb3ba7 # initialize rs1
li x30, 0x593f8158 # initialize rs2
czero.nez x15, x10, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0xb4f29e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3803c3d3 # initialize rs1
li x31, 0x84f0350f # initialize rs2
czero.nez x13, x22, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x72ef7ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x0, 0xf7c0157a # initialize rs2
czero.nez x31, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xeb6da9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
czero.nez x12, x19, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0x9cf1e1ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
czero.nez x15, x30, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x7989d8ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x0, 0x44b508d7 # initialize rs2
czero.nez x19, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x50a193b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x4, 0x00000001 # initialize rs2
czero.nez x9, x27, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0xc97677c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
czero.nez x26, x16, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x9863ae79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x0, 0x70cdf6c9 # initialize rs2
czero.nez x29, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0x5ac5f22f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
czero.nez x16, x4, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0xeec9e368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
czero.nez x9, x14, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xafa009b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x0, 0xf1cdf0f1 # initialize rs2
czero.nez x9, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x24, 0x43298ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
czero.nez x24, x27, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0x44531770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
czero.nez x8, x22, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0x543be1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x0, 0xcf52ed25 # initialize rs2
czero.nez x23, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xaf681a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
czero.nez x13, x16, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x8b237a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
czero.nez x7, x22, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x13, 0xae84da61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x0, 0x7ec48402 # initialize rs2
czero.nez x13, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0xc1bdebda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
czero.nez x18, x16, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xbf3a5937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
czero.nez x28, x25, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0x3cd07541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x0, 0xf64c5fe4 # initialize rs2
czero.nez x19, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0xc9ac19db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
czero.nez x19, x6, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0x547ce5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
czero.nez x15, x26, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0xc27e87ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x0, 0xb7f01e18 # initialize rs2
czero.nez x1, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x26, 0x093dc485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
czero.nez x26, x30, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x687755b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
czero.nez x20, x15, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x0267a645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x0, 0x630ae02b # initialize rs2
czero.nez x27, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0x7456f572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
czero.nez x18, x7, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x087f8ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
czero.nez x8, x15, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x3, 0xc6ca5d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x0, 0xb0f49f49 # initialize rs2
czero.nez x3, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x22, 0xac34be71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
czero.nez x22, x5, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x8, 0xe89b4670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
czero.nez x8, x4, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x11, 0xa141387e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x0, 0x83f95f6c # initialize rs2
czero.nez x11, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x19, 0xa52c3461 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
czero.nez x19, x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0x8c2df2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
czero.nez x15, x21, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0xae44c0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x0, 0xd03e7014 # initialize rs2
czero.nez x15, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0x2d887636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
czero.nez x1, x30, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xc0afe80f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
czero.nez x22, x14, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0xac9ed8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x20, 0x81845995 # initialize rs2
czero.nez x3, x17, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x31800b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x23, 0x9d1a5e00 # initialize rs2
czero.nez x10, x6, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x30f1a362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x27, 0x45e33b99 # initialize rs2
czero.nez x10, x31, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0xa0e0c0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x20, 0x80006258 # initialize rs2
czero.nez x3, x13, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x29, 0xb567fe58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x31, 0xb40631a2 # initialize rs2
czero.nez x29, x7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0xcaa8c2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x22, 0x510c699f # initialize rs2
czero.nez x27, x30, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x4661f28d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x4, 0xa5dadc11 # initialize rs2
czero.nez x13, x29, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x0fa56792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x8, 0xfb8d203c # initialize rs2
czero.nez x23, x27, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x65fb57fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x3, 0x43bb0d2f # initialize rs2
czero.nez x19, x13, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x24, 0xecc79537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x25, 0xd5c6331b # initialize rs2
czero.nez x24, x13, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0x745b1aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x25, 0x14d29958 # initialize rs2
czero.nez x2, x31, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x17, 0x3fb39f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x16, 0x9b64df66 # initialize rs2
czero.nez x17, x11, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x9cfe574b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x75e8842e # initialize rs1
li x1, 0x00000000 # initialize rs2
czero.nez x23, x19, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0x4753ec7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5f43af39 # initialize rs1
li x24, 0x00000001 # initialize rs2
czero.nez x26, x4, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0xb6e67e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f490f11 # initialize rs1
li x28, 0x00000002 # initialize rs2
czero.nez x10, x16, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x75eee855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x365287f8 # initialize rs1
li x6, 0x80000000 # initialize rs2
czero.nez x3, x5, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x19, 0x9648977c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb4ac6ebc # initialize rs1
li x9, 0x80000001 # initialize rs2
czero.nez x19, x17, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x19, 0x5faa7b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe17e0981 # initialize rs1
li x31, 0x7fffffff # initialize rs2
czero.nez x19, x1, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x7a11eba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8494d5bb # initialize rs1
li x15, 0x7ffffffe # initialize rs2
czero.nez x28, x23, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x79d93866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf92031c1 # initialize rs1
li x24, 0xffffffff # initialize rs2
czero.nez x3, x11, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0xfa1a3b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1404236 # initialize rs1
li x19, 0xfffffffe # initialize rs2
czero.nez x20, x8, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x4, 0xa0a44985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x286a4ea3 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
czero.nez x4, x5, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0x665117a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb094a83d # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
czero.nez x25, x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0x909c6d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0046021a # initialize rs1
li x6, 0x55555555 # initialize rs2
czero.nez x22, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x31, 0xecd8beaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
czero.nez x31, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x9, 0x1592599e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
czero.nez x9, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x43e7d20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
czero.nez x16, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x26, 0xa86e7d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
czero.nez x26, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x30, 0x84d75ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
czero.nez x30, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x8, 0x7ad1ca39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
czero.nez x8, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x11, 0xf3b71291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
czero.nez x11, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x3, 0xa5649370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x23, 0xffffffff # initialize rs2
czero.nez x3, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x4, 0xdf34ba24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
czero.nez x4, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x28, 0x38d8da28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
czero.nez x28, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x24, 0xc097710c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
czero.nez x24, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x21, 0xd3031895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
czero.nez x21, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0xb23f985a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
czero.nez x10, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x74ba29b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
czero.nez x9, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x126d4ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x22, 0x00000002 # initialize rs2
czero.nez x7, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x25, 0xc17657cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
czero.nez x25, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x27, 0x7b6d3e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
czero.nez x27, x2, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x62757c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
czero.nez x29, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x25, 0x7e4d8314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
czero.nez x25, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x5d77971b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
czero.nez x30, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x10, 0x1d61478d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
czero.nez x10, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x20, 0x93df0ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
czero.nez x20, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x15, 0x4dca8359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
czero.nez x15, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x1, 0x68c94130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
czero.nez x1, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x21953be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x21, 0x00000000 # initialize rs2
czero.nez x11, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0xd2bc01e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x14, 0x00000001 # initialize rs2
czero.nez x9, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x74635802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
czero.nez x29, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x27, 0x0fffb31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x19, 0x80000000 # initialize rs2
czero.nez x27, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x27, 0x9052e550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x29, 0x80000001 # initialize rs2
czero.nez x27, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x52408d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x4, 0x7fffffff # initialize rs2
czero.nez x19, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x18, 0xe787eda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
czero.nez x18, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x787760e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x19, 0xffffffff # initialize rs2
czero.nez x21, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x2d2e5b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x23, 0xfffffffe # initialize rs2
czero.nez x2, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x10, 0x62d52bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
czero.nez x10, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x11, 0xf688962c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
czero.nez x11, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x13, 0x47867da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x20, 0x55555555 # initialize rs2
czero.nez x13, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x6, 0xa2575be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
czero.nez x6, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x15, 0x0b9e963e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
czero.nez x15, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x23, 0x24e77882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
czero.nez x23, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x8, 0x7cd21bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
czero.nez x8, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x6, 0x22ed5405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
czero.nez x6, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x3, 0xf30adad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x15, 0x7fffffff # initialize rs2
czero.nez x3, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x24, 0x43684a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
czero.nez x24, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x6, 0xc8ac6136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
czero.nez x6, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x27, 0x79d44103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x29, 0xfffffffe # initialize rs2
czero.nez x27, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x30, 0x4682a702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
czero.nez x30, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0xd39e94b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
czero.nez x24, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x4b386a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
czero.nez x23, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x3a735127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
czero.nez x26, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0xda76ffd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
czero.nez x11, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x14, 0x4e7db7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
czero.nez x14, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x15, 0xa619a169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x27, 0x80000000 # initialize rs2
czero.nez x15, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x01dfe05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
czero.nez x23, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x14, 0x7f333b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000001 # initialize rs1
li x17, 0x7fffffff # initialize rs2
czero.nez x14, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0xf54a83e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
czero.nez x20, x25, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x17, 0x54070034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
czero.nez x17, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x26, 0x021106b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
czero.nez x26, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x4, 0x9b45615e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
czero.nez x4, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x26, 0xbe839896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
czero.nez x26, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0xc6a40026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x29, 0x55555555 # initialize rs2
czero.nez x8, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x113939ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
czero.nez x8, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x9, 0x03082dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
czero.nez x9, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x045bca0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
czero.nez x23, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x13, 0x56012037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x21, 0x80000000 # initialize rs2
czero.nez x13, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x11, 0xf2ef65a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
czero.nez x11, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x13, 0x0825be8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
czero.nez x13, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x18, 0x046f586b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
czero.nez x18, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0xb810e6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
czero.nez x9, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x10, 0xf960ffc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
czero.nez x10, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x6, 0x51fe05ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
czero.nez x6, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0x2bf66932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
czero.nez x25, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x28, 0xb8e7c87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
czero.nez x28, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0xfaf69897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
czero.nez x16, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x668006d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
czero.nez x31, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x26, 0x59dffd83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x15, 0x00000002 # initialize rs2
czero.nez x26, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x3462639f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x26, 0x80000000 # initialize rs2
czero.nez x11, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x12, 0x745fa281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
czero.nez x12, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x11, 0x48520276 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x31, 0x7fffffff # initialize rs2
czero.nez x11, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x17, 0xd05e80f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
czero.nez x17, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0xf053ca48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
czero.nez x31, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x23, 0x40f4fb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
czero.nez x23, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x5, 0x29d1314c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
czero.nez x5, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x30, 0x35bed272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
czero.nez x30, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x26, 0xf4f43f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
czero.nez x26, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0xeab371ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
czero.nez x10, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0x3f17c572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
czero.nez x9, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0xb5452063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
czero.nez x1, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0x72fb55e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
czero.nez x23, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x29, 0x4440a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
czero.nez x29, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0x4abe8911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
czero.nez x4, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xb16b72ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
czero.nez x1, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xaebb8920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
czero.nez x3, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0xb71d3345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
czero.nez x8, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x13, 0xf9d7e677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
czero.nez x13, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x25, 0x05d3d591 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
czero.nez x25, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0x081f8f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
czero.nez x24, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x4, 0x3a915c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
czero.nez x4, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0xfaca049f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x18, 0x00000001 # initialize rs2
czero.nez x17, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x22, 0xdb8a2bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
czero.nez x22, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0x267788fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x6, 0x80000000 # initialize rs2
czero.nez x12, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x12, 0x469be8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
czero.nez x12, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x29, 0xb28f03a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
czero.nez x29, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x25, 0xd7b7d267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
czero.nez x25, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x1, 0xd153f5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
czero.nez x1, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x24, 0x01561236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
czero.nez x24, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x10, 0x88bbfd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
czero.nez x10, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xb844a06c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
czero.nez x31, x3, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x28, 0x0114b060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
czero.nez x28, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x16, 0x540fb6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x3, 0x00000000 # initialize rs2
czero.nez x16, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x25, 0x1efcc8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x24, 0x00000001 # initialize rs2
czero.nez x25, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x28, 0x4a64b112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x16, 0x00000002 # initialize rs2
czero.nez x28, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x9, 0x29d941f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x12, 0x80000000 # initialize rs2
czero.nez x9, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x24, 0xd18fcc99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x15, 0x80000001 # initialize rs2
czero.nez x24, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x22, 0x474f3428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x27, 0x7fffffff # initialize rs2
czero.nez x22, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x9, 0x68667ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
czero.nez x9, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x13, 0x63256d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x20, 0xffffffff # initialize rs2
czero.nez x13, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x19, 0x864e1ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x26, 0xfffffffe # initialize rs2
czero.nez x19, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x21, 0x71211e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
czero.nez x21, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x25, 0xb2d6619b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
czero.nez x25, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x18, 0xe8e7288f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x16, 0x55555555 # initialize rs2
czero.nez x18, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x20, 0xb8db50c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x19, 0x00000000 # initialize rs2
czero.nez x20, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x7, 0x65d1824e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
czero.nez x7, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0x41c3cec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x28, 0x00000002 # initialize rs2
czero.nez x2, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x27, 0xe455358f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x19, 0x80000000 # initialize rs2
czero.nez x27, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x15, 0xaaf0a5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
czero.nez x15, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x2, 0xbe03b74f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x17, 0x7fffffff # initialize rs2
czero.nez x2, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0xaf6bf201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x5, 0x7ffffffe # initialize rs2
czero.nez x3, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x6, 0x026005f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x26, 0xffffffff # initialize rs2
czero.nez x6, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x7, 0x43e92cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0xfffffffe # initialize rs2
czero.nez x7, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x6, 0x523bff26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
czero.nez x6, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x22, 0x542c508e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
czero.nez x22, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x5, 0xaa973593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x24, 0x55555555 # initialize rs2
czero.nez x5, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0xacdd2622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
czero.nez x20, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x10, 0x6392b469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
czero.nez x10, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x13, 0xde1f2e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
czero.nez x13, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x56b8f3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x10, 0x80000000 # initialize rs2
czero.nez x2, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x11, 0xbd884ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
czero.nez x11, x17, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x31, 0x9e36a087 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
czero.nez x31, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x19, 0xbdcd89fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
czero.nez x19, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x25, 0xd69bc8e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
czero.nez x25, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x7, 0xccaf10c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x20, 0xfffffffe # initialize rs2
czero.nez x7, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x19, 0x75187c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
czero.nez x19, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x95131158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
czero.nez x11, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x27, 0x13d13f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
czero.nez x27, x31, x16 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
