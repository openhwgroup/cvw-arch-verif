///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.d.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.503416
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0xe975ac05edfe466f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x005253d7dd1974ea # load immediate value into integer register
fcvt.d.wu f14, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x4489ad291811bb27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe5b13021deea120c # load immediate value into integer register
fcvt.d.wu f4, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x46ba59a4a44847c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0b2034ad27ef5148 # load immediate value into integer register
fcvt.d.wu f7, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x7, 0xc03bbdb941662eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe6963f660b44fb21 # load immediate value into integer register
fcvt.d.wu f7, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0x935ff9e924ed05a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4ddc5ba1e09b1c8b # load immediate value into integer register
fcvt.d.wu f8, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x20, 0x65172779a6391e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x030cdd6fadb5ee28 # load immediate value into integer register
fcvt.d.wu f20, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0x68164f85c7d18730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x06b78bc9e25d65a8 # load immediate value into integer register
fcvt.d.wu f5, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x10, 0x61caeda43f2a4eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xeda5ec3adb5d675d # load immediate value into integer register
fcvt.d.wu f10, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xd318c830ce1882c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3c5d7c557c2fb1a # load immediate value into integer register
fcvt.d.wu f2, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0x767edac9a47ad103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf08722d88896eeab # load immediate value into integer register
fcvt.d.wu f8, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0xc3f199bbcd73ebdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb5a6e0c2721dc993 # load immediate value into integer register
fcvt.d.wu f22, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0x9693cb94f3c342f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2d9a0d17ec0f329d # load immediate value into integer register
fcvt.d.wu f1, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x3056d25299b706f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5824db3886087020 # load immediate value into integer register
fcvt.d.wu f24, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x428e1053dbf4d0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x58acbd42620722aa # load immediate value into integer register
fcvt.d.wu f30, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0x5b5c96cf64513675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7e4a504de8fb711a # load immediate value into integer register
fcvt.d.wu f2, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0xf27cdc97e395fde3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9021924ea50adef5 # load immediate value into integer register
fcvt.d.wu f21, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x9f967f418a70b441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfe25f186bc77fd60 # load immediate value into integer register
fcvt.d.wu f27, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x14b49d047dc1dce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x48ca54e7d54dd885 # load immediate value into integer register
fcvt.d.wu f2, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x17, 0xae0d0a630869fd4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4259db9c5e962243 # load immediate value into integer register
fcvt.d.wu f17, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x11, 0x9adce5b3254eecba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8796fc8eb68aa81f # load immediate value into integer register
fcvt.d.wu f11, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x9, 0x71088402d73690ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3affe775f822d917 # load immediate value into integer register
fcvt.d.wu f9, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0xd76f19d44f1a693e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6084ed12abd6c3bd # load immediate value into integer register
fcvt.d.wu f12, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xc1f8e09aead185a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc78b1ba0eef7e995 # load immediate value into integer register
fcvt.d.wu f11, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x17, 0x2bde4d167fd4e104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf6a15b416aba8155 # load immediate value into integer register
fcvt.d.wu f17, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0xaca6d8857eb25aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x30b14c6674d2fbb5 # load immediate value into integer register
fcvt.d.wu f12, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x57fce8620fd017e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xef6651d39b80c9d3 # load immediate value into integer register
fcvt.d.wu f16, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x16, 0x032a8ae039070991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xad24eb55cb625144 # load immediate value into integer register
fcvt.d.wu f16, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x3c22ba4df9310d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdd10d6298f7eafd8 # load immediate value into integer register
fcvt.d.wu f31, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0x7e0a256bf576da7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x44e8be83a494010f # load immediate value into integer register
fcvt.d.wu f2, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x12, 0x8ed0be9449d7d36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5b0140ce37610fb6 # load immediate value into integer register
fcvt.d.wu f12, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x57cb9aebb443ad3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xedc5076800a61a69 # load immediate value into integer register
fcvt.d.wu f9, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x15, 0x8294c08081eb7b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf1e3d6f89f3910e9 # load immediate value into integer register
fcvt.d.wu f15, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x27cb3a03f49e539c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # load immediate value into integer register
fcvt.d.wu f9, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x26609d38141e1a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # load immediate value into integer register
fcvt.d.wu f16, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x40ce79ce8a37ca05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # load immediate value into integer register
fcvt.d.wu f20, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0xb54747961d411fda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # load immediate value into integer register
fcvt.d.wu f22, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x78f6b9701b1cae83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # load immediate value into integer register
fcvt.d.wu f5, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x4, 0x52a7039955944027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.wu f4, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0xe005d05407f4450f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.wu f24, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0x4134e77884e37265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.wu f11, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0xe9da52ae88e303e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.wu f16, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x3, 0xbb0b9788f84d252d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.d.wu f3, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xab079cca24a5ac8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.wu f21, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x9a724a084449b702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # load immediate value into integer register
fcvt.d.wu f31, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xb270e0e9db40838e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.wu f13, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xf470518bca242b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.wu f9, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x39141b4a271dbe42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # load immediate value into integer register
fcvt.d.wu f28, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x61406d268616bbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # load immediate value into integer register
fcvt.d.wu f8, x6
# Testcase cp_fd (Test destination fd = x0)
li x0, 0xa406094f8f454900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc396affe5c6ea75d # load immediate value into integer register
fcvt.d.wu f0, x7
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xd8efb7287e45f662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x515069a620e43e04 # load immediate value into integer register
fcvt.d.wu f1, x24
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2e900d668c6a6278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfe47c936b53467e3 # load immediate value into integer register
fcvt.d.wu f2, x20
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x29ef73d61a25d67e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2c672e54555e8eed # load immediate value into integer register
fcvt.d.wu f3, x11
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x090e5fa77cf74894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x566512afdaee8e5a # load immediate value into integer register
fcvt.d.wu f4, x11
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xce2b82a587444b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2be35bb30a0651fc # load immediate value into integer register
fcvt.d.wu f5, x4
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xa8200d7bca666039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3290106c8a876c95 # load immediate value into integer register
fcvt.d.wu f6, x10
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xa0e6cc06b5dcf619 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe3a9da7e11f49811 # load immediate value into integer register
fcvt.d.wu f7, x13
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x13f2e02bd386fa7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0709f42eeae7bb8b # load immediate value into integer register
fcvt.d.wu f8, x23
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x867e257ce39daa89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8f3372b2dfe5f432 # load immediate value into integer register
fcvt.d.wu f9, x23
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x8c20f2cdaa6012d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x93b4b0fdc7698546 # load immediate value into integer register
fcvt.d.wu f10, x25
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xac94af753680eabc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x998935ae66b85c45 # load immediate value into integer register
fcvt.d.wu f11, x28
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x96325e5ec8623bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0ab6304ed350d966 # load immediate value into integer register
fcvt.d.wu f12, x11
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x3396c1e4ffb9a82c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd0362abee1e7a897 # load immediate value into integer register
fcvt.d.wu f13, x10
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xc330e5222551b340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x41d18ce39038d1ec # load immediate value into integer register
fcvt.d.wu f14, x28
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xd2120ed0f1917e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0dfce3852892116e # load immediate value into integer register
fcvt.d.wu f15, x4
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x9b88410c8c965677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xccd48b2e80cc52f5 # load immediate value into integer register
fcvt.d.wu f16, x8
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x4f15c11211b6bcc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0eb23a7a798e4c75 # load immediate value into integer register
fcvt.d.wu f17, x13
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x3a32c53024fdb469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x377e79d272ca729c # load immediate value into integer register
fcvt.d.wu f18, x22
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe80518054937f3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x48287737c30faa63 # load immediate value into integer register
fcvt.d.wu f19, x26
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x9604c683fc2185fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc9f3017582f0b777 # load immediate value into integer register
fcvt.d.wu f20, x9
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x00072cc282c2b2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3829066785c43594 # load immediate value into integer register
fcvt.d.wu f21, x1
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x3f2656ee75890702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x21961dd767522fbe # load immediate value into integer register
fcvt.d.wu f22, x31
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x3fce515d284521d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdc2523b07bee1b67 # load immediate value into integer register
fcvt.d.wu f23, x18
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa44149005724d82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9efff445a5dcef10 # load immediate value into integer register
fcvt.d.wu f24, x9
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xb2d2d0c5794539d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99358d7d91875fbf # load immediate value into integer register
fcvt.d.wu f25, x13
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x771eb389709361ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x994d9b680fcee6ce # load immediate value into integer register
fcvt.d.wu f26, x7
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x35c3c4b6f9ee7d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe1d8831d423fdbb5 # load immediate value into integer register
fcvt.d.wu f27, x31
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x8b0369ee8f959b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x469c88f25ddec680 # load immediate value into integer register
fcvt.d.wu f28, x1
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xa724a23eb6007a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x68a441082e56664e # load immediate value into integer register
fcvt.d.wu f29, x17
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb709e95e1ed4393c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9a981a6c070e384e # load immediate value into integer register
fcvt.d.wu f30, x18
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xb6f9c1b2cbe07a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xea029e3f091fb3d7 # load immediate value into integer register
fcvt.d.wu f31, x21
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
