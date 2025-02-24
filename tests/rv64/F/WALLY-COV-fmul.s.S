///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fmul.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.794478
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


# Testcase cmp_gpr_hazard raw test
fmul.s f18, f9, f15 # perform first operation
fmul.s f18, f18, f21 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmul.s f8, f29, f13 # perform first operation
fmul.s f29, f28, f8 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.s f16, f6, f30 # perform first operation
fmul.s f16, f30, f31 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.s f9, f29, f24 # perform first operation
fmul.s f9, f14, f1 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.s f7, f2, f27 # perform first operation
fmul.s f2, f7, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.s f2, f26, f19 # perform first operation
fmul.s f19, f28, f27 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x1ecfa19a36714e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6feaa432d63ef2ed # load x3 with value 0x6feaa432d63ef2ed
sw x3, 0(x2) # store 0x6feaa432d63ef2ed in memory
flw f0, 0(x2) # load 0x6feaa432d63ef2ed from memory into f0
li x3, 0xe887b510ee1e36ab # load x3 with value 0xe887b510ee1e36ab
sw x3, 0(x2) # store 0xe887b510ee1e36ab in memory
flw f14, 0(x2) # load 0xe887b510ee1e36ab from memory into f14
fmul.s f0, f0, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x8c69cb1ffe03078c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6ea379d11445ece # load x3 with value 0xb6ea379d11445ece
sw x3, 0(x2) # store 0xb6ea379d11445ece in memory
flw f1, 0(x2) # load 0xb6ea379d11445ece from memory into f1
li x3, 0xa8eea750f47b791c # load x3 with value 0xa8eea750f47b791c
sw x3, 0(x2) # store 0xa8eea750f47b791c in memory
flw f22, 0(x2) # load 0xa8eea750f47b791c from memory into f22
fmul.s f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x820a074c10adafe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e22ada88c66fbaf # load x3 with value 0x6e22ada88c66fbaf
sw x3, 0(x2) # store 0x6e22ada88c66fbaf in memory
flw f2, 0(x2) # load 0x6e22ada88c66fbaf from memory into f2
li x3, 0xe5b8824a4ba05d0b # load x3 with value 0xe5b8824a4ba05d0b
sw x3, 0(x2) # store 0xe5b8824a4ba05d0b in memory
flw f4, 0(x2) # load 0xe5b8824a4ba05d0b from memory into f4
fmul.s f2, f2, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x423c5c7b3656951d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb0d6e6c4582c694 # load x3 with value 0xbb0d6e6c4582c694
sw x3, 0(x2) # store 0xbb0d6e6c4582c694 in memory
flw f3, 0(x2) # load 0xbb0d6e6c4582c694 from memory into f3
li x3, 0xb643edee5803fa6c # load x3 with value 0xb643edee5803fa6c
sw x3, 0(x2) # store 0xb643edee5803fa6c in memory
flw f8, 0(x2) # load 0xb643edee5803fa6c from memory into f8
fmul.s f3, f3, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xf11d4b452762e424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e45f6fe7aaf0894 # load x3 with value 0x8e45f6fe7aaf0894
sw x3, 0(x2) # store 0x8e45f6fe7aaf0894 in memory
flw f4, 0(x2) # load 0x8e45f6fe7aaf0894 from memory into f4
li x3, 0xdff5a11486b05435 # load x3 with value 0xdff5a11486b05435
sw x3, 0(x2) # store 0xdff5a11486b05435 in memory
flw f13, 0(x2) # load 0xdff5a11486b05435 from memory into f13
fmul.s f4, f4, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xbd6e3d9c6eb5203a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31f650d5018705d # load x3 with value 0x31f650d5018705d
sw x3, 0(x2) # store 0x31f650d5018705d in memory
flw f5, 0(x2) # load 0x31f650d5018705d from memory into f5
li x3, 0xe14aa3b4ebbb28e3 # load x3 with value 0xe14aa3b4ebbb28e3
sw x3, 0(x2) # store 0xe14aa3b4ebbb28e3 in memory
flw f20, 0(x2) # load 0xe14aa3b4ebbb28e3 from memory into f20
fmul.s f5, f5, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x4d829d8cd530a526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x475784ba676712f # load x3 with value 0x475784ba676712f
sw x3, 0(x2) # store 0x475784ba676712f in memory
flw f6, 0(x2) # load 0x475784ba676712f from memory into f6
li x3, 0x1ce246671c2ac46d # load x3 with value 0x1ce246671c2ac46d
sw x3, 0(x2) # store 0x1ce246671c2ac46d in memory
flw f9, 0(x2) # load 0x1ce246671c2ac46d from memory into f9
fmul.s f6, f6, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xb88e0f4db949a111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4adf14426f85047f # load x3 with value 0x4adf14426f85047f
sw x3, 0(x2) # store 0x4adf14426f85047f in memory
flw f7, 0(x2) # load 0x4adf14426f85047f from memory into f7
li x3, 0xa1c88bf5a6c2fa03 # load x3 with value 0xa1c88bf5a6c2fa03
sw x3, 0(x2) # store 0xa1c88bf5a6c2fa03 in memory
flw f16, 0(x2) # load 0xa1c88bf5a6c2fa03 from memory into f16
fmul.s f7, f7, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x96fda78b80e69852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a71caab452620b1 # load x3 with value 0x7a71caab452620b1
sw x3, 0(x2) # store 0x7a71caab452620b1 in memory
flw f8, 0(x2) # load 0x7a71caab452620b1 from memory into f8
li x3, 0x996ac74c53369f12 # load x3 with value 0x996ac74c53369f12
sw x3, 0(x2) # store 0x996ac74c53369f12 in memory
flw f28, 0(x2) # load 0x996ac74c53369f12 from memory into f28
fmul.s f8, f8, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xb2d78968ffdef69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd82a7c81a4b20738 # load x3 with value 0xd82a7c81a4b20738
sw x3, 0(x2) # store 0xd82a7c81a4b20738 in memory
flw f9, 0(x2) # load 0xd82a7c81a4b20738 from memory into f9
li x3, 0xc4d80ae95b88ae09 # load x3 with value 0xc4d80ae95b88ae09
sw x3, 0(x2) # store 0xc4d80ae95b88ae09 in memory
flw f7, 0(x2) # load 0xc4d80ae95b88ae09 from memory into f7
fmul.s f9, f9, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x2fe8778b08b8cb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb88c54cc47d9f97 # load x3 with value 0xbb88c54cc47d9f97
sw x3, 0(x2) # store 0xbb88c54cc47d9f97 in memory
flw f10, 0(x2) # load 0xbb88c54cc47d9f97 from memory into f10
li x3, 0x6bc0ac959f816e5e # load x3 with value 0x6bc0ac959f816e5e
sw x3, 0(x2) # store 0x6bc0ac959f816e5e in memory
flw f23, 0(x2) # load 0x6bc0ac959f816e5e from memory into f23
fmul.s f10, f10, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x3ca6ffda5a47c92a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba03dffc2eab6f48 # load x3 with value 0xba03dffc2eab6f48
sw x3, 0(x2) # store 0xba03dffc2eab6f48 in memory
flw f11, 0(x2) # load 0xba03dffc2eab6f48 from memory into f11
li x3, 0x22e3b257482ae39f # load x3 with value 0x22e3b257482ae39f
sw x3, 0(x2) # store 0x22e3b257482ae39f in memory
flw f13, 0(x2) # load 0x22e3b257482ae39f from memory into f13
fmul.s f11, f11, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xde313d08ff64bf60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0399c29ebe24d70 # load x3 with value 0xf0399c29ebe24d70
sw x3, 0(x2) # store 0xf0399c29ebe24d70 in memory
flw f12, 0(x2) # load 0xf0399c29ebe24d70 from memory into f12
li x3, 0x3c7c6500a90efe1b # load x3 with value 0x3c7c6500a90efe1b
sw x3, 0(x2) # store 0x3c7c6500a90efe1b in memory
flw f21, 0(x2) # load 0x3c7c6500a90efe1b from memory into f21
fmul.s f12, f12, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x3547f144d77eab71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fbb74960ff7f6b8 # load x3 with value 0x8fbb74960ff7f6b8
sw x3, 0(x2) # store 0x8fbb74960ff7f6b8 in memory
flw f13, 0(x2) # load 0x8fbb74960ff7f6b8 from memory into f13
li x3, 0x5833b9a2ebb61df0 # load x3 with value 0x5833b9a2ebb61df0
sw x3, 0(x2) # store 0x5833b9a2ebb61df0 in memory
flw f19, 0(x2) # load 0x5833b9a2ebb61df0 from memory into f19
fmul.s f13, f13, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xc0989dfb33bc3a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2b0e0efc300fadc # load x3 with value 0xb2b0e0efc300fadc
sw x3, 0(x2) # store 0xb2b0e0efc300fadc in memory
flw f14, 0(x2) # load 0xb2b0e0efc300fadc from memory into f14
li x3, 0xce8654cd02b49648 # load x3 with value 0xce8654cd02b49648
sw x3, 0(x2) # store 0xce8654cd02b49648 in memory
flw f21, 0(x2) # load 0xce8654cd02b49648 from memory into f21
fmul.s f14, f14, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xadcb5be0cff514ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3acc991383fa562 # load x3 with value 0xf3acc991383fa562
sw x3, 0(x2) # store 0xf3acc991383fa562 in memory
flw f15, 0(x2) # load 0xf3acc991383fa562 from memory into f15
li x3, 0xfd87ea29a40cfd97 # load x3 with value 0xfd87ea29a40cfd97
sw x3, 0(x2) # store 0xfd87ea29a40cfd97 in memory
flw f25, 0(x2) # load 0xfd87ea29a40cfd97 from memory into f25
fmul.s f15, f15, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x8ec1b0cb9b5f4e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x274661034e1e4732 # load x3 with value 0x274661034e1e4732
sw x3, 0(x2) # store 0x274661034e1e4732 in memory
flw f16, 0(x2) # load 0x274661034e1e4732 from memory into f16
li x3, 0x3677281e732ceafe # load x3 with value 0x3677281e732ceafe
sw x3, 0(x2) # store 0x3677281e732ceafe in memory
flw f18, 0(x2) # load 0x3677281e732ceafe from memory into f18
fmul.s f16, f16, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x4deee2ab62f6b1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf403c4e9aaf78a62 # load x3 with value 0xf403c4e9aaf78a62
sw x3, 0(x2) # store 0xf403c4e9aaf78a62 in memory
flw f17, 0(x2) # load 0xf403c4e9aaf78a62 from memory into f17
li x3, 0x42353440e1894e9f # load x3 with value 0x42353440e1894e9f
sw x3, 0(x2) # store 0x42353440e1894e9f in memory
flw f6, 0(x2) # load 0x42353440e1894e9f from memory into f6
fmul.s f17, f17, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x97814fb18783116c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7370396bfe0ec13 # load x3 with value 0xd7370396bfe0ec13
sw x3, 0(x2) # store 0xd7370396bfe0ec13 in memory
flw f18, 0(x2) # load 0xd7370396bfe0ec13 from memory into f18
li x3, 0xa978d0043afdb263 # load x3 with value 0xa978d0043afdb263
sw x3, 0(x2) # store 0xa978d0043afdb263 in memory
flw f15, 0(x2) # load 0xa978d0043afdb263 from memory into f15
fmul.s f18, f18, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x67378f3a54394f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x332c8884e92c5fc4 # load x3 with value 0x332c8884e92c5fc4
sw x3, 0(x2) # store 0x332c8884e92c5fc4 in memory
flw f19, 0(x2) # load 0x332c8884e92c5fc4 from memory into f19
li x3, 0x32792bc91aecb05b # load x3 with value 0x32792bc91aecb05b
sw x3, 0(x2) # store 0x32792bc91aecb05b in memory
flw f24, 0(x2) # load 0x32792bc91aecb05b from memory into f24
fmul.s f19, f19, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xd9005f823770a955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd420e4ce25dadd62 # load x3 with value 0xd420e4ce25dadd62
sw x3, 0(x2) # store 0xd420e4ce25dadd62 in memory
flw f20, 0(x2) # load 0xd420e4ce25dadd62 from memory into f20
li x3, 0xf0a66b5b64941212 # load x3 with value 0xf0a66b5b64941212
sw x3, 0(x2) # store 0xf0a66b5b64941212 in memory
flw f14, 0(x2) # load 0xf0a66b5b64941212 from memory into f14
fmul.s f20, f20, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x5522eb5eca7e2a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf364a538c069a38 # load x3 with value 0xdf364a538c069a38
sw x3, 0(x2) # store 0xdf364a538c069a38 in memory
flw f21, 0(x2) # load 0xdf364a538c069a38 from memory into f21
li x3, 0x3fde3397292b5118 # load x3 with value 0x3fde3397292b5118
sw x3, 0(x2) # store 0x3fde3397292b5118 in memory
flw f22, 0(x2) # load 0x3fde3397292b5118 from memory into f22
fmul.s f21, f21, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xbe2ee96b11c73b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8268563f657693e5 # load x3 with value 0x8268563f657693e5
sw x3, 0(x2) # store 0x8268563f657693e5 in memory
flw f22, 0(x2) # load 0x8268563f657693e5 from memory into f22
li x3, 0x63849033c398375a # load x3 with value 0x63849033c398375a
sw x3, 0(x2) # store 0x63849033c398375a in memory
flw f24, 0(x2) # load 0x63849033c398375a from memory into f24
fmul.s f22, f22, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x260cebbb3a34aed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x879d0eb0fd027602 # load x3 with value 0x879d0eb0fd027602
sw x3, 0(x2) # store 0x879d0eb0fd027602 in memory
flw f23, 0(x2) # load 0x879d0eb0fd027602 from memory into f23
li x3, 0xa293022cc3defed # load x3 with value 0xa293022cc3defed
sw x3, 0(x2) # store 0xa293022cc3defed in memory
flw f22, 0(x2) # load 0xa293022cc3defed from memory into f22
fmul.s f23, f23, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xb823264d1628bed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ed514d07ef1df97 # load x3 with value 0x6ed514d07ef1df97
sw x3, 0(x2) # store 0x6ed514d07ef1df97 in memory
flw f24, 0(x2) # load 0x6ed514d07ef1df97 from memory into f24
li x3, 0xefd853fbfc909805 # load x3 with value 0xefd853fbfc909805
sw x3, 0(x2) # store 0xefd853fbfc909805 in memory
flw f8, 0(x2) # load 0xefd853fbfc909805 from memory into f8
fmul.s f24, f24, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x2b8d2e9aa286ed28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb643ef763c7cde94 # load x3 with value 0xb643ef763c7cde94
sw x3, 0(x2) # store 0xb643ef763c7cde94 in memory
flw f25, 0(x2) # load 0xb643ef763c7cde94 from memory into f25
li x3, 0x1642761b574466df # load x3 with value 0x1642761b574466df
sw x3, 0(x2) # store 0x1642761b574466df in memory
flw f11, 0(x2) # load 0x1642761b574466df from memory into f11
fmul.s f25, f25, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x13ea274e49d1c338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ee1fc55092d9e63 # load x3 with value 0x8ee1fc55092d9e63
sw x3, 0(x2) # store 0x8ee1fc55092d9e63 in memory
flw f26, 0(x2) # load 0x8ee1fc55092d9e63 from memory into f26
li x3, 0x1dcf706e78f3fd37 # load x3 with value 0x1dcf706e78f3fd37
sw x3, 0(x2) # store 0x1dcf706e78f3fd37 in memory
flw f13, 0(x2) # load 0x1dcf706e78f3fd37 from memory into f13
fmul.s f26, f26, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x93e11315ff4f2a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54101cdb1c40aa0a # load x3 with value 0x54101cdb1c40aa0a
sw x3, 0(x2) # store 0x54101cdb1c40aa0a in memory
flw f27, 0(x2) # load 0x54101cdb1c40aa0a from memory into f27
li x3, 0x58143bd40b3de849 # load x3 with value 0x58143bd40b3de849
sw x3, 0(x2) # store 0x58143bd40b3de849 in memory
flw f8, 0(x2) # load 0x58143bd40b3de849 from memory into f8
fmul.s f27, f27, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x7c0b6d6ce6d66914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0ac3d51fa9dfe05 # load x3 with value 0xf0ac3d51fa9dfe05
sw x3, 0(x2) # store 0xf0ac3d51fa9dfe05 in memory
flw f28, 0(x2) # load 0xf0ac3d51fa9dfe05 from memory into f28
li x3, 0x1be8f6f934ff5f0f # load x3 with value 0x1be8f6f934ff5f0f
sw x3, 0(x2) # store 0x1be8f6f934ff5f0f in memory
flw f18, 0(x2) # load 0x1be8f6f934ff5f0f from memory into f18
fmul.s f28, f28, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x6d934a2ee58cff14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x959162256951bc7b # load x3 with value 0x959162256951bc7b
sw x3, 0(x2) # store 0x959162256951bc7b in memory
flw f29, 0(x2) # load 0x959162256951bc7b from memory into f29
li x3, 0xf206f9eb0211cbfb # load x3 with value 0xf206f9eb0211cbfb
sw x3, 0(x2) # store 0xf206f9eb0211cbfb in memory
flw f20, 0(x2) # load 0xf206f9eb0211cbfb from memory into f20
fmul.s f29, f29, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x92add1b59f15322b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd26d5535ae80aa12 # load x3 with value 0xd26d5535ae80aa12
sw x3, 0(x2) # store 0xd26d5535ae80aa12 in memory
flw f30, 0(x2) # load 0xd26d5535ae80aa12 from memory into f30
li x3, 0xac41d8d5cfc309db # load x3 with value 0xac41d8d5cfc309db
sw x3, 0(x2) # store 0xac41d8d5cfc309db in memory
flw f2, 0(x2) # load 0xac41d8d5cfc309db from memory into f2
fmul.s f30, f30, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x068f016eae8c5edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f20d220d164de16 # load x3 with value 0x8f20d220d164de16
sw x3, 0(x2) # store 0x8f20d220d164de16 in memory
flw f31, 0(x2) # load 0x8f20d220d164de16 from memory into f31
li x3, 0x2459c465d85b21e # load x3 with value 0x2459c465d85b21e
sw x3, 0(x2) # store 0x2459c465d85b21e in memory
flw f20, 0(x2) # load 0x2459c465d85b21e from memory into f20
fmul.s f31, f31, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x91c9bf65542f5383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bf009f7c15e398b # load x3 with value 0x5bf009f7c15e398b
sw x3, 0(x2) # store 0x5bf009f7c15e398b in memory
flw f27, 0(x2) # load 0x5bf009f7c15e398b from memory into f27
li x3, 0x2f8b7e824975fa15 # load x3 with value 0x2f8b7e824975fa15
sw x3, 0(x2) # store 0x2f8b7e824975fa15 in memory
flw f0, 0(x2) # load 0x2f8b7e824975fa15 from memory into f0
fmul.s f0, f27, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x7980caa50fac19ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fb171d329b27b5e # load x3 with value 0x5fb171d329b27b5e
sw x3, 0(x2) # store 0x5fb171d329b27b5e in memory
flw f19, 0(x2) # load 0x5fb171d329b27b5e from memory into f19
li x3, 0x7a90d2ac75b3abac # load x3 with value 0x7a90d2ac75b3abac
sw x3, 0(x2) # store 0x7a90d2ac75b3abac in memory
flw f1, 0(x2) # load 0x7a90d2ac75b3abac from memory into f1
fmul.s f1, f19, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x4bb27f7887181d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae4c89fc3ff93c5c # load x3 with value 0xae4c89fc3ff93c5c
sw x3, 0(x2) # store 0xae4c89fc3ff93c5c in memory
flw f1, 0(x2) # load 0xae4c89fc3ff93c5c from memory into f1
li x3, 0xff558389b03739b1 # load x3 with value 0xff558389b03739b1
sw x3, 0(x2) # store 0xff558389b03739b1 in memory
flw f2, 0(x2) # load 0xff558389b03739b1 from memory into f2
fmul.s f2, f1, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x585eadcef5f8545f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37262ac496d415c5 # load x3 with value 0x37262ac496d415c5
sw x3, 0(x2) # store 0x37262ac496d415c5 in memory
flw f22, 0(x2) # load 0x37262ac496d415c5 from memory into f22
li x3, 0x133c532ab064484b # load x3 with value 0x133c532ab064484b
sw x3, 0(x2) # store 0x133c532ab064484b in memory
flw f3, 0(x2) # load 0x133c532ab064484b from memory into f3
fmul.s f3, f22, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x421582bef089a2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37111f185af6d072 # load x3 with value 0x37111f185af6d072
sw x3, 0(x2) # store 0x37111f185af6d072 in memory
flw f28, 0(x2) # load 0x37111f185af6d072 from memory into f28
li x3, 0xcaa183a705e72b6f # load x3 with value 0xcaa183a705e72b6f
sw x3, 0(x2) # store 0xcaa183a705e72b6f in memory
flw f4, 0(x2) # load 0xcaa183a705e72b6f from memory into f4
fmul.s f4, f28, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xe2467a05d1a56042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d98fde924fdf10b # load x3 with value 0x6d98fde924fdf10b
sw x3, 0(x2) # store 0x6d98fde924fdf10b in memory
flw f24, 0(x2) # load 0x6d98fde924fdf10b from memory into f24
li x3, 0x1271145dafdd311e # load x3 with value 0x1271145dafdd311e
sw x3, 0(x2) # store 0x1271145dafdd311e in memory
flw f5, 0(x2) # load 0x1271145dafdd311e from memory into f5
fmul.s f5, f24, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xb69c37c2f7e84875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1603ef259fbe93a5 # load x3 with value 0x1603ef259fbe93a5
sw x3, 0(x2) # store 0x1603ef259fbe93a5 in memory
flw f4, 0(x2) # load 0x1603ef259fbe93a5 from memory into f4
li x3, 0x8d855af636941dac # load x3 with value 0x8d855af636941dac
sw x3, 0(x2) # store 0x8d855af636941dac in memory
flw f6, 0(x2) # load 0x8d855af636941dac from memory into f6
fmul.s f6, f4, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xa1a02e265c63bacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd95ed220d06ed544 # load x3 with value 0xd95ed220d06ed544
sw x3, 0(x2) # store 0xd95ed220d06ed544 in memory
flw f25, 0(x2) # load 0xd95ed220d06ed544 from memory into f25
li x3, 0x50c74aa3d452aba9 # load x3 with value 0x50c74aa3d452aba9
sw x3, 0(x2) # store 0x50c74aa3d452aba9 in memory
flw f7, 0(x2) # load 0x50c74aa3d452aba9 from memory into f7
fmul.s f7, f25, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xc7157747c0db198c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4ed3686ddbe0e16 # load x3 with value 0xf4ed3686ddbe0e16
sw x3, 0(x2) # store 0xf4ed3686ddbe0e16 in memory
flw f14, 0(x2) # load 0xf4ed3686ddbe0e16 from memory into f14
li x3, 0x7b0d6312ea655ae9 # load x3 with value 0x7b0d6312ea655ae9
sw x3, 0(x2) # store 0x7b0d6312ea655ae9 in memory
flw f8, 0(x2) # load 0x7b0d6312ea655ae9 from memory into f8
fmul.s f8, f14, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x01d0d2f2139f8cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1568d328d817782 # load x3 with value 0xb1568d328d817782
sw x3, 0(x2) # store 0xb1568d328d817782 in memory
flw f6, 0(x2) # load 0xb1568d328d817782 from memory into f6
li x3, 0xfc57ff3616881b9f # load x3 with value 0xfc57ff3616881b9f
sw x3, 0(x2) # store 0xfc57ff3616881b9f in memory
flw f9, 0(x2) # load 0xfc57ff3616881b9f from memory into f9
fmul.s f9, f6, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x9ca66af229312a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13f582c4e20913ea # load x3 with value 0x13f582c4e20913ea
sw x3, 0(x2) # store 0x13f582c4e20913ea in memory
flw f2, 0(x2) # load 0x13f582c4e20913ea from memory into f2
li x3, 0xd68b4d56894303ab # load x3 with value 0xd68b4d56894303ab
sw x3, 0(x2) # store 0xd68b4d56894303ab in memory
flw f10, 0(x2) # load 0xd68b4d56894303ab from memory into f10
fmul.s f10, f2, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xaa2d9a1fc6bbf2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c55602bcfb41d # load x3 with value 0x2c55602bcfb41d
sw x3, 0(x2) # store 0x2c55602bcfb41d in memory
flw f30, 0(x2) # load 0x2c55602bcfb41d from memory into f30
li x3, 0x23b16f31b94a2b96 # load x3 with value 0x23b16f31b94a2b96
sw x3, 0(x2) # store 0x23b16f31b94a2b96 in memory
flw f11, 0(x2) # load 0x23b16f31b94a2b96 from memory into f11
fmul.s f11, f30, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x87f9a7759b85a14a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1197438945f9a237 # load x3 with value 0x1197438945f9a237
sw x3, 0(x2) # store 0x1197438945f9a237 in memory
flw f15, 0(x2) # load 0x1197438945f9a237 from memory into f15
li x3, 0xbd41a86ea050b5a # load x3 with value 0xbd41a86ea050b5a
sw x3, 0(x2) # store 0xbd41a86ea050b5a in memory
flw f12, 0(x2) # load 0xbd41a86ea050b5a from memory into f12
fmul.s f12, f15, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xf23a00b7c922e285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdecd99d4cb64a469 # load x3 with value 0xdecd99d4cb64a469
sw x3, 0(x2) # store 0xdecd99d4cb64a469 in memory
flw f18, 0(x2) # load 0xdecd99d4cb64a469 from memory into f18
li x3, 0x40e8cb556b992e31 # load x3 with value 0x40e8cb556b992e31
sw x3, 0(x2) # store 0x40e8cb556b992e31 in memory
flw f13, 0(x2) # load 0x40e8cb556b992e31 from memory into f13
fmul.s f13, f18, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x06d9e357ba0902a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30646ba32b46161 # load x3 with value 0x30646ba32b46161
sw x3, 0(x2) # store 0x30646ba32b46161 in memory
flw f21, 0(x2) # load 0x30646ba32b46161 from memory into f21
li x3, 0x89fd756885005b40 # load x3 with value 0x89fd756885005b40
sw x3, 0(x2) # store 0x89fd756885005b40 in memory
flw f14, 0(x2) # load 0x89fd756885005b40 from memory into f14
fmul.s f14, f21, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xbf79522dc10f6510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8f72064c0f70afe # load x3 with value 0xf8f72064c0f70afe
sw x3, 0(x2) # store 0xf8f72064c0f70afe in memory
flw f11, 0(x2) # load 0xf8f72064c0f70afe from memory into f11
li x3, 0x9b0e47601b8f4d94 # load x3 with value 0x9b0e47601b8f4d94
sw x3, 0(x2) # store 0x9b0e47601b8f4d94 in memory
flw f15, 0(x2) # load 0x9b0e47601b8f4d94 from memory into f15
fmul.s f15, f11, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xb8fa8ff37b1bf5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc51f2b25595bb64 # load x3 with value 0xc51f2b25595bb64
sw x3, 0(x2) # store 0xc51f2b25595bb64 in memory
flw f17, 0(x2) # load 0xc51f2b25595bb64 from memory into f17
li x3, 0x3c796705c4894564 # load x3 with value 0x3c796705c4894564
sw x3, 0(x2) # store 0x3c796705c4894564 in memory
flw f16, 0(x2) # load 0x3c796705c4894564 from memory into f16
fmul.s f16, f17, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xe64188acafbf1da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd752274f7bb778f8 # load x3 with value 0xd752274f7bb778f8
sw x3, 0(x2) # store 0xd752274f7bb778f8 in memory
flw f20, 0(x2) # load 0xd752274f7bb778f8 from memory into f20
li x3, 0x15738960364c4a6d # load x3 with value 0x15738960364c4a6d
sw x3, 0(x2) # store 0x15738960364c4a6d in memory
flw f17, 0(x2) # load 0x15738960364c4a6d from memory into f17
fmul.s f17, f20, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xb3dc802fd4b78770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x505003deb96b0f60 # load x3 with value 0x505003deb96b0f60
sw x3, 0(x2) # store 0x505003deb96b0f60 in memory
flw f7, 0(x2) # load 0x505003deb96b0f60 from memory into f7
li x3, 0xb880f05649897629 # load x3 with value 0xb880f05649897629
sw x3, 0(x2) # store 0xb880f05649897629 in memory
flw f18, 0(x2) # load 0xb880f05649897629 from memory into f18
fmul.s f18, f7, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x7f0c7bddb1ad73d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bc0a180a81f5646 # load x3 with value 0x1bc0a180a81f5646
sw x3, 0(x2) # store 0x1bc0a180a81f5646 in memory
flw f24, 0(x2) # load 0x1bc0a180a81f5646 from memory into f24
li x3, 0xf2947ce94a3de3c3 # load x3 with value 0xf2947ce94a3de3c3
sw x3, 0(x2) # store 0xf2947ce94a3de3c3 in memory
flw f19, 0(x2) # load 0xf2947ce94a3de3c3 from memory into f19
fmul.s f19, f24, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x4cf5d8d1b1ee8b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x543bf3a968ffac6d # load x3 with value 0x543bf3a968ffac6d
sw x3, 0(x2) # store 0x543bf3a968ffac6d in memory
flw f12, 0(x2) # load 0x543bf3a968ffac6d from memory into f12
li x3, 0x1a7a4c50b954fab8 # load x3 with value 0x1a7a4c50b954fab8
sw x3, 0(x2) # store 0x1a7a4c50b954fab8 in memory
flw f20, 0(x2) # load 0x1a7a4c50b954fab8 from memory into f20
fmul.s f20, f12, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x0571f49e356f66fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a50b1452da751a1 # load x3 with value 0x2a50b1452da751a1
sw x3, 0(x2) # store 0x2a50b1452da751a1 in memory
flw f11, 0(x2) # load 0x2a50b1452da751a1 from memory into f11
li x3, 0xdde764f592033ae9 # load x3 with value 0xdde764f592033ae9
sw x3, 0(x2) # store 0xdde764f592033ae9 in memory
flw f21, 0(x2) # load 0xdde764f592033ae9 from memory into f21
fmul.s f21, f11, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xe9aa5651a0922d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5d8efe29bcfff63 # load x3 with value 0xe5d8efe29bcfff63
sw x3, 0(x2) # store 0xe5d8efe29bcfff63 in memory
flw f17, 0(x2) # load 0xe5d8efe29bcfff63 from memory into f17
li x3, 0x3cb1496ab640bfa7 # load x3 with value 0x3cb1496ab640bfa7
sw x3, 0(x2) # store 0x3cb1496ab640bfa7 in memory
flw f22, 0(x2) # load 0x3cb1496ab640bfa7 from memory into f22
fmul.s f22, f17, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xf1208798079fa75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb88a1ce7eff1c14 # load x3 with value 0xb88a1ce7eff1c14
sw x3, 0(x2) # store 0xb88a1ce7eff1c14 in memory
flw f15, 0(x2) # load 0xb88a1ce7eff1c14 from memory into f15
li x3, 0x2ea1c1ece3a034e # load x3 with value 0x2ea1c1ece3a034e
sw x3, 0(x2) # store 0x2ea1c1ece3a034e in memory
flw f23, 0(x2) # load 0x2ea1c1ece3a034e from memory into f23
fmul.s f23, f15, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x08890b2782872f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96179c04d90bf058 # load x3 with value 0x96179c04d90bf058
sw x3, 0(x2) # store 0x96179c04d90bf058 in memory
flw f9, 0(x2) # load 0x96179c04d90bf058 from memory into f9
li x3, 0xe19788125fe87f45 # load x3 with value 0xe19788125fe87f45
sw x3, 0(x2) # store 0xe19788125fe87f45 in memory
flw f24, 0(x2) # load 0xe19788125fe87f45 from memory into f24
fmul.s f24, f9, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x338683557db8899d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9127f8adfae23c81 # load x3 with value 0x9127f8adfae23c81
sw x3, 0(x2) # store 0x9127f8adfae23c81 in memory
flw f23, 0(x2) # load 0x9127f8adfae23c81 from memory into f23
li x3, 0x56a414741b2a0457 # load x3 with value 0x56a414741b2a0457
sw x3, 0(x2) # store 0x56a414741b2a0457 in memory
flw f25, 0(x2) # load 0x56a414741b2a0457 from memory into f25
fmul.s f25, f23, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x3032b2bc7ccaacbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0fd6818234e98e6 # load x3 with value 0xa0fd6818234e98e6
sw x3, 0(x2) # store 0xa0fd6818234e98e6 in memory
flw f26, 0(x2) # load 0xa0fd6818234e98e6 from memory into f26
li x3, 0xe1ff654e3203d0cc # load x3 with value 0xe1ff654e3203d0cc
sw x3, 0(x2) # store 0xe1ff654e3203d0cc in memory
flw f26, 0(x2) # load 0xe1ff654e3203d0cc from memory into f26
fmul.s f26, f26, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xcd4744f66fc327f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60176a1908bbc866 # load x3 with value 0x60176a1908bbc866
sw x3, 0(x2) # store 0x60176a1908bbc866 in memory
flw f7, 0(x2) # load 0x60176a1908bbc866 from memory into f7
li x3, 0x27b4138a8bd84961 # load x3 with value 0x27b4138a8bd84961
sw x3, 0(x2) # store 0x27b4138a8bd84961 in memory
flw f27, 0(x2) # load 0x27b4138a8bd84961 from memory into f27
fmul.s f27, f7, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x7d84859e35823e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe347718f596dbb3 # load x3 with value 0xbe347718f596dbb3
sw x3, 0(x2) # store 0xbe347718f596dbb3 in memory
flw f1, 0(x2) # load 0xbe347718f596dbb3 from memory into f1
li x3, 0xdee710106cb92307 # load x3 with value 0xdee710106cb92307
sw x3, 0(x2) # store 0xdee710106cb92307 in memory
flw f28, 0(x2) # load 0xdee710106cb92307 from memory into f28
fmul.s f28, f1, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x018ea747a4cad787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2e9561f19f06dd5 # load x3 with value 0xb2e9561f19f06dd5
sw x3, 0(x2) # store 0xb2e9561f19f06dd5 in memory
flw f10, 0(x2) # load 0xb2e9561f19f06dd5 from memory into f10
li x3, 0x695a1dc2e5529704 # load x3 with value 0x695a1dc2e5529704
sw x3, 0(x2) # store 0x695a1dc2e5529704 in memory
flw f29, 0(x2) # load 0x695a1dc2e5529704 from memory into f29
fmul.s f29, f10, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xffc6a93fc4ff24d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccc7b2c6532a91 # load x3 with value 0xccc7b2c6532a91
sw x3, 0(x2) # store 0xccc7b2c6532a91 in memory
flw f22, 0(x2) # load 0xccc7b2c6532a91 from memory into f22
li x3, 0xaf5b3946af3a1a7a # load x3 with value 0xaf5b3946af3a1a7a
sw x3, 0(x2) # store 0xaf5b3946af3a1a7a in memory
flw f30, 0(x2) # load 0xaf5b3946af3a1a7a from memory into f30
fmul.s f30, f22, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x0ef2a92dca2fcdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb77a24eea432d64e # load x3 with value 0xb77a24eea432d64e
sw x3, 0(x2) # store 0xb77a24eea432d64e in memory
flw f31, 0(x2) # load 0xb77a24eea432d64e from memory into f31
li x3, 0xca1a7e83d9a93e8b # load x3 with value 0xca1a7e83d9a93e8b
sw x3, 0(x2) # store 0xca1a7e83d9a93e8b in memory
flw f31, 0(x2) # load 0xca1a7e83d9a93e8b from memory into f31
fmul.s f31, f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0x0c8b01b12a5dc6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0xc1266bc1022dc40e # load x3 with value 0xc1266bc1022dc40e
sw x3, 0(x2) # store 0xc1266bc1022dc40e in memory
flw f5, 0(x2) # load 0xc1266bc1022dc40e from memory into f5
fmul.s f27, f18, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x4, 0x81ae514da0950c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x711dcfb7ad449632 # load x3 with value 0x711dcfb7ad449632
sw x3, 0(x2) # store 0x711dcfb7ad449632 in memory
flw f6, 0(x2) # load 0x711dcfb7ad449632 from memory into f6
fmul.s f4, f9, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x31, 0xbc4bd0d48a198121 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0xdd85efc7cc27f295 # load x3 with value 0xdd85efc7cc27f295
sw x3, 0(x2) # store 0xdd85efc7cc27f295 in memory
flw f2, 0(x2) # load 0xdd85efc7cc27f295 from memory into f2
fmul.s f31, f18, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x3, 0xd850a7cb78cd2bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x907ab0f0b48b5102 # load x3 with value 0x907ab0f0b48b5102
sw x3, 0(x2) # store 0x907ab0f0b48b5102 in memory
flw f16, 0(x2) # load 0x907ab0f0b48b5102 from memory into f16
fmul.s f3, f11, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x23, 0x62d3f961ebb4b0a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x6b4b3f2022409ca0 # load x3 with value 0x6b4b3f2022409ca0
sw x3, 0(x2) # store 0x6b4b3f2022409ca0 in memory
flw f6, 0(x2) # load 0x6b4b3f2022409ca0 from memory into f6
fmul.s f23, f13, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x13, 0xf5b4fa3faa684c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x6b062d1dbe97e3c # load x3 with value 0x6b062d1dbe97e3c
sw x3, 0(x2) # store 0x6b062d1dbe97e3c in memory
flw f17, 0(x2) # load 0x6b062d1dbe97e3c from memory into f17
fmul.s f13, f6, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x10, 0xf46a8a2ed2650645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0xa80deb2d72cd094 # load x3 with value 0xa80deb2d72cd094
sw x3, 0(x2) # store 0xa80deb2d72cd094 in memory
flw f23, 0(x2) # load 0xa80deb2d72cd094 from memory into f23
fmul.s f10, f2, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x3, 0xd13cf8a025ab0580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0xbc21149706cac5b5 # load x3 with value 0xbc21149706cac5b5
sw x3, 0(x2) # store 0xbc21149706cac5b5 in memory
flw f25, 0(x2) # load 0xbc21149706cac5b5 from memory into f25
fmul.s f3, f17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x14, 0x9a3836224ccc45f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x4bae59e344568724 # load x3 with value 0x4bae59e344568724
sw x3, 0(x2) # store 0x4bae59e344568724 in memory
flw f26, 0(x2) # load 0x4bae59e344568724 from memory into f26
fmul.s f14, f1, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x7, 0xbdb024d5b0dafbd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x6003b1dcf81896a1 # load x3 with value 0x6003b1dcf81896a1
sw x3, 0(x2) # store 0x6003b1dcf81896a1 in memory
flw f11, 0(x2) # load 0x6003b1dcf81896a1 from memory into f11
fmul.s f7, f28, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x11, 0xcacaa938daf83fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x63156978c9b95493 # load x3 with value 0x63156978c9b95493
sw x3, 0(x2) # store 0x63156978c9b95493 in memory
flw f31, 0(x2) # load 0x63156978c9b95493 from memory into f31
fmul.s f11, f4, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x3, 0xcf186b21d21ee140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x4a82c7ea895c3967 # load x3 with value 0x4a82c7ea895c3967
sw x3, 0(x2) # store 0x4a82c7ea895c3967 in memory
flw f17, 0(x2) # load 0x4a82c7ea895c3967 from memory into f17
fmul.s f3, f18, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x16, 0x5f2266aed68160c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0xdfe9fc5318f7d991 # load x3 with value 0xdfe9fc5318f7d991
sw x3, 0(x2) # store 0xdfe9fc5318f7d991 in memory
flw f28, 0(x2) # load 0xdfe9fc5318f7d991 from memory into f28
fmul.s f16, f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x1, 0xc8eb15014842124e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0xfb874c7428cdde40 # load x3 with value 0xfb874c7428cdde40
sw x3, 0(x2) # store 0xfb874c7428cdde40 in memory
flw f22, 0(x2) # load 0xfb874c7428cdde40 from memory into f22
fmul.s f1, f5, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x2, 0x888b9888f13cffa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0xd232ec21462cb8c7 # load x3 with value 0xd232ec21462cb8c7
sw x3, 0(x2) # store 0xd232ec21462cb8c7 in memory
flw f30, 0(x2) # load 0xd232ec21462cb8c7 from memory into f30
fmul.s f2, f20, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x7, 0xb9a8627176b5fc9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0xf5774e4e1df967b9 # load x3 with value 0xf5774e4e1df967b9
sw x3, 0(x2) # store 0xf5774e4e1df967b9 in memory
flw f23, 0(x2) # load 0xf5774e4e1df967b9 from memory into f23
fmul.s f7, f31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x8, 0x173197ca048654a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x33bc374b7d5f5550 # load x3 with value 0x33bc374b7d5f5550
sw x3, 0(x2) # store 0x33bc374b7d5f5550 in memory
flw f24, 0(x2) # load 0x33bc374b7d5f5550 from memory into f24
fmul.s f8, f11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x29, 0x3acb51fb695a9a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xf083c434b50a7685 # load x3 with value 0xf083c434b50a7685
sw x3, 0(x2) # store 0xf083c434b50a7685 in memory
flw f22, 0(x2) # load 0xf083c434b50a7685 from memory into f22
fmul.s f29, f21, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x7, 0x3f2a901c4664b50b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0xa9cfa7a51b1bc8dc # load x3 with value 0xa9cfa7a51b1bc8dc
sw x3, 0(x2) # store 0xa9cfa7a51b1bc8dc in memory
flw f4, 0(x2) # load 0xa9cfa7a51b1bc8dc from memory into f4
fmul.s f7, f19, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x3, 0xd6588553e5cbe9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
li x3, 0x8167272f83d97cae # load x3 with value 0x8167272f83d97cae
sw x3, 0(x2) # store 0x8167272f83d97cae in memory
flw f18, 0(x2) # load 0x8167272f83d97cae from memory into f18
fmul.s f3, f23, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x9, 0x175064f52ed656a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x4bd0a8a71226a6a # load x3 with value 0x4bd0a8a71226a6a
sw x3, 0(x2) # store 0x4bd0a8a71226a6a in memory
flw f25, 0(x2) # load 0x4bd0a8a71226a6a from memory into f25
fmul.s f9, f11, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x12, 0xaaca3c1e3e5bf045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x2c2402d535c93029 # load x3 with value 0x2c2402d535c93029
sw x3, 0(x2) # store 0x2c2402d535c93029 in memory
flw f23, 0(x2) # load 0x2c2402d535c93029 from memory into f23
fmul.s f12, f16, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x9, 0x00c345c267a4789b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0x5d7e2fe474103bf1 # load x3 with value 0x5d7e2fe474103bf1
sw x3, 0(x2) # store 0x5d7e2fe474103bf1 in memory
flw f27, 0(x2) # load 0x5d7e2fe474103bf1 from memory into f27
fmul.s f9, f20, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x10, 0xf93e6d575022bb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x3fc7d8653fb7a2fb # load x3 with value 0x3fc7d8653fb7a2fb
sw x3, 0(x2) # store 0x3fc7d8653fb7a2fb in memory
flw f24, 0(x2) # load 0x3fc7d8653fb7a2fb from memory into f24
fmul.s f10, f1, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x29, 0x5b5c5dcc0a396759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0xde33dc2be65c9762 # load x3 with value 0xde33dc2be65c9762
sw x3, 0(x2) # store 0xde33dc2be65c9762 in memory
flw f13, 0(x2) # load 0xde33dc2be65c9762 from memory into f13
fmul.s f29, f17, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x3, 0xa8f53cdb198d9eec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x6bdbb65c2dada03c # load x3 with value 0x6bdbb65c2dada03c
sw x3, 0(x2) # store 0x6bdbb65c2dada03c in memory
flw f19, 0(x2) # load 0x6bdbb65c2dada03c from memory into f19
fmul.s f3, f4, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x15, 0x405daa008a9657a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9187c07181cdf7d # load x3 with value 0xc9187c07181cdf7d
sw x3, 0(x2) # store 0xc9187c07181cdf7d in memory
flw f23, 0(x2) # load 0xc9187c07181cdf7d from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmul.s f15, f23, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x6, 0x2a7ec25a80d5534d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae742d900d405fa7 # load x3 with value 0xae742d900d405fa7
sw x3, 0(x2) # store 0xae742d900d405fa7 in memory
flw f24, 0(x2) # load 0xae742d900d405fa7 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fmul.s f6, f24, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x16, 0x1d063e6defd8bacb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd682b501765ec46c # load x3 with value 0xd682b501765ec46c
sw x3, 0(x2) # store 0xd682b501765ec46c in memory
flw f22, 0(x2) # load 0xd682b501765ec46c from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f16, f22, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x30, 0x9c4b0d48566f35c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48baca6db1a42094 # load x3 with value 0x48baca6db1a42094
sw x3, 0(x2) # store 0x48baca6db1a42094 in memory
flw f20, 0(x2) # load 0x48baca6db1a42094 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fmul.s f30, f20, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x6, 0x5517745766347eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd622eadc5a519c75 # load x3 with value 0xd622eadc5a519c75
sw x3, 0(x2) # store 0xd622eadc5a519c75 in memory
flw f29, 0(x2) # load 0xd622eadc5a519c75 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f6, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x19, 0x162014b1c8b3ec07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x436a994050cc11d4 # load x3 with value 0x436a994050cc11d4
sw x3, 0(x2) # store 0x436a994050cc11d4 in memory
flw f8, 0(x2) # load 0x436a994050cc11d4 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmul.s f19, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x25, 0xffeaa620417aa6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf70dad11d706e4b # load x3 with value 0xcf70dad11d706e4b
sw x3, 0(x2) # store 0xcf70dad11d706e4b in memory
flw f20, 0(x2) # load 0xcf70dad11d706e4b from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f25, f20, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x12, 0xed0e51ba7dddf882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a3e602ee59f8b8e # load x3 with value 0x9a3e602ee59f8b8e
sw x3, 0(x2) # store 0x9a3e602ee59f8b8e in memory
flw f13, 0(x2) # load 0x9a3e602ee59f8b8e from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fmul.s f12, f13, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x15, 0x7d2dec109f9dfae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x214c647e9cbfcc9e # load x3 with value 0x214c647e9cbfcc9e
sw x3, 0(x2) # store 0x214c647e9cbfcc9e in memory
flw f5, 0(x2) # load 0x214c647e9cbfcc9e from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f15, f5, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x12, 0x8f207b8b491be620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd21088f480631a01 # load x3 with value 0xd21088f480631a01
sw x3, 0(x2) # store 0xd21088f480631a01 in memory
flw f7, 0(x2) # load 0xd21088f480631a01 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f12, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x3, 0x0481caf95df49f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaa261b90bf8e788 # load x3 with value 0xbaa261b90bf8e788
sw x3, 0(x2) # store 0xbaa261b90bf8e788 in memory
flw f5, 0(x2) # load 0xbaa261b90bf8e788 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmul.s f3, f5, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0x708d2a558f346cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x506956b541cf5394 # load x3 with value 0x506956b541cf5394
sw x3, 0(x2) # store 0x506956b541cf5394 in memory
flw f10, 0(x2) # load 0x506956b541cf5394 from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fmul.s f24, f10, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x16, 0x1a1786c57cdfeaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa44056f3e1990cf3 # load x3 with value 0xa44056f3e1990cf3
sw x3, 0(x2) # store 0xa44056f3e1990cf3 in memory
flw f11, 0(x2) # load 0xa44056f3e1990cf3 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmul.s f16, f11, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x3, 0x7ff0a9ae77f9ab30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x151d3dc02f73c0e6 # load x3 with value 0x151d3dc02f73c0e6
sw x3, 0(x2) # store 0x151d3dc02f73c0e6 in memory
flw f9, 0(x2) # load 0x151d3dc02f73c0e6 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fmul.s f3, f9, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x9, 0x327aa7ff183d1ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27bef1c7ac95949c # load x3 with value 0x27bef1c7ac95949c
sw x3, 0(x2) # store 0x27bef1c7ac95949c in memory
flw f8, 0(x2) # load 0x27bef1c7ac95949c from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fmul.s f9, f8, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x30, 0x9eac4925e9f7d6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x188dddda0b83a6dd # load x3 with value 0x188dddda0b83a6dd
sw x3, 0(x2) # store 0x188dddda0b83a6dd in memory
flw f21, 0(x2) # load 0x188dddda0b83a6dd from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmul.s f30, f21, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x30, 0xa9313e738601bafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee56e99e84f647d3 # load x3 with value 0xee56e99e84f647d3
sw x3, 0(x2) # store 0xee56e99e84f647d3 in memory
flw f23, 0(x2) # load 0xee56e99e84f647d3 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f30, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x30, 0xd3bfd7e015057f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7df6dc282572e6ca # load x3 with value 0x7df6dc282572e6ca
sw x3, 0(x2) # store 0x7df6dc282572e6ca in memory
flw f1, 0(x2) # load 0x7df6dc282572e6ca from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmul.s f30, f1, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x30, 0x4660065e61cba5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x959ecbb54ccce193 # load x3 with value 0x959ecbb54ccce193
sw x3, 0(x2) # store 0x959ecbb54ccce193 in memory
flw f4, 0(x2) # load 0x959ecbb54ccce193 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmul.s f30, f4, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x2, 0x652503bc93c2ee71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e6c6cbde6f033bb # load x3 with value 0x9e6c6cbde6f033bb
sw x3, 0(x2) # store 0x9e6c6cbde6f033bb in memory
flw f21, 0(x2) # load 0x9e6c6cbde6f033bb from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fmul.s f2, f21, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x8, 0x4e1bc08174238186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa44125c22fa53c91 # load x3 with value 0xa44125c22fa53c91
sw x3, 0(x2) # store 0xa44125c22fa53c91 in memory
flw f30, 0(x2) # load 0xa44125c22fa53c91 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fmul.s f8, f30, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x9, 0x7faacdcd30637244 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20bb03d7f3ebc109 # load x3 with value 0x20bb03d7f3ebc109
sw x3, 0(x2) # store 0x20bb03d7f3ebc109 in memory
flw f17, 0(x2) # load 0x20bb03d7f3ebc109 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fmul.s f9, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x27, 0xfa2b9e4c7f22da33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa05312678508a464 # load x3 with value 0xa05312678508a464
sw x3, 0(x2) # store 0xa05312678508a464 in memory
flw f26, 0(x2) # load 0xa05312678508a464 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fmul.s f27, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x11, 0xec72b2afd5708d30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f2e1c32e1865c1 # load x3 with value 0x1f2e1c32e1865c1
sw x3, 0(x2) # store 0x1f2e1c32e1865c1 in memory
flw f25, 0(x2) # load 0x1f2e1c32e1865c1 from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f11, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x26, 0xfb70372eb3f8b3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a2f3b4a7c2624e2 # load x3 with value 0x9a2f3b4a7c2624e2
sw x3, 0(x2) # store 0x9a2f3b4a7c2624e2 in memory
flw f13, 0(x2) # load 0x9a2f3b4a7c2624e2 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fmul.s f26, f13, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x10, 0xc1588f03bde6fe9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc12754e32ba5ffbc # load x3 with value 0xc12754e32ba5ffbc
sw x3, 0(x2) # store 0xc12754e32ba5ffbc in memory
flw f30, 0(x2) # load 0xc12754e32ba5ffbc from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fmul.s f10, f30, f11 # perform operation

# Testcase cp_frm
li x5, 0x78d5fc6ed4d87419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42efe374bf168d8f # load x3 with value 0x42efe374bf168d8f
sw x3, 0(x2) # store 0x42efe374bf168d8f in memory
flw f14, 0(x2) # load 0x42efe374bf168d8f from memory into f14
li x3, 0xd11f6e61bf85b0a0 # load x3 with value 0xd11f6e61bf85b0a0
sw x3, 0(x2) # store 0xd11f6e61bf85b0a0 in memory
flw f27, 0(x2) # load 0xd11f6e61bf85b0a0 from memory into f27
fmul.s f5, f14, f27, dyn # perform operation
fmul.s f5, f14, f27, rdn # perform operation
fmul.s f5, f14, f27, rmm # perform operation
fmul.s f5, f14, f27, rne # perform operation
fmul.s f5, f14, f27, rtz # perform operation
fmul.s f5, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x17, 0x8dd184c031f0ea23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fmul.s f17, f7, f21, dyn # perform operation
fmul.s f17, f7, f21, rdn # perform operation
fmul.s f17, f7, f21, rmm # perform operation
fmul.s f17, f7, f21, rne # perform operation
fmul.s f17, f7, f21, rtz # perform operation
fmul.s f17, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x16, 0x755df5068613d55b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f16, f21, f15, dyn # perform operation
fmul.s f16, f21, f15, rdn # perform operation
fmul.s f16, f21, f15, rmm # perform operation
fmul.s f16, f21, f15, rne # perform operation
fmul.s f16, f21, f15, rtz # perform operation
fmul.s f16, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x16, 0xa1ba4d86d760e94b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f16, f12, f19, dyn # perform operation
fmul.s f16, f12, f19, rdn # perform operation
fmul.s f16, f12, f19, rmm # perform operation
fmul.s f16, f12, f19, rne # perform operation
fmul.s f16, f12, f19, rtz # perform operation
fmul.s f16, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x6, 0xa70efd59ab26be6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fmul.s f6, f1, f22, dyn # perform operation
fmul.s f6, f1, f22, rdn # perform operation
fmul.s f6, f1, f22, rmm # perform operation
fmul.s f6, f1, f22, rne # perform operation
fmul.s f6, f1, f22, rtz # perform operation
fmul.s f6, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x5, 0x35aef7f2e2f6971d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fmul.s f5, f13, f9, dyn # perform operation
fmul.s f5, f13, f9, rdn # perform operation
fmul.s f5, f13, f9, rmm # perform operation
fmul.s f5, f13, f9, rne # perform operation
fmul.s f5, f13, f9, rtz # perform operation
fmul.s f5, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x8, 0x644f77cb556c3f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fmul.s f8, f20, f9, dyn # perform operation
fmul.s f8, f20, f9, rdn # perform operation
fmul.s f8, f20, f9, rmm # perform operation
fmul.s f8, f20, f9, rne # perform operation
fmul.s f8, f20, f9, rtz # perform operation
fmul.s f8, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x13, 0xf8fa4dd547c3410f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fmul.s f13, f5, f28, dyn # perform operation
fmul.s f13, f5, f28, rdn # perform operation
fmul.s f13, f5, f28, rmm # perform operation
fmul.s f13, f5, f28, rne # perform operation
fmul.s f13, f5, f28, rtz # perform operation
fmul.s f13, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x6, 0xac87cd383573a320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fmul.s f6, f9, f16, dyn # perform operation
fmul.s f6, f9, f16, rdn # perform operation
fmul.s f6, f9, f16, rmm # perform operation
fmul.s f6, f9, f16, rne # perform operation
fmul.s f6, f9, f16, rtz # perform operation
fmul.s f6, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x9, 0x309e460b8c9e4322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fmul.s f9, f2, f13, dyn # perform operation
fmul.s f9, f2, f13, rdn # perform operation
fmul.s f9, f2, f13, rmm # perform operation
fmul.s f9, f2, f13, rne # perform operation
fmul.s f9, f2, f13, rtz # perform operation
fmul.s f9, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x4, 0xc24bd1517f1731a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fmul.s f4, f24, f31, dyn # perform operation
fmul.s f4, f24, f31, rdn # perform operation
fmul.s f4, f24, f31, rmm # perform operation
fmul.s f4, f24, f31, rne # perform operation
fmul.s f4, f24, f31, rtz # perform operation
fmul.s f4, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x2, 0x5147f43bf2e916d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fmul.s f2, f4, f10, dyn # perform operation
fmul.s f2, f4, f10, rdn # perform operation
fmul.s f2, f4, f10, rmm # perform operation
fmul.s f2, f4, f10, rne # perform operation
fmul.s f2, f4, f10, rtz # perform operation
fmul.s f2, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x31, 0x2a40ac25a3c105a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fmul.s f31, f20, f5, dyn # perform operation
fmul.s f31, f20, f5, rdn # perform operation
fmul.s f31, f20, f5, rmm # perform operation
fmul.s f31, f20, f5, rne # perform operation
fmul.s f31, f20, f5, rtz # perform operation
fmul.s f31, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x15, 0x21e4db486c62e768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f15, f5, f13, dyn # perform operation
fmul.s f15, f5, f13, rdn # perform operation
fmul.s f15, f5, f13, rmm # perform operation
fmul.s f15, f5, f13, rne # perform operation
fmul.s f15, f5, f13, rtz # perform operation
fmul.s f15, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x18, 0x4f29f26431b2d41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fmul.s f18, f7, f2, dyn # perform operation
fmul.s f18, f7, f2, rdn # perform operation
fmul.s f18, f7, f2, rmm # perform operation
fmul.s f18, f7, f2, rne # perform operation
fmul.s f18, f7, f2, rtz # perform operation
fmul.s f18, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x24, 0x799b05bca5e0ec80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmul.s f24, f15, f31, dyn # perform operation
fmul.s f24, f15, f31, rdn # perform operation
fmul.s f24, f15, f31, rmm # perform operation
fmul.s f24, f15, f31, rne # perform operation
fmul.s f24, f15, f31, rtz # perform operation
fmul.s f24, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x20, 0xff589b24a1110a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fmul.s f20, f17, f19, dyn # perform operation
fmul.s f20, f17, f19, rdn # perform operation
fmul.s f20, f17, f19, rmm # perform operation
fmul.s f20, f17, f19, rne # perform operation
fmul.s f20, f17, f19, rtz # perform operation
fmul.s f20, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x14, 0x11774a389b89d58f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fmul.s f14, f9, f29, dyn # perform operation
fmul.s f14, f9, f29, rdn # perform operation
fmul.s f14, f9, f29, rmm # perform operation
fmul.s f14, f9, f29, rne # perform operation
fmul.s f14, f9, f29, rtz # perform operation
fmul.s f14, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x19, 0x62634c5e7a83c2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fmul.s f19, f26, f3, dyn # perform operation
fmul.s f19, f26, f3, rdn # perform operation
fmul.s f19, f26, f3, rmm # perform operation
fmul.s f19, f26, f3, rne # perform operation
fmul.s f19, f26, f3, rtz # perform operation
fmul.s f19, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x14, 0x215ef6814a6d9a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fmul.s f14, f31, f20, dyn # perform operation
fmul.s f14, f31, f20, rdn # perform operation
fmul.s f14, f31, f20, rmm # perform operation
fmul.s f14, f31, f20, rne # perform operation
fmul.s f14, f31, f20, rtz # perform operation
fmul.s f14, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x24, 0x11cfe3d602080760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fmul.s f24, f13, f3, dyn # perform operation
fmul.s f24, f13, f3, rdn # perform operation
fmul.s f24, f13, f3, rmm # perform operation
fmul.s f24, f13, f3, rne # perform operation
fmul.s f24, f13, f3, rtz # perform operation
fmul.s f24, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x4, 0x6fe3ddaa1c952455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fmul.s f4, f13, f2, dyn # perform operation
fmul.s f4, f13, f2, rdn # perform operation
fmul.s f4, f13, f2, rmm # perform operation
fmul.s f4, f13, f2, rne # perform operation
fmul.s f4, f13, f2, rtz # perform operation
fmul.s f4, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x18, 0x55de8bf3d17b69a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f18, f20, f25, dyn # perform operation
fmul.s f18, f20, f25, rdn # perform operation
fmul.s f18, f20, f25, rmm # perform operation
fmul.s f18, f20, f25, rne # perform operation
fmul.s f18, f20, f25, rtz # perform operation
fmul.s f18, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x3, 0x888f1488b4debc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fmul.s f3, f24, f31, dyn # perform operation
fmul.s f3, f24, f31, rdn # perform operation
fmul.s f3, f24, f31, rmm # perform operation
fmul.s f3, f24, f31, rne # perform operation
fmul.s f3, f24, f31, rtz # perform operation
fmul.s f3, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x4, 0x6ca96c746e141772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f4, f18, f16, dyn # perform operation
fmul.s f4, f18, f16, rdn # perform operation
fmul.s f4, f18, f16, rmm # perform operation
fmul.s f4, f18, f16, rne # perform operation
fmul.s f4, f18, f16, rtz # perform operation
fmul.s f4, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x6, 0xc549db2365c6949b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fmul.s f6, f31, f4, dyn # perform operation
fmul.s f6, f31, f4, rdn # perform operation
fmul.s f6, f31, f4, rmm # perform operation
fmul.s f6, f31, f4, rne # perform operation
fmul.s f6, f31, f4, rtz # perform operation
fmul.s f6, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x3, 0xa72b679cdcf28262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fmul.s f3, f18, f8, dyn # perform operation
fmul.s f3, f18, f8, rdn # perform operation
fmul.s f3, f18, f8, rmm # perform operation
fmul.s f3, f18, f8, rne # perform operation
fmul.s f3, f18, f8, rtz # perform operation
fmul.s f3, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x6, 0x069c4152c73c89d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fmul.s f6, f30, f14, dyn # perform operation
fmul.s f6, f30, f14, rdn # perform operation
fmul.s f6, f30, f14, rmm # perform operation
fmul.s f6, f30, f14, rne # perform operation
fmul.s f6, f30, f14, rtz # perform operation
fmul.s f6, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x14, 0xe2e7df2139747759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fmul.s f14, f30, f23, dyn # perform operation
fmul.s f14, f30, f23, rdn # perform operation
fmul.s f14, f30, f23, rmm # perform operation
fmul.s f14, f30, f23, rne # perform operation
fmul.s f14, f30, f23, rtz # perform operation
fmul.s f14, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x25, 0xeec752cdd0babe61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fmul.s f25, f20, f22, dyn # perform operation
fmul.s f25, f20, f22, rdn # perform operation
fmul.s f25, f20, f22, rmm # perform operation
fmul.s f25, f20, f22, rne # perform operation
fmul.s f25, f20, f22, rtz # perform operation
fmul.s f25, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x20, 0x6518db3c8e88fc5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fmul.s f20, f17, f12, dyn # perform operation
fmul.s f20, f17, f12, rdn # perform operation
fmul.s f20, f17, f12, rmm # perform operation
fmul.s f20, f17, f12, rne # perform operation
fmul.s f20, f17, f12, rtz # perform operation
fmul.s f20, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x17, 0x956baaa9f659e70c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmul.s f17, f16, f14, dyn # perform operation
fmul.s f17, f16, f14, rdn # perform operation
fmul.s f17, f16, f14, rmm # perform operation
fmul.s f17, f16, f14, rne # perform operation
fmul.s f17, f16, f14, rtz # perform operation
fmul.s f17, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x11, 0x050f62fb9775e722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmul.s f11, f19, f2, dyn # perform operation
fmul.s f11, f19, f2, rdn # perform operation
fmul.s f11, f19, f2, rmm # perform operation
fmul.s f11, f19, f2, rne # perform operation
fmul.s f11, f19, f2, rtz # perform operation
fmul.s f11, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x14, 0x10f136dd93a276a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f14, f12, f8, dyn # perform operation
fmul.s f14, f12, f8, rdn # perform operation
fmul.s f14, f12, f8, rmm # perform operation
fmul.s f14, f12, f8, rne # perform operation
fmul.s f14, f12, f8, rtz # perform operation
fmul.s f14, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x1, 0x33eefae420927fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmul.s f1, f17, f31, dyn # perform operation
fmul.s f1, f17, f31, rdn # perform operation
fmul.s f1, f17, f31, rmm # perform operation
fmul.s f1, f17, f31, rne # perform operation
fmul.s f1, f17, f31, rtz # perform operation
fmul.s f1, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x30, 0x638d9308c5a71d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fmul.s f30, f17, f16, dyn # perform operation
fmul.s f30, f17, f16, rdn # perform operation
fmul.s f30, f17, f16, rmm # perform operation
fmul.s f30, f17, f16, rne # perform operation
fmul.s f30, f17, f16, rtz # perform operation
fmul.s f30, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x8, 0xf961b4b57629c0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f8, f14, f23, dyn # perform operation
fmul.s f8, f14, f23, rdn # perform operation
fmul.s f8, f14, f23, rmm # perform operation
fmul.s f8, f14, f23, rne # perform operation
fmul.s f8, f14, f23, rtz # perform operation
fmul.s f8, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x27, 0x13577454461728f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fmul.s f27, f31, f1, dyn # perform operation
fmul.s f27, f31, f1, rdn # perform operation
fmul.s f27, f31, f1, rmm # perform operation
fmul.s f27, f31, f1, rne # perform operation
fmul.s f27, f31, f1, rtz # perform operation
fmul.s f27, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x7, 0x37257b3af293b9bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f7, f6, f16, dyn # perform operation
fmul.s f7, f6, f16, rdn # perform operation
fmul.s f7, f6, f16, rmm # perform operation
fmul.s f7, f6, f16, rne # perform operation
fmul.s f7, f6, f16, rtz # perform operation
fmul.s f7, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x30, 0x17926d0dcec03433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmul.s f30, f24, f4, dyn # perform operation
fmul.s f30, f24, f4, rdn # perform operation
fmul.s f30, f24, f4, rmm # perform operation
fmul.s f30, f24, f4, rne # perform operation
fmul.s f30, f24, f4, rtz # perform operation
fmul.s f30, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x3, 0xc75264ef0ad93029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fmul.s f3, f1, f25, dyn # perform operation
fmul.s f3, f1, f25, rdn # perform operation
fmul.s f3, f1, f25, rmm # perform operation
fmul.s f3, f1, f25, rne # perform operation
fmul.s f3, f1, f25, rtz # perform operation
fmul.s f3, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x2, 0x0bb20d31e1bccba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fmul.s f2, f16, f27, dyn # perform operation
fmul.s f2, f16, f27, rdn # perform operation
fmul.s f2, f16, f27, rmm # perform operation
fmul.s f2, f16, f27, rne # perform operation
fmul.s f2, f16, f27, rtz # perform operation
fmul.s f2, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x8, 0x1463ee703ca05577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fmul.s f8, f12, f2, dyn # perform operation
fmul.s f8, f12, f2, rdn # perform operation
fmul.s f8, f12, f2, rmm # perform operation
fmul.s f8, f12, f2, rne # perform operation
fmul.s f8, f12, f2, rtz # perform operation
fmul.s f8, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x20, 0xb65f1eb29902a6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fmul.s f20, f1, f22, dyn # perform operation
fmul.s f20, f1, f22, rdn # perform operation
fmul.s f20, f1, f22, rmm # perform operation
fmul.s f20, f1, f22, rne # perform operation
fmul.s f20, f1, f22, rtz # perform operation
fmul.s f20, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x26, 0x5ac7033d11a6787b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fmul.s f26, f9, f17, dyn # perform operation
fmul.s f26, f9, f17, rdn # perform operation
fmul.s f26, f9, f17, rmm # perform operation
fmul.s f26, f9, f17, rne # perform operation
fmul.s f26, f9, f17, rtz # perform operation
fmul.s f26, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x22, 0x9ab8bb12e11db177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fmul.s f22, f29, f19, dyn # perform operation
fmul.s f22, f29, f19, rdn # perform operation
fmul.s f22, f29, f19, rmm # perform operation
fmul.s f22, f29, f19, rne # perform operation
fmul.s f22, f29, f19, rtz # perform operation
fmul.s f22, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x2, 0x9b020ad904eed5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fmul.s f2, f18, f8, dyn # perform operation
fmul.s f2, f18, f8, rdn # perform operation
fmul.s f2, f18, f8, rmm # perform operation
fmul.s f2, f18, f8, rne # perform operation
fmul.s f2, f18, f8, rtz # perform operation
fmul.s f2, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x9, 0x0c5734ca23ba672e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmul.s f9, f2, f25, dyn # perform operation
fmul.s f9, f2, f25, rdn # perform operation
fmul.s f9, f2, f25, rmm # perform operation
fmul.s f9, f2, f25, rne # perform operation
fmul.s f9, f2, f25, rtz # perform operation
fmul.s f9, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x15, 0x7dbc9890e0bb85af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f15, f17, f5, dyn # perform operation
fmul.s f15, f17, f5, rdn # perform operation
fmul.s f15, f17, f5, rmm # perform operation
fmul.s f15, f17, f5, rne # perform operation
fmul.s f15, f17, f5, rtz # perform operation
fmul.s f15, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x23, 0x5f3c2bd7a9ec437b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fmul.s f23, f19, f12, dyn # perform operation
fmul.s f23, f19, f12, rdn # perform operation
fmul.s f23, f19, f12, rmm # perform operation
fmul.s f23, f19, f12, rne # perform operation
fmul.s f23, f19, f12, rtz # perform operation
fmul.s f23, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x25, 0xcd765bb6efb07b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fmul.s f25, f18, f10, dyn # perform operation
fmul.s f25, f18, f10, rdn # perform operation
fmul.s f25, f18, f10, rmm # perform operation
fmul.s f25, f18, f10, rne # perform operation
fmul.s f25, f18, f10, rtz # perform operation
fmul.s f25, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x28, 0x7d768893afead059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmul.s f28, f5, f16, dyn # perform operation
fmul.s f28, f5, f16, rdn # perform operation
fmul.s f28, f5, f16, rmm # perform operation
fmul.s f28, f5, f16, rne # perform operation
fmul.s f28, f5, f16, rtz # perform operation
fmul.s f28, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x29, 0xde5ee858cbab9082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmul.s f29, f8, f28, dyn # perform operation
fmul.s f29, f8, f28, rdn # perform operation
fmul.s f29, f8, f28, rmm # perform operation
fmul.s f29, f8, f28, rne # perform operation
fmul.s f29, f8, f28, rtz # perform operation
fmul.s f29, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x16, 0x05fe4b003ea40951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.s f16, f19, f13, dyn # perform operation
fmul.s f16, f19, f13, rdn # perform operation
fmul.s f16, f19, f13, rmm # perform operation
fmul.s f16, f19, f13, rne # perform operation
fmul.s f16, f19, f13, rtz # perform operation
fmul.s f16, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x27, 0x99e35f0ae5e6e747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fmul.s f27, f18, f11, dyn # perform operation
fmul.s f27, f18, f11, rdn # perform operation
fmul.s f27, f18, f11, rmm # perform operation
fmul.s f27, f18, f11, rne # perform operation
fmul.s f27, f18, f11, rtz # perform operation
fmul.s f27, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x29, 0x1981abb71aaaa8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fmul.s f29, f10, f16, dyn # perform operation
fmul.s f29, f10, f16, rdn # perform operation
fmul.s f29, f10, f16, rmm # perform operation
fmul.s f29, f10, f16, rne # perform operation
fmul.s f29, f10, f16, rtz # perform operation
fmul.s f29, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x30, 0x4613182c04f1c53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f30, f6, f24, dyn # perform operation
fmul.s f30, f6, f24, rdn # perform operation
fmul.s f30, f6, f24, rmm # perform operation
fmul.s f30, f6, f24, rne # perform operation
fmul.s f30, f6, f24, rtz # perform operation
fmul.s f30, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x8, 0xa12e6f43adc704bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fmul.s f8, f23, f28, dyn # perform operation
fmul.s f8, f23, f28, rdn # perform operation
fmul.s f8, f23, f28, rmm # perform operation
fmul.s f8, f23, f28, rne # perform operation
fmul.s f8, f23, f28, rtz # perform operation
fmul.s f8, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x14, 0x41556dea1f5273b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fmul.s f14, f2, f8, dyn # perform operation
fmul.s f14, f2, f8, rdn # perform operation
fmul.s f14, f2, f8, rmm # perform operation
fmul.s f14, f2, f8, rne # perform operation
fmul.s f14, f2, f8, rtz # perform operation
fmul.s f14, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x29, 0xe8d8ef1ff9521a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fmul.s f29, f23, f5, dyn # perform operation
fmul.s f29, f23, f5, rdn # perform operation
fmul.s f29, f23, f5, rmm # perform operation
fmul.s f29, f23, f5, rne # perform operation
fmul.s f29, f23, f5, rtz # perform operation
fmul.s f29, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x21, 0x2310a75d41cb9f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fmul.s f21, f27, f3, dyn # perform operation
fmul.s f21, f27, f3, rdn # perform operation
fmul.s f21, f27, f3, rmm # perform operation
fmul.s f21, f27, f3, rne # perform operation
fmul.s f21, f27, f3, rtz # perform operation
fmul.s f21, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x6, 0x755ce3ccd4562f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fmul.s f6, f10, f28, dyn # perform operation
fmul.s f6, f10, f28, rdn # perform operation
fmul.s f6, f10, f28, rmm # perform operation
fmul.s f6, f10, f28, rne # perform operation
fmul.s f6, f10, f28, rtz # perform operation
fmul.s f6, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x11, 0xd053eb51196fda6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f11, f19, f17, dyn # perform operation
fmul.s f11, f19, f17, rdn # perform operation
fmul.s f11, f19, f17, rmm # perform operation
fmul.s f11, f19, f17, rne # perform operation
fmul.s f11, f19, f17, rtz # perform operation
fmul.s f11, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x27, 0xda989257bb80d946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fmul.s f27, f22, f25, dyn # perform operation
fmul.s f27, f22, f25, rdn # perform operation
fmul.s f27, f22, f25, rmm # perform operation
fmul.s f27, f22, f25, rne # perform operation
fmul.s f27, f22, f25, rtz # perform operation
fmul.s f27, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x1, 0xfc31b7eeddf84345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fmul.s f1, f19, f29, dyn # perform operation
fmul.s f1, f19, f29, rdn # perform operation
fmul.s f1, f19, f29, rmm # perform operation
fmul.s f1, f19, f29, rne # perform operation
fmul.s f1, f19, f29, rtz # perform operation
fmul.s f1, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x1, 0x5cc32e4e4d917268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f1, f26, f3, dyn # perform operation
fmul.s f1, f26, f3, rdn # perform operation
fmul.s f1, f26, f3, rmm # perform operation
fmul.s f1, f26, f3, rne # perform operation
fmul.s f1, f26, f3, rtz # perform operation
fmul.s f1, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x24, 0x339255b449b06a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f24, f19, f5, dyn # perform operation
fmul.s f24, f19, f5, rdn # perform operation
fmul.s f24, f19, f5, rmm # perform operation
fmul.s f24, f19, f5, rne # perform operation
fmul.s f24, f19, f5, rtz # perform operation
fmul.s f24, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x24, 0x459fb253c7ac9a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fmul.s f24, f13, f1, dyn # perform operation
fmul.s f24, f13, f1, rdn # perform operation
fmul.s f24, f13, f1, rmm # perform operation
fmul.s f24, f13, f1, rne # perform operation
fmul.s f24, f13, f1, rtz # perform operation
fmul.s f24, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x9, 0x926a18fb301f3bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f9, f28, f10, dyn # perform operation
fmul.s f9, f28, f10, rdn # perform operation
fmul.s f9, f28, f10, rmm # perform operation
fmul.s f9, f28, f10, rne # perform operation
fmul.s f9, f28, f10, rtz # perform operation
fmul.s f9, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x8, 0x2b30b829efd3a5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f8, f26, f28, dyn # perform operation
fmul.s f8, f26, f28, rdn # perform operation
fmul.s f8, f26, f28, rmm # perform operation
fmul.s f8, f26, f28, rne # perform operation
fmul.s f8, f26, f28, rtz # perform operation
fmul.s f8, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x2, 0x1e440186e58982ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fmul.s f2, f10, f4, dyn # perform operation
fmul.s f2, f10, f4, rdn # perform operation
fmul.s f2, f10, f4, rmm # perform operation
fmul.s f2, f10, f4, rne # perform operation
fmul.s f2, f10, f4, rtz # perform operation
fmul.s f2, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x18, 0xba9e4bd934ce1e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f18, f26, f15, dyn # perform operation
fmul.s f18, f26, f15, rdn # perform operation
fmul.s f18, f26, f15, rmm # perform operation
fmul.s f18, f26, f15, rne # perform operation
fmul.s f18, f26, f15, rtz # perform operation
fmul.s f18, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x8, 0xc362cbd14fde3e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fmul.s f8, f4, f23, dyn # perform operation
fmul.s f8, f4, f23, rdn # perform operation
fmul.s f8, f4, f23, rmm # perform operation
fmul.s f8, f4, f23, rne # perform operation
fmul.s f8, f4, f23, rtz # perform operation
fmul.s f8, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x5, 0xf604b7cf2d880c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmul.s f5, f22, f28, dyn # perform operation
fmul.s f5, f22, f28, rdn # perform operation
fmul.s f5, f22, f28, rmm # perform operation
fmul.s f5, f22, f28, rne # perform operation
fmul.s f5, f22, f28, rtz # perform operation
fmul.s f5, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x26, 0xf8d821616417e01f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fmul.s f26, f19, f21, dyn # perform operation
fmul.s f26, f19, f21, rdn # perform operation
fmul.s f26, f19, f21, rmm # perform operation
fmul.s f26, f19, f21, rne # perform operation
fmul.s f26, f19, f21, rtz # perform operation
fmul.s f26, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x20, 0x38c3a2e4dbb1c648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmul.s f20, f8, f25, dyn # perform operation
fmul.s f20, f8, f25, rdn # perform operation
fmul.s f20, f8, f25, rmm # perform operation
fmul.s f20, f8, f25, rne # perform operation
fmul.s f20, f8, f25, rtz # perform operation
fmul.s f20, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x15, 0x689045e6d6ce7df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f15, f7, f22, dyn # perform operation
fmul.s f15, f7, f22, rdn # perform operation
fmul.s f15, f7, f22, rmm # perform operation
fmul.s f15, f7, f22, rne # perform operation
fmul.s f15, f7, f22, rtz # perform operation
fmul.s f15, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x21, 0x8c28b29a670cca44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fmul.s f21, f16, f14, dyn # perform operation
fmul.s f21, f16, f14, rdn # perform operation
fmul.s f21, f16, f14, rmm # perform operation
fmul.s f21, f16, f14, rne # perform operation
fmul.s f21, f16, f14, rtz # perform operation
fmul.s f21, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x27, 0x787e930f9a8a4e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fmul.s f27, f25, f13, dyn # perform operation
fmul.s f27, f25, f13, rdn # perform operation
fmul.s f27, f25, f13, rmm # perform operation
fmul.s f27, f25, f13, rne # perform operation
fmul.s f27, f25, f13, rtz # perform operation
fmul.s f27, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x11, 0x4fbc84cb106b07a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.s f11, f22, f13, dyn # perform operation
fmul.s f11, f22, f13, rdn # perform operation
fmul.s f11, f22, f13, rmm # perform operation
fmul.s f11, f22, f13, rne # perform operation
fmul.s f11, f22, f13, rtz # perform operation
fmul.s f11, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x8, 0x5e0096b1673041f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fmul.s f8, f13, f14, dyn # perform operation
fmul.s f8, f13, f14, rdn # perform operation
fmul.s f8, f13, f14, rmm # perform operation
fmul.s f8, f13, f14, rne # perform operation
fmul.s f8, f13, f14, rtz # perform operation
fmul.s f8, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x13, 0x055e2d06086dcaf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmul.s f13, f27, f25, dyn # perform operation
fmul.s f13, f27, f25, rdn # perform operation
fmul.s f13, f27, f25, rmm # perform operation
fmul.s f13, f27, f25, rne # perform operation
fmul.s f13, f27, f25, rtz # perform operation
fmul.s f13, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x25, 0x5afeb2cc892f2e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fmul.s f25, f20, f14, dyn # perform operation
fmul.s f25, f20, f14, rdn # perform operation
fmul.s f25, f20, f14, rmm # perform operation
fmul.s f25, f20, f14, rne # perform operation
fmul.s f25, f20, f14, rtz # perform operation
fmul.s f25, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x24, 0x008df28429ef0546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fmul.s f24, f19, f29, dyn # perform operation
fmul.s f24, f19, f29, rdn # perform operation
fmul.s f24, f19, f29, rmm # perform operation
fmul.s f24, f19, f29, rne # perform operation
fmul.s f24, f19, f29, rtz # perform operation
fmul.s f24, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x20, 0xe5539484b681bcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fmul.s f20, f14, f28, dyn # perform operation
fmul.s f20, f14, f28, rdn # perform operation
fmul.s f20, f14, f28, rmm # perform operation
fmul.s f20, f14, f28, rne # perform operation
fmul.s f20, f14, f28, rtz # perform operation
fmul.s f20, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x18, 0xae5a2a8a60d8e6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fmul.s f18, f23, f14, dyn # perform operation
fmul.s f18, f23, f14, rdn # perform operation
fmul.s f18, f23, f14, rmm # perform operation
fmul.s f18, f23, f14, rne # perform operation
fmul.s f18, f23, f14, rtz # perform operation
fmul.s f18, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x9, 0x8df879e9735b6464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fmul.s f9, f13, f12, dyn # perform operation
fmul.s f9, f13, f12, rdn # perform operation
fmul.s f9, f13, f12, rmm # perform operation
fmul.s f9, f13, f12, rne # perform operation
fmul.s f9, f13, f12, rtz # perform operation
fmul.s f9, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x27, 0x21507814bf092de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fmul.s f27, f2, f12, dyn # perform operation
fmul.s f27, f2, f12, rdn # perform operation
fmul.s f27, f2, f12, rmm # perform operation
fmul.s f27, f2, f12, rne # perform operation
fmul.s f27, f2, f12, rtz # perform operation
fmul.s f27, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x28, 0x5724afd056163591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fmul.s f28, f25, f20, dyn # perform operation
fmul.s f28, f25, f20, rdn # perform operation
fmul.s f28, f25, f20, rmm # perform operation
fmul.s f28, f25, f20, rne # perform operation
fmul.s f28, f25, f20, rtz # perform operation
fmul.s f28, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x30, 0x09ba9d22c71907a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f30, f31, f23, dyn # perform operation
fmul.s f30, f31, f23, rdn # perform operation
fmul.s f30, f31, f23, rmm # perform operation
fmul.s f30, f31, f23, rne # perform operation
fmul.s f30, f31, f23, rtz # perform operation
fmul.s f30, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x5, 0x11887e3b4e52be1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f5, f20, f16, dyn # perform operation
fmul.s f5, f20, f16, rdn # perform operation
fmul.s f5, f20, f16, rmm # perform operation
fmul.s f5, f20, f16, rne # perform operation
fmul.s f5, f20, f16, rtz # perform operation
fmul.s f5, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x9, 0x522e914e56553dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f9, f24, f13, dyn # perform operation
fmul.s f9, f24, f13, rdn # perform operation
fmul.s f9, f24, f13, rmm # perform operation
fmul.s f9, f24, f13, rne # perform operation
fmul.s f9, f24, f13, rtz # perform operation
fmul.s f9, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x10, 0xb2b6e0a82e9e5c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fmul.s f10, f31, f22, dyn # perform operation
fmul.s f10, f31, f22, rdn # perform operation
fmul.s f10, f31, f22, rmm # perform operation
fmul.s f10, f31, f22, rne # perform operation
fmul.s f10, f31, f22, rtz # perform operation
fmul.s f10, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x22, 0xede906704804a69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fmul.s f22, f15, f16, dyn # perform operation
fmul.s f22, f15, f16, rdn # perform operation
fmul.s f22, f15, f16, rmm # perform operation
fmul.s f22, f15, f16, rne # perform operation
fmul.s f22, f15, f16, rtz # perform operation
fmul.s f22, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x5, 0xbc5cb6169e15f2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmul.s f5, f26, f29, dyn # perform operation
fmul.s f5, f26, f29, rdn # perform operation
fmul.s f5, f26, f29, rmm # perform operation
fmul.s f5, f26, f29, rne # perform operation
fmul.s f5, f26, f29, rtz # perform operation
fmul.s f5, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x8, 0xfd591eb6d217ef18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fmul.s f8, f4, f6, dyn # perform operation
fmul.s f8, f4, f6, rdn # perform operation
fmul.s f8, f4, f6, rmm # perform operation
fmul.s f8, f4, f6, rne # perform operation
fmul.s f8, f4, f6, rtz # perform operation
fmul.s f8, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x9, 0xbb5f2a8e32e35bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fmul.s f9, f10, f28, dyn # perform operation
fmul.s f9, f10, f28, rdn # perform operation
fmul.s f9, f10, f28, rmm # perform operation
fmul.s f9, f10, f28, rne # perform operation
fmul.s f9, f10, f28, rtz # perform operation
fmul.s f9, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x23, 0x0af51f801ad77ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fmul.s f23, f1, f18, dyn # perform operation
fmul.s f23, f1, f18, rdn # perform operation
fmul.s f23, f1, f18, rmm # perform operation
fmul.s f23, f1, f18, rne # perform operation
fmul.s f23, f1, f18, rtz # perform operation
fmul.s f23, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x22, 0x4031485cf5fe8f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fmul.s f22, f23, f24, dyn # perform operation
fmul.s f22, f23, f24, rdn # perform operation
fmul.s f22, f23, f24, rmm # perform operation
fmul.s f22, f23, f24, rne # perform operation
fmul.s f22, f23, f24, rtz # perform operation
fmul.s f22, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x23, 0x02c918c254356a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fmul.s f23, f26, f24, dyn # perform operation
fmul.s f23, f26, f24, rdn # perform operation
fmul.s f23, f26, f24, rmm # perform operation
fmul.s f23, f26, f24, rne # perform operation
fmul.s f23, f26, f24, rtz # perform operation
fmul.s f23, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x23, 0x776b9fb2e2077661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f23, f27, f25, dyn # perform operation
fmul.s f23, f27, f25, rdn # perform operation
fmul.s f23, f27, f25, rmm # perform operation
fmul.s f23, f27, f25, rne # perform operation
fmul.s f23, f27, f25, rtz # perform operation
fmul.s f23, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x20, 0x751c75a4fda90532 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fmul.s f20, f16, f3, dyn # perform operation
fmul.s f20, f16, f3, rdn # perform operation
fmul.s f20, f16, f3, rmm # perform operation
fmul.s f20, f16, f3, rne # perform operation
fmul.s f20, f16, f3, rtz # perform operation
fmul.s f20, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x31, 0xe79c28a70400f625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f31, f12, f26, dyn # perform operation
fmul.s f31, f12, f26, rdn # perform operation
fmul.s f31, f12, f26, rmm # perform operation
fmul.s f31, f12, f26, rne # perform operation
fmul.s f31, f12, f26, rtz # perform operation
fmul.s f31, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x28, 0x49eea704b16d21d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmul.s f28, f31, f17, dyn # perform operation
fmul.s f28, f31, f17, rdn # perform operation
fmul.s f28, f31, f17, rmm # perform operation
fmul.s f28, f31, f17, rne # perform operation
fmul.s f28, f31, f17, rtz # perform operation
fmul.s f28, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x13, 0x2ece8d2ffc1ea368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fmul.s f13, f11, f14, dyn # perform operation
fmul.s f13, f11, f14, rdn # perform operation
fmul.s f13, f11, f14, rmm # perform operation
fmul.s f13, f11, f14, rne # perform operation
fmul.s f13, f11, f14, rtz # perform operation
fmul.s f13, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x6, 0x8c3628fb8b59b4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fmul.s f6, f25, f11, dyn # perform operation
fmul.s f6, f25, f11, rdn # perform operation
fmul.s f6, f25, f11, rmm # perform operation
fmul.s f6, f25, f11, rne # perform operation
fmul.s f6, f25, f11, rtz # perform operation
fmul.s f6, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x5, 0x3291480a6c4bd205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmul.s f5, f3, f28, dyn # perform operation
fmul.s f5, f3, f28, rdn # perform operation
fmul.s f5, f3, f28, rmm # perform operation
fmul.s f5, f3, f28, rne # perform operation
fmul.s f5, f3, f28, rtz # perform operation
fmul.s f5, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x12, 0x4b1c23147ea946b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fmul.s f12, f14, f17, dyn # perform operation
fmul.s f12, f14, f17, rdn # perform operation
fmul.s f12, f14, f17, rmm # perform operation
fmul.s f12, f14, f17, rne # perform operation
fmul.s f12, f14, f17, rtz # perform operation
fmul.s f12, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x11, 0x4a90f1d29d06ea3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f11, f31, f24, dyn # perform operation
fmul.s f11, f31, f24, rdn # perform operation
fmul.s f11, f31, f24, rmm # perform operation
fmul.s f11, f31, f24, rne # perform operation
fmul.s f11, f31, f24, rtz # perform operation
fmul.s f11, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x30, 0x568a89d09d3d5f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fmul.s f30, f19, f10, dyn # perform operation
fmul.s f30, f19, f10, rdn # perform operation
fmul.s f30, f19, f10, rmm # perform operation
fmul.s f30, f19, f10, rne # perform operation
fmul.s f30, f19, f10, rtz # perform operation
fmul.s f30, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x25, 0x25b8af34474fe538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f25, f6, f16, dyn # perform operation
fmul.s f25, f6, f16, rdn # perform operation
fmul.s f25, f6, f16, rmm # perform operation
fmul.s f25, f6, f16, rne # perform operation
fmul.s f25, f6, f16, rtz # perform operation
fmul.s f25, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x28, 0x68591735cec44f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fmul.s f28, f8, f19, dyn # perform operation
fmul.s f28, f8, f19, rdn # perform operation
fmul.s f28, f8, f19, rmm # perform operation
fmul.s f28, f8, f19, rne # perform operation
fmul.s f28, f8, f19, rtz # perform operation
fmul.s f28, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x15, 0xc7f229cbe662c351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fmul.s f15, f31, f6, dyn # perform operation
fmul.s f15, f31, f6, rdn # perform operation
fmul.s f15, f31, f6, rmm # perform operation
fmul.s f15, f31, f6, rne # perform operation
fmul.s f15, f31, f6, rtz # perform operation
fmul.s f15, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x4, 0x552d9d58745fa1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f4, f8, f23, dyn # perform operation
fmul.s f4, f8, f23, rdn # perform operation
fmul.s f4, f8, f23, rmm # perform operation
fmul.s f4, f8, f23, rne # perform operation
fmul.s f4, f8, f23, rtz # perform operation
fmul.s f4, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x4, 0xa8bcb3f00eb46a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmul.s f4, f17, f10, dyn # perform operation
fmul.s f4, f17, f10, rdn # perform operation
fmul.s f4, f17, f10, rmm # perform operation
fmul.s f4, f17, f10, rne # perform operation
fmul.s f4, f17, f10, rtz # perform operation
fmul.s f4, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x30, 0x226dccd880c3e498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fmul.s f30, f12, f31, dyn # perform operation
fmul.s f30, f12, f31, rdn # perform operation
fmul.s f30, f12, f31, rmm # perform operation
fmul.s f30, f12, f31, rne # perform operation
fmul.s f30, f12, f31, rtz # perform operation
fmul.s f30, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x16, 0xd86dbce34503a481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmul.s f16, f27, f21, dyn # perform operation
fmul.s f16, f27, f21, rdn # perform operation
fmul.s f16, f27, f21, rmm # perform operation
fmul.s f16, f27, f21, rne # perform operation
fmul.s f16, f27, f21, rtz # perform operation
fmul.s f16, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x15, 0x0025fdbe00f77a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fmul.s f15, f23, f9, dyn # perform operation
fmul.s f15, f23, f9, rdn # perform operation
fmul.s f15, f23, f9, rmm # perform operation
fmul.s f15, f23, f9, rne # perform operation
fmul.s f15, f23, f9, rtz # perform operation
fmul.s f15, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x13, 0x9cb85b86ca787abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f13, f28, f21, dyn # perform operation
fmul.s f13, f28, f21, rdn # perform operation
fmul.s f13, f28, f21, rmm # perform operation
fmul.s f13, f28, f21, rne # perform operation
fmul.s f13, f28, f21, rtz # perform operation
fmul.s f13, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x5, 0x8d47e4efabb5d098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fmul.s f5, f30, f25, dyn # perform operation
fmul.s f5, f30, f25, rdn # perform operation
fmul.s f5, f30, f25, rmm # perform operation
fmul.s f5, f30, f25, rne # perform operation
fmul.s f5, f30, f25, rtz # perform operation
fmul.s f5, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x8, 0xaf18a09aa5a0dd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f8, f5, f1, dyn # perform operation
fmul.s f8, f5, f1, rdn # perform operation
fmul.s f8, f5, f1, rmm # perform operation
fmul.s f8, f5, f1, rne # perform operation
fmul.s f8, f5, f1, rtz # perform operation
fmul.s f8, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x28, 0xf778429b13bf9e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fmul.s f28, f26, f4, dyn # perform operation
fmul.s f28, f26, f4, rdn # perform operation
fmul.s f28, f26, f4, rmm # perform operation
fmul.s f28, f26, f4, rne # perform operation
fmul.s f28, f26, f4, rtz # perform operation
fmul.s f28, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x31, 0x6bf5acab37194427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmul.s f31, f6, f12, dyn # perform operation
fmul.s f31, f6, f12, rdn # perform operation
fmul.s f31, f6, f12, rmm # perform operation
fmul.s f31, f6, f12, rne # perform operation
fmul.s f31, f6, f12, rtz # perform operation
fmul.s f31, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x22, 0x65c6b3965c44972b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmul.s f22, f29, f8, dyn # perform operation
fmul.s f22, f29, f8, rdn # perform operation
fmul.s f22, f29, f8, rmm # perform operation
fmul.s f22, f29, f8, rne # perform operation
fmul.s f22, f29, f8, rtz # perform operation
fmul.s f22, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x26, 0x05c42caa677248e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f26, f9, f10, dyn # perform operation
fmul.s f26, f9, f10, rdn # perform operation
fmul.s f26, f9, f10, rmm # perform operation
fmul.s f26, f9, f10, rne # perform operation
fmul.s f26, f9, f10, rtz # perform operation
fmul.s f26, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x2, 0xf9ea313b2517cafa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fmul.s f2, f13, f31, dyn # perform operation
fmul.s f2, f13, f31, rdn # perform operation
fmul.s f2, f13, f31, rmm # perform operation
fmul.s f2, f13, f31, rne # perform operation
fmul.s f2, f13, f31, rtz # perform operation
fmul.s f2, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x28, 0x7b86dfe062c686ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fmul.s f28, f12, f13, dyn # perform operation
fmul.s f28, f12, f13, rdn # perform operation
fmul.s f28, f12, f13, rmm # perform operation
fmul.s f28, f12, f13, rne # perform operation
fmul.s f28, f12, f13, rtz # perform operation
fmul.s f28, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x13, 0x3fd0b6bacadc4e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f13, f18, f27, dyn # perform operation
fmul.s f13, f18, f27, rdn # perform operation
fmul.s f13, f18, f27, rmm # perform operation
fmul.s f13, f18, f27, rne # perform operation
fmul.s f13, f18, f27, rtz # perform operation
fmul.s f13, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x29, 0x1dbdd89144b904b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fmul.s f29, f17, f10, dyn # perform operation
fmul.s f29, f17, f10, rdn # perform operation
fmul.s f29, f17, f10, rmm # perform operation
fmul.s f29, f17, f10, rne # perform operation
fmul.s f29, f17, f10, rtz # perform operation
fmul.s f29, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x19, 0xaf156aab751a31e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fmul.s f19, f29, f30, dyn # perform operation
fmul.s f19, f29, f30, rdn # perform operation
fmul.s f19, f29, f30, rmm # perform operation
fmul.s f19, f29, f30, rne # perform operation
fmul.s f19, f29, f30, rtz # perform operation
fmul.s f19, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x26, 0xa530465593ffc919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f26, f4, f17, dyn # perform operation
fmul.s f26, f4, f17, rdn # perform operation
fmul.s f26, f4, f17, rmm # perform operation
fmul.s f26, f4, f17, rne # perform operation
fmul.s f26, f4, f17, rtz # perform operation
fmul.s f26, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x19, 0x0b8984b27e7b91be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fmul.s f19, f2, f12, dyn # perform operation
fmul.s f19, f2, f12, rdn # perform operation
fmul.s f19, f2, f12, rmm # perform operation
fmul.s f19, f2, f12, rne # perform operation
fmul.s f19, f2, f12, rtz # perform operation
fmul.s f19, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x22, 0x9318db421bdf7149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f22, f12, f2, dyn # perform operation
fmul.s f22, f12, f2, rdn # perform operation
fmul.s f22, f12, f2, rmm # perform operation
fmul.s f22, f12, f2, rne # perform operation
fmul.s f22, f12, f2, rtz # perform operation
fmul.s f22, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x22, 0xf44cceaf3df0bef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fmul.s f22, f28, f15, dyn # perform operation
fmul.s f22, f28, f15, rdn # perform operation
fmul.s f22, f28, f15, rmm # perform operation
fmul.s f22, f28, f15, rne # perform operation
fmul.s f22, f28, f15, rtz # perform operation
fmul.s f22, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x24, 0x14ad7fcda88c6ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f24, f15, f21, dyn # perform operation
fmul.s f24, f15, f21, rdn # perform operation
fmul.s f24, f15, f21, rmm # perform operation
fmul.s f24, f15, f21, rne # perform operation
fmul.s f24, f15, f21, rtz # perform operation
fmul.s f24, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x27, 0xa953e32a8bf07d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fmul.s f27, f12, f22, dyn # perform operation
fmul.s f27, f12, f22, rdn # perform operation
fmul.s f27, f12, f22, rmm # perform operation
fmul.s f27, f12, f22, rne # perform operation
fmul.s f27, f12, f22, rtz # perform operation
fmul.s f27, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x21, 0x44b1e42f97040d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f21, f2, f11, dyn # perform operation
fmul.s f21, f2, f11, rdn # perform operation
fmul.s f21, f2, f11, rmm # perform operation
fmul.s f21, f2, f11, rne # perform operation
fmul.s f21, f2, f11, rtz # perform operation
fmul.s f21, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x18, 0xf54c214856c1d155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fmul.s f18, f13, f19, dyn # perform operation
fmul.s f18, f13, f19, rdn # perform operation
fmul.s f18, f13, f19, rmm # perform operation
fmul.s f18, f13, f19, rne # perform operation
fmul.s f18, f13, f19, rtz # perform operation
fmul.s f18, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x20, 0xb32ce5f45d465675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fmul.s f20, f28, f23, dyn # perform operation
fmul.s f20, f28, f23, rdn # perform operation
fmul.s f20, f28, f23, rmm # perform operation
fmul.s f20, f28, f23, rne # perform operation
fmul.s f20, f28, f23, rtz # perform operation
fmul.s f20, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x4, 0x809a7832e709c12f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmul.s f4, f25, f9, dyn # perform operation
fmul.s f4, f25, f9, rdn # perform operation
fmul.s f4, f25, f9, rmm # perform operation
fmul.s f4, f25, f9, rne # perform operation
fmul.s f4, f25, f9, rtz # perform operation
fmul.s f4, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x11, 0x1068b3e400794894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fmul.s f11, f25, f15, dyn # perform operation
fmul.s f11, f25, f15, rdn # perform operation
fmul.s f11, f25, f15, rmm # perform operation
fmul.s f11, f25, f15, rne # perform operation
fmul.s f11, f25, f15, rtz # perform operation
fmul.s f11, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x21, 0x5e4d644d2ca488c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fmul.s f21, f20, f8, dyn # perform operation
fmul.s f21, f20, f8, rdn # perform operation
fmul.s f21, f20, f8, rmm # perform operation
fmul.s f21, f20, f8, rne # perform operation
fmul.s f21, f20, f8, rtz # perform operation
fmul.s f21, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x11, 0x8941dc8d9bf30bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmul.s f11, f1, f21, dyn # perform operation
fmul.s f11, f1, f21, rdn # perform operation
fmul.s f11, f1, f21, rmm # perform operation
fmul.s f11, f1, f21, rne # perform operation
fmul.s f11, f1, f21, rtz # perform operation
fmul.s f11, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x31, 0x522851080deb8d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmul.s f31, f17, f4, dyn # perform operation
fmul.s f31, f17, f4, rdn # perform operation
fmul.s f31, f17, f4, rmm # perform operation
fmul.s f31, f17, f4, rne # perform operation
fmul.s f31, f17, f4, rtz # perform operation
fmul.s f31, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x15, 0xe2ca30973a8d074d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fmul.s f15, f28, f19, dyn # perform operation
fmul.s f15, f28, f19, rdn # perform operation
fmul.s f15, f28, f19, rmm # perform operation
fmul.s f15, f28, f19, rne # perform operation
fmul.s f15, f28, f19, rtz # perform operation
fmul.s f15, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x12, 0x87d59f1a944951ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fmul.s f12, f15, f5, dyn # perform operation
fmul.s f12, f15, f5, rdn # perform operation
fmul.s f12, f15, f5, rmm # perform operation
fmul.s f12, f15, f5, rne # perform operation
fmul.s f12, f15, f5, rtz # perform operation
fmul.s f12, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x4, 0x118735cc83d91db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f4, f19, f17, dyn # perform operation
fmul.s f4, f19, f17, rdn # perform operation
fmul.s f4, f19, f17, rmm # perform operation
fmul.s f4, f19, f17, rne # perform operation
fmul.s f4, f19, f17, rtz # perform operation
fmul.s f4, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x7, 0x0447b3a6027f7325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f7, f25, f13, dyn # perform operation
fmul.s f7, f25, f13, rdn # perform operation
fmul.s f7, f25, f13, rmm # perform operation
fmul.s f7, f25, f13, rne # perform operation
fmul.s f7, f25, f13, rtz # perform operation
fmul.s f7, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x9, 0x48f47f11b26f1c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fmul.s f9, f18, f28, dyn # perform operation
fmul.s f9, f18, f28, rdn # perform operation
fmul.s f9, f18, f28, rmm # perform operation
fmul.s f9, f18, f28, rne # perform operation
fmul.s f9, f18, f28, rtz # perform operation
fmul.s f9, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x29, 0xa84f07a92b75f51f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmul.s f29, f5, f11, dyn # perform operation
fmul.s f29, f5, f11, rdn # perform operation
fmul.s f29, f5, f11, rmm # perform operation
fmul.s f29, f5, f11, rne # perform operation
fmul.s f29, f5, f11, rtz # perform operation
fmul.s f29, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x16, 0x3d396997ac85a662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fmul.s f16, f4, f14, dyn # perform operation
fmul.s f16, f4, f14, rdn # perform operation
fmul.s f16, f4, f14, rmm # perform operation
fmul.s f16, f4, f14, rne # perform operation
fmul.s f16, f4, f14, rtz # perform operation
fmul.s f16, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x8, 0x5b8e5bd612698dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fmul.s f8, f18, f13, dyn # perform operation
fmul.s f8, f18, f13, rdn # perform operation
fmul.s f8, f18, f13, rmm # perform operation
fmul.s f8, f18, f13, rne # perform operation
fmul.s f8, f18, f13, rtz # perform operation
fmul.s f8, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x21, 0xb4cfc48f6eac379a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fmul.s f21, f17, f29, dyn # perform operation
fmul.s f21, f17, f29, rdn # perform operation
fmul.s f21, f17, f29, rmm # perform operation
fmul.s f21, f17, f29, rne # perform operation
fmul.s f21, f17, f29, rtz # perform operation
fmul.s f21, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x12, 0x173b818d17c5022e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fmul.s f12, f21, f9, dyn # perform operation
fmul.s f12, f21, f9, rdn # perform operation
fmul.s f12, f21, f9, rmm # perform operation
fmul.s f12, f21, f9, rne # perform operation
fmul.s f12, f21, f9, rtz # perform operation
fmul.s f12, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x13, 0xa3ebd724906244e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmul.s f13, f22, f3, dyn # perform operation
fmul.s f13, f22, f3, rdn # perform operation
fmul.s f13, f22, f3, rmm # perform operation
fmul.s f13, f22, f3, rne # perform operation
fmul.s f13, f22, f3, rtz # perform operation
fmul.s f13, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x22, 0x4da826f736dc128c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fmul.s f22, f5, f23, dyn # perform operation
fmul.s f22, f5, f23, rdn # perform operation
fmul.s f22, f5, f23, rmm # perform operation
fmul.s f22, f5, f23, rne # perform operation
fmul.s f22, f5, f23, rtz # perform operation
fmul.s f22, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x31, 0x71f1f30cea0d32b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fmul.s f31, f15, f6, dyn # perform operation
fmul.s f31, f15, f6, rdn # perform operation
fmul.s f31, f15, f6, rmm # perform operation
fmul.s f31, f15, f6, rne # perform operation
fmul.s f31, f15, f6, rtz # perform operation
fmul.s f31, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x17, 0x9a8ff3b7c6447a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmul.s f17, f31, f15, dyn # perform operation
fmul.s f17, f31, f15, rdn # perform operation
fmul.s f17, f31, f15, rmm # perform operation
fmul.s f17, f31, f15, rne # perform operation
fmul.s f17, f31, f15, rtz # perform operation
fmul.s f17, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x2, 0xfc0cb104458e62a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f2, f20, f26, dyn # perform operation
fmul.s f2, f20, f26, rdn # perform operation
fmul.s f2, f20, f26, rmm # perform operation
fmul.s f2, f20, f26, rne # perform operation
fmul.s f2, f20, f26, rtz # perform operation
fmul.s f2, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x15, 0x078683674b1dd3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fmul.s f15, f13, f3, dyn # perform operation
fmul.s f15, f13, f3, rdn # perform operation
fmul.s f15, f13, f3, rmm # perform operation
fmul.s f15, f13, f3, rne # perform operation
fmul.s f15, f13, f3, rtz # perform operation
fmul.s f15, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x15, 0x0cc7d74b684f7b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f15, f12, f16, dyn # perform operation
fmul.s f15, f12, f16, rdn # perform operation
fmul.s f15, f12, f16, rmm # perform operation
fmul.s f15, f12, f16, rne # perform operation
fmul.s f15, f12, f16, rtz # perform operation
fmul.s f15, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x19, 0x76c87e9e96fa11ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f19, f22, f12, dyn # perform operation
fmul.s f19, f22, f12, rdn # perform operation
fmul.s f19, f22, f12, rmm # perform operation
fmul.s f19, f22, f12, rne # perform operation
fmul.s f19, f22, f12, rtz # perform operation
fmul.s f19, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x22, 0x0b395474fb1f79a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f22, f24, f29, dyn # perform operation
fmul.s f22, f24, f29, rdn # perform operation
fmul.s f22, f24, f29, rmm # perform operation
fmul.s f22, f24, f29, rne # perform operation
fmul.s f22, f24, f29, rtz # perform operation
fmul.s f22, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x1, 0x86be7463772fd734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f1, f16, f21, dyn # perform operation
fmul.s f1, f16, f21, rdn # perform operation
fmul.s f1, f16, f21, rmm # perform operation
fmul.s f1, f16, f21, rne # perform operation
fmul.s f1, f16, f21, rtz # perform operation
fmul.s f1, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x10, 0x2d9a243917d82a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fmul.s f10, f19, f9, dyn # perform operation
fmul.s f10, f19, f9, rdn # perform operation
fmul.s f10, f19, f9, rmm # perform operation
fmul.s f10, f19, f9, rne # perform operation
fmul.s f10, f19, f9, rtz # perform operation
fmul.s f10, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x1, 0xf1436c54901bb49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmul.s f1, f16, f9, dyn # perform operation
fmul.s f1, f16, f9, rdn # perform operation
fmul.s f1, f16, f9, rmm # perform operation
fmul.s f1, f16, f9, rne # perform operation
fmul.s f1, f16, f9, rtz # perform operation
fmul.s f1, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x6, 0x0c8f5ff192007448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fmul.s f6, f18, f8, dyn # perform operation
fmul.s f6, f18, f8, rdn # perform operation
fmul.s f6, f18, f8, rmm # perform operation
fmul.s f6, f18, f8, rne # perform operation
fmul.s f6, f18, f8, rtz # perform operation
fmul.s f6, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x11, 0x0af7607583f3fa57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f11, f2, f3, dyn # perform operation
fmul.s f11, f2, f3, rdn # perform operation
fmul.s f11, f2, f3, rmm # perform operation
fmul.s f11, f2, f3, rne # perform operation
fmul.s f11, f2, f3, rtz # perform operation
fmul.s f11, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x16, 0xc8fe9414e2396f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f16, f29, f20, dyn # perform operation
fmul.s f16, f29, f20, rdn # perform operation
fmul.s f16, f29, f20, rmm # perform operation
fmul.s f16, f29, f20, rne # perform operation
fmul.s f16, f29, f20, rtz # perform operation
fmul.s f16, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x5, 0x0da0e210bf1651a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fmul.s f5, f8, f20, dyn # perform operation
fmul.s f5, f8, f20, rdn # perform operation
fmul.s f5, f8, f20, rmm # perform operation
fmul.s f5, f8, f20, rne # perform operation
fmul.s f5, f8, f20, rtz # perform operation
fmul.s f5, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x31, 0xf225124c29a7742e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fmul.s f31, f13, f29, dyn # perform operation
fmul.s f31, f13, f29, rdn # perform operation
fmul.s f31, f13, f29, rmm # perform operation
fmul.s f31, f13, f29, rne # perform operation
fmul.s f31, f13, f29, rtz # perform operation
fmul.s f31, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x15, 0xa2aaa0edae87ee0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fmul.s f15, f1, f3, dyn # perform operation
fmul.s f15, f1, f3, rdn # perform operation
fmul.s f15, f1, f3, rmm # perform operation
fmul.s f15, f1, f3, rne # perform operation
fmul.s f15, f1, f3, rtz # perform operation
fmul.s f15, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x23, 0x7b161d35daf18959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fmul.s f23, f14, f25, dyn # perform operation
fmul.s f23, f14, f25, rdn # perform operation
fmul.s f23, f14, f25, rmm # perform operation
fmul.s f23, f14, f25, rne # perform operation
fmul.s f23, f14, f25, rtz # perform operation
fmul.s f23, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x20, 0x01ffce8c8e755103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f20, f3, f19, dyn # perform operation
fmul.s f20, f3, f19, rdn # perform operation
fmul.s f20, f3, f19, rmm # perform operation
fmul.s f20, f3, f19, rne # perform operation
fmul.s f20, f3, f19, rtz # perform operation
fmul.s f20, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x20, 0x85b5f9ca690d317a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fmul.s f20, f5, f22, dyn # perform operation
fmul.s f20, f5, f22, rdn # perform operation
fmul.s f20, f5, f22, rmm # perform operation
fmul.s f20, f5, f22, rne # perform operation
fmul.s f20, f5, f22, rtz # perform operation
fmul.s f20, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x26, 0xcfa1ed4e39f2361f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f26, f20, f31, dyn # perform operation
fmul.s f26, f20, f31, rdn # perform operation
fmul.s f26, f20, f31, rmm # perform operation
fmul.s f26, f20, f31, rne # perform operation
fmul.s f26, f20, f31, rtz # perform operation
fmul.s f26, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x21, 0x012acb87f122522c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f21, f29, f13, dyn # perform operation
fmul.s f21, f29, f13, rdn # perform operation
fmul.s f21, f29, f13, rmm # perform operation
fmul.s f21, f29, f13, rne # perform operation
fmul.s f21, f29, f13, rtz # perform operation
fmul.s f21, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x27, 0x1c76c29a089bc108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f27, f2, f10, dyn # perform operation
fmul.s f27, f2, f10, rdn # perform operation
fmul.s f27, f2, f10, rmm # perform operation
fmul.s f27, f2, f10, rne # perform operation
fmul.s f27, f2, f10, rtz # perform operation
fmul.s f27, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x3, 0x6afec516395c1e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f3, f24, f23, dyn # perform operation
fmul.s f3, f24, f23, rdn # perform operation
fmul.s f3, f24, f23, rmm # perform operation
fmul.s f3, f24, f23, rne # perform operation
fmul.s f3, f24, f23, rtz # perform operation
fmul.s f3, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x23, 0x2fcdb11268390de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f23, f28, f30, dyn # perform operation
fmul.s f23, f28, f30, rdn # perform operation
fmul.s f23, f28, f30, rmm # perform operation
fmul.s f23, f28, f30, rne # perform operation
fmul.s f23, f28, f30, rtz # perform operation
fmul.s f23, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x17, 0x3ea9239277efe5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fmul.s f17, f13, f29, dyn # perform operation
fmul.s f17, f13, f29, rdn # perform operation
fmul.s f17, f13, f29, rmm # perform operation
fmul.s f17, f13, f29, rne # perform operation
fmul.s f17, f13, f29, rtz # perform operation
fmul.s f17, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x19, 0xd79051ddf5d1052f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f19, f25, f1, dyn # perform operation
fmul.s f19, f25, f1, rdn # perform operation
fmul.s f19, f25, f1, rmm # perform operation
fmul.s f19, f25, f1, rne # perform operation
fmul.s f19, f25, f1, rtz # perform operation
fmul.s f19, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x5, 0x2b22a3933c42b567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f5, f29, f20, dyn # perform operation
fmul.s f5, f29, f20, rdn # perform operation
fmul.s f5, f29, f20, rmm # perform operation
fmul.s f5, f29, f20, rne # perform operation
fmul.s f5, f29, f20, rtz # perform operation
fmul.s f5, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x21, 0xf68956e605f69e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f21, f12, f3, dyn # perform operation
fmul.s f21, f12, f3, rdn # perform operation
fmul.s f21, f12, f3, rmm # perform operation
fmul.s f21, f12, f3, rne # perform operation
fmul.s f21, f12, f3, rtz # perform operation
fmul.s f21, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x19, 0x4bb0edca6b6aca50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fmul.s f19, f9, f20, dyn # perform operation
fmul.s f19, f9, f20, rdn # perform operation
fmul.s f19, f9, f20, rmm # perform operation
fmul.s f19, f9, f20, rne # perform operation
fmul.s f19, f9, f20, rtz # perform operation
fmul.s f19, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x11, 0x1d0e14685dc30cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fmul.s f11, f14, f13, dyn # perform operation
fmul.s f11, f14, f13, rdn # perform operation
fmul.s f11, f14, f13, rmm # perform operation
fmul.s f11, f14, f13, rne # perform operation
fmul.s f11, f14, f13, rtz # perform operation
fmul.s f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x17, 0xbd1a5366004365ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fmul.s f17, f20, f30, dyn # perform operation
fmul.s f17, f20, f30, rdn # perform operation
fmul.s f17, f20, f30, rmm # perform operation
fmul.s f17, f20, f30, rne # perform operation
fmul.s f17, f20, f30, rtz # perform operation
fmul.s f17, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x20, 0x48f4f891e6d8c4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f20, f31, f12, dyn # perform operation
fmul.s f20, f31, f12, rdn # perform operation
fmul.s f20, f31, f12, rmm # perform operation
fmul.s f20, f31, f12, rne # perform operation
fmul.s f20, f31, f12, rtz # perform operation
fmul.s f20, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x22, 0xdc119a89e25ff696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f22, f4, f24, dyn # perform operation
fmul.s f22, f4, f24, rdn # perform operation
fmul.s f22, f4, f24, rmm # perform operation
fmul.s f22, f4, f24, rne # perform operation
fmul.s f22, f4, f24, rtz # perform operation
fmul.s f22, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x17, 0xe0a5987da68680a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f17, f9, f29, dyn # perform operation
fmul.s f17, f9, f29, rdn # perform operation
fmul.s f17, f9, f29, rmm # perform operation
fmul.s f17, f9, f29, rne # perform operation
fmul.s f17, f9, f29, rtz # perform operation
fmul.s f17, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x20, 0xddc2e64405590ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fmul.s f20, f7, f21, dyn # perform operation
fmul.s f20, f7, f21, rdn # perform operation
fmul.s f20, f7, f21, rmm # perform operation
fmul.s f20, f7, f21, rne # perform operation
fmul.s f20, f7, f21, rtz # perform operation
fmul.s f20, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x8, 0x51be91025da958bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fmul.s f8, f10, f4, dyn # perform operation
fmul.s f8, f10, f4, rdn # perform operation
fmul.s f8, f10, f4, rmm # perform operation
fmul.s f8, f10, f4, rne # perform operation
fmul.s f8, f10, f4, rtz # perform operation
fmul.s f8, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x26, 0x0a06b30618631836 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f26, f5, f23, dyn # perform operation
fmul.s f26, f5, f23, rdn # perform operation
fmul.s f26, f5, f23, rmm # perform operation
fmul.s f26, f5, f23, rne # perform operation
fmul.s f26, f5, f23, rtz # perform operation
fmul.s f26, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x15, 0xfad12d786618d59a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fmul.s f15, f24, f8, dyn # perform operation
fmul.s f15, f24, f8, rdn # perform operation
fmul.s f15, f24, f8, rmm # perform operation
fmul.s f15, f24, f8, rne # perform operation
fmul.s f15, f24, f8, rtz # perform operation
fmul.s f15, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x11, 0x788c2ee4b9dfb83a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f11, f13, f14, dyn # perform operation
fmul.s f11, f13, f14, rdn # perform operation
fmul.s f11, f13, f14, rmm # perform operation
fmul.s f11, f13, f14, rne # perform operation
fmul.s f11, f13, f14, rtz # perform operation
fmul.s f11, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x5, 0x41cc2a609ec22d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmul.s f5, f19, f22, dyn # perform operation
fmul.s f5, f19, f22, rdn # perform operation
fmul.s f5, f19, f22, rmm # perform operation
fmul.s f5, f19, f22, rne # perform operation
fmul.s f5, f19, f22, rtz # perform operation
fmul.s f5, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x21, 0x2587e3b34235bdc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f21, f27, f12, dyn # perform operation
fmul.s f21, f27, f12, rdn # perform operation
fmul.s f21, f27, f12, rmm # perform operation
fmul.s f21, f27, f12, rne # perform operation
fmul.s f21, f27, f12, rtz # perform operation
fmul.s f21, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x25, 0x69482aa3830cc4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fmul.s f25, f8, f13, dyn # perform operation
fmul.s f25, f8, f13, rdn # perform operation
fmul.s f25, f8, f13, rmm # perform operation
fmul.s f25, f8, f13, rne # perform operation
fmul.s f25, f8, f13, rtz # perform operation
fmul.s f25, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x1, 0xeb63633fc41be1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fmul.s f1, f23, f28, dyn # perform operation
fmul.s f1, f23, f28, rdn # perform operation
fmul.s f1, f23, f28, rmm # perform operation
fmul.s f1, f23, f28, rne # perform operation
fmul.s f1, f23, f28, rtz # perform operation
fmul.s f1, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x27, 0x83a8fee24b04d66d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f27, f1, f28, dyn # perform operation
fmul.s f27, f1, f28, rdn # perform operation
fmul.s f27, f1, f28, rmm # perform operation
fmul.s f27, f1, f28, rne # perform operation
fmul.s f27, f1, f28, rtz # perform operation
fmul.s f27, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x22, 0xf7a2e1b730c28e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmul.s f22, f25, f19, dyn # perform operation
fmul.s f22, f25, f19, rdn # perform operation
fmul.s f22, f25, f19, rmm # perform operation
fmul.s f22, f25, f19, rne # perform operation
fmul.s f22, f25, f19, rtz # perform operation
fmul.s f22, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x4, 0xd749e3c875169f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f4, f8, f15, dyn # perform operation
fmul.s f4, f8, f15, rdn # perform operation
fmul.s f4, f8, f15, rmm # perform operation
fmul.s f4, f8, f15, rne # perform operation
fmul.s f4, f8, f15, rtz # perform operation
fmul.s f4, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x3, 0xa5d7fd2d5c607235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fmul.s f3, f23, f8, dyn # perform operation
fmul.s f3, f23, f8, rdn # perform operation
fmul.s f3, f23, f8, rmm # perform operation
fmul.s f3, f23, f8, rne # perform operation
fmul.s f3, f23, f8, rtz # perform operation
fmul.s f3, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x18, 0x986487801de42706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fmul.s f18, f16, f23, dyn # perform operation
fmul.s f18, f16, f23, rdn # perform operation
fmul.s f18, f16, f23, rmm # perform operation
fmul.s f18, f16, f23, rne # perform operation
fmul.s f18, f16, f23, rtz # perform operation
fmul.s f18, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x6, 0xd8c1bf1e5b71737c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f6, f16, f10, dyn # perform operation
fmul.s f6, f16, f10, rdn # perform operation
fmul.s f6, f16, f10, rmm # perform operation
fmul.s f6, f16, f10, rne # perform operation
fmul.s f6, f16, f10, rtz # perform operation
fmul.s f6, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x5, 0xdaf72721286b4260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f5, f13, f30, dyn # perform operation
fmul.s f5, f13, f30, rdn # perform operation
fmul.s f5, f13, f30, rmm # perform operation
fmul.s f5, f13, f30, rne # perform operation
fmul.s f5, f13, f30, rtz # perform operation
fmul.s f5, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x9, 0x854e45e9bdd0046c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmul.s f9, f15, f14, dyn # perform operation
fmul.s f9, f15, f14, rdn # perform operation
fmul.s f9, f15, f14, rmm # perform operation
fmul.s f9, f15, f14, rne # perform operation
fmul.s f9, f15, f14, rtz # perform operation
fmul.s f9, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x14, 0x8970b5a61de47550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f14, f27, f12, dyn # perform operation
fmul.s f14, f27, f12, rdn # perform operation
fmul.s f14, f27, f12, rmm # perform operation
fmul.s f14, f27, f12, rne # perform operation
fmul.s f14, f27, f12, rtz # perform operation
fmul.s f14, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x28, 0xce1a2079e80f4104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fmul.s f28, f1, f10, dyn # perform operation
fmul.s f28, f1, f10, rdn # perform operation
fmul.s f28, f1, f10, rmm # perform operation
fmul.s f28, f1, f10, rne # perform operation
fmul.s f28, f1, f10, rtz # perform operation
fmul.s f28, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x1, 0xe73bbb029eb2f8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fmul.s f1, f21, f19, dyn # perform operation
fmul.s f1, f21, f19, rdn # perform operation
fmul.s f1, f21, f19, rmm # perform operation
fmul.s f1, f21, f19, rne # perform operation
fmul.s f1, f21, f19, rtz # perform operation
fmul.s f1, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x11, 0x7323ce63f45458b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmul.s f11, f7, f28, dyn # perform operation
fmul.s f11, f7, f28, rdn # perform operation
fmul.s f11, f7, f28, rmm # perform operation
fmul.s f11, f7, f28, rne # perform operation
fmul.s f11, f7, f28, rtz # perform operation
fmul.s f11, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x16, 0x93d8f6c2868191cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f16, f2, f12, dyn # perform operation
fmul.s f16, f2, f12, rdn # perform operation
fmul.s f16, f2, f12, rmm # perform operation
fmul.s f16, f2, f12, rne # perform operation
fmul.s f16, f2, f12, rtz # perform operation
fmul.s f16, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x28, 0x556253ff7fc80599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f28, f27, f24, dyn # perform operation
fmul.s f28, f27, f24, rdn # perform operation
fmul.s f28, f27, f24, rmm # perform operation
fmul.s f28, f27, f24, rne # perform operation
fmul.s f28, f27, f24, rtz # perform operation
fmul.s f28, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x6, 0x4278f6b221975f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fmul.s f6, f14, f9, dyn # perform operation
fmul.s f6, f14, f9, rdn # perform operation
fmul.s f6, f14, f9, rmm # perform operation
fmul.s f6, f14, f9, rne # perform operation
fmul.s f6, f14, f9, rtz # perform operation
fmul.s f6, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x31, 0x8809a15d6d713404 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f31, f3, f11, dyn # perform operation
fmul.s f31, f3, f11, rdn # perform operation
fmul.s f31, f3, f11, rmm # perform operation
fmul.s f31, f3, f11, rne # perform operation
fmul.s f31, f3, f11, rtz # perform operation
fmul.s f31, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x23, 0xd13fef4a03df1342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmul.s f23, f7, f4, dyn # perform operation
fmul.s f23, f7, f4, rdn # perform operation
fmul.s f23, f7, f4, rmm # perform operation
fmul.s f23, f7, f4, rne # perform operation
fmul.s f23, f7, f4, rtz # perform operation
fmul.s f23, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x8, 0x4ad50e50beb5f411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f8, f28, f29, dyn # perform operation
fmul.s f8, f28, f29, rdn # perform operation
fmul.s f8, f28, f29, rmm # perform operation
fmul.s f8, f28, f29, rne # perform operation
fmul.s f8, f28, f29, rtz # perform operation
fmul.s f8, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x28, 0x343206268e138b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f28, f5, f27, dyn # perform operation
fmul.s f28, f5, f27, rdn # perform operation
fmul.s f28, f5, f27, rmm # perform operation
fmul.s f28, f5, f27, rne # perform operation
fmul.s f28, f5, f27, rtz # perform operation
fmul.s f28, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x26, 0x7dc37e8764d3dc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f26, f31, f7, dyn # perform operation
fmul.s f26, f31, f7, rdn # perform operation
fmul.s f26, f31, f7, rmm # perform operation
fmul.s f26, f31, f7, rne # perform operation
fmul.s f26, f31, f7, rtz # perform operation
fmul.s f26, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x26, 0x9834beb0f86a49ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f26, f27, f29, dyn # perform operation
fmul.s f26, f27, f29, rdn # perform operation
fmul.s f26, f27, f29, rmm # perform operation
fmul.s f26, f27, f29, rne # perform operation
fmul.s f26, f27, f29, rtz # perform operation
fmul.s f26, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x18, 0xfcd29786ab203f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f18, f7, f14, dyn # perform operation
fmul.s f18, f7, f14, rdn # perform operation
fmul.s f18, f7, f14, rmm # perform operation
fmul.s f18, f7, f14, rne # perform operation
fmul.s f18, f7, f14, rtz # perform operation
fmul.s f18, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x22, 0x1572a0db3ae5d03e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f22, f13, f28, dyn # perform operation
fmul.s f22, f13, f28, rdn # perform operation
fmul.s f22, f13, f28, rmm # perform operation
fmul.s f22, f13, f28, rne # perform operation
fmul.s f22, f13, f28, rtz # perform operation
fmul.s f22, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x23, 0xa1f3eca8c36580ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmul.s f23, f25, f10, dyn # perform operation
fmul.s f23, f25, f10, rdn # perform operation
fmul.s f23, f25, f10, rmm # perform operation
fmul.s f23, f25, f10, rne # perform operation
fmul.s f23, f25, f10, rtz # perform operation
fmul.s f23, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x9, 0x46898c4be9b9d701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f9, f14, f20, dyn # perform operation
fmul.s f9, f14, f20, rdn # perform operation
fmul.s f9, f14, f20, rmm # perform operation
fmul.s f9, f14, f20, rne # perform operation
fmul.s f9, f14, f20, rtz # perform operation
fmul.s f9, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x23, 0x6994f64fc5d33de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fmul.s f23, f1, f13, dyn # perform operation
fmul.s f23, f1, f13, rdn # perform operation
fmul.s f23, f1, f13, rmm # perform operation
fmul.s f23, f1, f13, rne # perform operation
fmul.s f23, f1, f13, rtz # perform operation
fmul.s f23, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x22, 0x6f53ff0495b4910d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fmul.s f22, f20, f10, dyn # perform operation
fmul.s f22, f20, f10, rdn # perform operation
fmul.s f22, f20, f10, rmm # perform operation
fmul.s f22, f20, f10, rne # perform operation
fmul.s f22, f20, f10, rtz # perform operation
fmul.s f22, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x11, 0xd9d616bbd0478ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f11, f9, f8, dyn # perform operation
fmul.s f11, f9, f8, rdn # perform operation
fmul.s f11, f9, f8, rmm # perform operation
fmul.s f11, f9, f8, rne # perform operation
fmul.s f11, f9, f8, rtz # perform operation
fmul.s f11, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x2, 0x058f2c6de686013e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fmul.s f2, f28, f22, dyn # perform operation
fmul.s f2, f28, f22, rdn # perform operation
fmul.s f2, f28, f22, rmm # perform operation
fmul.s f2, f28, f22, rne # perform operation
fmul.s f2, f28, f22, rtz # perform operation
fmul.s f2, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x27, 0x9874720b0cb3cbeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fmul.s f27, f25, f18, dyn # perform operation
fmul.s f27, f25, f18, rdn # perform operation
fmul.s f27, f25, f18, rmm # perform operation
fmul.s f27, f25, f18, rne # perform operation
fmul.s f27, f25, f18, rtz # perform operation
fmul.s f27, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x13, 0xf1f447cea24633e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fmul.s f13, f17, f26, dyn # perform operation
fmul.s f13, f17, f26, rdn # perform operation
fmul.s f13, f17, f26, rmm # perform operation
fmul.s f13, f17, f26, rne # perform operation
fmul.s f13, f17, f26, rtz # perform operation
fmul.s f13, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x4, 0xf6c9c269778b5c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmul.s f4, f12, f24, dyn # perform operation
fmul.s f4, f12, f24, rdn # perform operation
fmul.s f4, f12, f24, rmm # perform operation
fmul.s f4, f12, f24, rne # perform operation
fmul.s f4, f12, f24, rtz # perform operation
fmul.s f4, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x4, 0x4359c19bdcb1336f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fmul.s f4, f1, f19, dyn # perform operation
fmul.s f4, f1, f19, rdn # perform operation
fmul.s f4, f1, f19, rmm # perform operation
fmul.s f4, f1, f19, rne # perform operation
fmul.s f4, f1, f19, rtz # perform operation
fmul.s f4, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x21, 0x73168cb1d8c6351e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f21, f10, f19, dyn # perform operation
fmul.s f21, f10, f19, rdn # perform operation
fmul.s f21, f10, f19, rmm # perform operation
fmul.s f21, f10, f19, rne # perform operation
fmul.s f21, f10, f19, rtz # perform operation
fmul.s f21, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x16, 0xc8acc8a1e2075b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f16, f30, f6, dyn # perform operation
fmul.s f16, f30, f6, rdn # perform operation
fmul.s f16, f30, f6, rmm # perform operation
fmul.s f16, f30, f6, rne # perform operation
fmul.s f16, f30, f6, rtz # perform operation
fmul.s f16, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x21, 0x1caf87606fb7600d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fmul.s f21, f10, f3, dyn # perform operation
fmul.s f21, f10, f3, rdn # perform operation
fmul.s f21, f10, f3, rmm # perform operation
fmul.s f21, f10, f3, rne # perform operation
fmul.s f21, f10, f3, rtz # perform operation
fmul.s f21, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x16, 0x80380b947d314912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fmul.s f16, f15, f4, dyn # perform operation
fmul.s f16, f15, f4, rdn # perform operation
fmul.s f16, f15, f4, rmm # perform operation
fmul.s f16, f15, f4, rne # perform operation
fmul.s f16, f15, f4, rtz # perform operation
fmul.s f16, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x2, 0x230a1d1bf3727e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fmul.s f2, f4, f20, dyn # perform operation
fmul.s f2, f4, f20, rdn # perform operation
fmul.s f2, f4, f20, rmm # perform operation
fmul.s f2, f4, f20, rne # perform operation
fmul.s f2, f4, f20, rtz # perform operation
fmul.s f2, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x4, 0x42ac2831d637090b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmul.s f4, f3, f6, dyn # perform operation
fmul.s f4, f3, f6, rdn # perform operation
fmul.s f4, f3, f6, rmm # perform operation
fmul.s f4, f3, f6, rne # perform operation
fmul.s f4, f3, f6, rtz # perform operation
fmul.s f4, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x19, 0x7f5f97ec34d4caa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fmul.s f19, f2, f27, dyn # perform operation
fmul.s f19, f2, f27, rdn # perform operation
fmul.s f19, f2, f27, rmm # perform operation
fmul.s f19, f2, f27, rne # perform operation
fmul.s f19, f2, f27, rtz # perform operation
fmul.s f19, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x29, 0xf6aad51f5e29c341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmul.s f29, f10, f20, dyn # perform operation
fmul.s f29, f10, f20, rdn # perform operation
fmul.s f29, f10, f20, rmm # perform operation
fmul.s f29, f10, f20, rne # perform operation
fmul.s f29, f10, f20, rtz # perform operation
fmul.s f29, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x10, 0x8d1ce1ca04b5ba7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f10, f9, f5, dyn # perform operation
fmul.s f10, f9, f5, rdn # perform operation
fmul.s f10, f9, f5, rmm # perform operation
fmul.s f10, f9, f5, rne # perform operation
fmul.s f10, f9, f5, rtz # perform operation
fmul.s f10, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x16, 0x35244e933d416377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmul.s f16, f20, f27, dyn # perform operation
fmul.s f16, f20, f27, rdn # perform operation
fmul.s f16, f20, f27, rmm # perform operation
fmul.s f16, f20, f27, rne # perform operation
fmul.s f16, f20, f27, rtz # perform operation
fmul.s f16, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x9, 0x1eab59ff8db93c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmul.s f9, f17, f13, dyn # perform operation
fmul.s f9, f17, f13, rdn # perform operation
fmul.s f9, f17, f13, rmm # perform operation
fmul.s f9, f17, f13, rne # perform operation
fmul.s f9, f17, f13, rtz # perform operation
fmul.s f9, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x2, 0x8580b61f80d23bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fmul.s f2, f9, f6, dyn # perform operation
fmul.s f2, f9, f6, rdn # perform operation
fmul.s f2, f9, f6, rmm # perform operation
fmul.s f2, f9, f6, rne # perform operation
fmul.s f2, f9, f6, rtz # perform operation
fmul.s f2, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x27, 0x1810b72e1bae41e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fmul.s f27, f22, f1, dyn # perform operation
fmul.s f27, f22, f1, rdn # perform operation
fmul.s f27, f22, f1, rmm # perform operation
fmul.s f27, f22, f1, rne # perform operation
fmul.s f27, f22, f1, rtz # perform operation
fmul.s f27, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x27, 0x03f3357368455c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f27, f18, f3, dyn # perform operation
fmul.s f27, f18, f3, rdn # perform operation
fmul.s f27, f18, f3, rmm # perform operation
fmul.s f27, f18, f3, rne # perform operation
fmul.s f27, f18, f3, rtz # perform operation
fmul.s f27, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x23, 0xabf01b13cf807462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fmul.s f23, f30, f22, dyn # perform operation
fmul.s f23, f30, f22, rdn # perform operation
fmul.s f23, f30, f22, rmm # perform operation
fmul.s f23, f30, f22, rne # perform operation
fmul.s f23, f30, f22, rtz # perform operation
fmul.s f23, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x11, 0x1c934c4494aba939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fmul.s f11, f23, f26, dyn # perform operation
fmul.s f11, f23, f26, rdn # perform operation
fmul.s f11, f23, f26, rmm # perform operation
fmul.s f11, f23, f26, rne # perform operation
fmul.s f11, f23, f26, rtz # perform operation
fmul.s f11, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x10, 0x27b92a9f9a570f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fmul.s f10, f26, f22, dyn # perform operation
fmul.s f10, f26, f22, rdn # perform operation
fmul.s f10, f26, f22, rmm # perform operation
fmul.s f10, f26, f22, rne # perform operation
fmul.s f10, f26, f22, rtz # perform operation
fmul.s f10, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x10, 0x21d4b3fc8f0bf03e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fmul.s f10, f25, f6, dyn # perform operation
fmul.s f10, f25, f6, rdn # perform operation
fmul.s f10, f25, f6, rmm # perform operation
fmul.s f10, f25, f6, rne # perform operation
fmul.s f10, f25, f6, rtz # perform operation
fmul.s f10, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x26, 0x5200f4863022ee76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f26, f5, f31, dyn # perform operation
fmul.s f26, f5, f31, rdn # perform operation
fmul.s f26, f5, f31, rmm # perform operation
fmul.s f26, f5, f31, rne # perform operation
fmul.s f26, f5, f31, rtz # perform operation
fmul.s f26, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x1, 0x17846ecf1ed42498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f1, f29, f28, dyn # perform operation
fmul.s f1, f29, f28, rdn # perform operation
fmul.s f1, f29, f28, rmm # perform operation
fmul.s f1, f29, f28, rne # perform operation
fmul.s f1, f29, f28, rtz # perform operation
fmul.s f1, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x20, 0xf7da94bc31448b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmul.s f20, f25, f13, dyn # perform operation
fmul.s f20, f25, f13, rdn # perform operation
fmul.s f20, f25, f13, rmm # perform operation
fmul.s f20, f25, f13, rne # perform operation
fmul.s f20, f25, f13, rtz # perform operation
fmul.s f20, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x21, 0x416c77110d7fae6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fmul.s f21, f6, f17, dyn # perform operation
fmul.s f21, f6, f17, rdn # perform operation
fmul.s f21, f6, f17, rmm # perform operation
fmul.s f21, f6, f17, rne # perform operation
fmul.s f21, f6, f17, rtz # perform operation
fmul.s f21, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x24, 0x0c5204531bbd0b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fmul.s f24, f31, f2, dyn # perform operation
fmul.s f24, f31, f2, rdn # perform operation
fmul.s f24, f31, f2, rmm # perform operation
fmul.s f24, f31, f2, rne # perform operation
fmul.s f24, f31, f2, rtz # perform operation
fmul.s f24, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x13, 0x9485cb859aa9afbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f13, f12, f1, dyn # perform operation
fmul.s f13, f12, f1, rdn # perform operation
fmul.s f13, f12, f1, rmm # perform operation
fmul.s f13, f12, f1, rne # perform operation
fmul.s f13, f12, f1, rtz # perform operation
fmul.s f13, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x2, 0x843e62d7aab4a25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f2, f6, f5, dyn # perform operation
fmul.s f2, f6, f5, rdn # perform operation
fmul.s f2, f6, f5, rmm # perform operation
fmul.s f2, f6, f5, rne # perform operation
fmul.s f2, f6, f5, rtz # perform operation
fmul.s f2, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x20, 0x692977049c550fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fmul.s f20, f27, f4, dyn # perform operation
fmul.s f20, f27, f4, rdn # perform operation
fmul.s f20, f27, f4, rmm # perform operation
fmul.s f20, f27, f4, rne # perform operation
fmul.s f20, f27, f4, rtz # perform operation
fmul.s f20, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x8, 0x7238518642a93527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f8, f2, f31, dyn # perform operation
fmul.s f8, f2, f31, rdn # perform operation
fmul.s f8, f2, f31, rmm # perform operation
fmul.s f8, f2, f31, rne # perform operation
fmul.s f8, f2, f31, rtz # perform operation
fmul.s f8, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x31, 0xbb8c998f72358235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f31, f8, f20, dyn # perform operation
fmul.s f31, f8, f20, rdn # perform operation
fmul.s f31, f8, f20, rmm # perform operation
fmul.s f31, f8, f20, rne # perform operation
fmul.s f31, f8, f20, rtz # perform operation
fmul.s f31, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x2, 0xd6a3936b7c50cff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmul.s f2, f23, f29, dyn # perform operation
fmul.s f2, f23, f29, rdn # perform operation
fmul.s f2, f23, f29, rmm # perform operation
fmul.s f2, f23, f29, rne # perform operation
fmul.s f2, f23, f29, rtz # perform operation
fmul.s f2, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x2, 0xe740904a5632d0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fmul.s f2, f9, f31, dyn # perform operation
fmul.s f2, f9, f31, rdn # perform operation
fmul.s f2, f9, f31, rmm # perform operation
fmul.s f2, f9, f31, rne # perform operation
fmul.s f2, f9, f31, rtz # perform operation
fmul.s f2, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x16, 0xa707431b77cc075b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fmul.s f16, f13, f3, dyn # perform operation
fmul.s f16, f13, f3, rdn # perform operation
fmul.s f16, f13, f3, rmm # perform operation
fmul.s f16, f13, f3, rne # perform operation
fmul.s f16, f13, f3, rtz # perform operation
fmul.s f16, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x22, 0x800863215d54d399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmul.s f22, f9, f21, dyn # perform operation
fmul.s f22, f9, f21, rdn # perform operation
fmul.s f22, f9, f21, rmm # perform operation
fmul.s f22, f9, f21, rne # perform operation
fmul.s f22, f9, f21, rtz # perform operation
fmul.s f22, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x18, 0xcf8828ca950a3ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fmul.s f18, f5, f30, dyn # perform operation
fmul.s f18, f5, f30, rdn # perform operation
fmul.s f18, f5, f30, rmm # perform operation
fmul.s f18, f5, f30, rne # perform operation
fmul.s f18, f5, f30, rtz # perform operation
fmul.s f18, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x20, 0xcfa7dd141a43f0f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmul.s f20, f9, f31, dyn # perform operation
fmul.s f20, f9, f31, rdn # perform operation
fmul.s f20, f9, f31, rmm # perform operation
fmul.s f20, f9, f31, rne # perform operation
fmul.s f20, f9, f31, rtz # perform operation
fmul.s f20, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x27, 0x866e79a05b223003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f27, f13, f3, dyn # perform operation
fmul.s f27, f13, f3, rdn # perform operation
fmul.s f27, f13, f3, rmm # perform operation
fmul.s f27, f13, f3, rne # perform operation
fmul.s f27, f13, f3, rtz # perform operation
fmul.s f27, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x15, 0x2cc2d68a77678e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fmul.s f15, f20, f5, dyn # perform operation
fmul.s f15, f20, f5, rdn # perform operation
fmul.s f15, f20, f5, rmm # perform operation
fmul.s f15, f20, f5, rne # perform operation
fmul.s f15, f20, f5, rtz # perform operation
fmul.s f15, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x6, 0xe72676502ff3a4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f6, f12, f10, dyn # perform operation
fmul.s f6, f12, f10, rdn # perform operation
fmul.s f6, f12, f10, rmm # perform operation
fmul.s f6, f12, f10, rne # perform operation
fmul.s f6, f12, f10, rtz # perform operation
fmul.s f6, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x6, 0x20e40f63b2a6fd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fmul.s f6, f3, f10, dyn # perform operation
fmul.s f6, f3, f10, rdn # perform operation
fmul.s f6, f3, f10, rmm # perform operation
fmul.s f6, f3, f10, rne # perform operation
fmul.s f6, f3, f10, rtz # perform operation
fmul.s f6, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x29, 0xa69bdbba0b5cd3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fmul.s f29, f10, f9, dyn # perform operation
fmul.s f29, f10, f9, rdn # perform operation
fmul.s f29, f10, f9, rmm # perform operation
fmul.s f29, f10, f9, rne # perform operation
fmul.s f29, f10, f9, rtz # perform operation
fmul.s f29, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x11, 0x903378755045a915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fmul.s f11, f25, f28, dyn # perform operation
fmul.s f11, f25, f28, rdn # perform operation
fmul.s f11, f25, f28, rmm # perform operation
fmul.s f11, f25, f28, rne # perform operation
fmul.s f11, f25, f28, rtz # perform operation
fmul.s f11, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x12, 0x4054cac9bb116553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmul.s f12, f1, f18, dyn # perform operation
fmul.s f12, f1, f18, rdn # perform operation
fmul.s f12, f1, f18, rmm # perform operation
fmul.s f12, f1, f18, rne # perform operation
fmul.s f12, f1, f18, rtz # perform operation
fmul.s f12, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x11, 0x0c2fa7565520b630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmul.s f11, f18, f22, dyn # perform operation
fmul.s f11, f18, f22, rdn # perform operation
fmul.s f11, f18, f22, rmm # perform operation
fmul.s f11, f18, f22, rne # perform operation
fmul.s f11, f18, f22, rtz # perform operation
fmul.s f11, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x16, 0x3d6088923e70a0ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fmul.s f16, f25, f1, dyn # perform operation
fmul.s f16, f25, f1, rdn # perform operation
fmul.s f16, f25, f1, rmm # perform operation
fmul.s f16, f25, f1, rne # perform operation
fmul.s f16, f25, f1, rtz # perform operation
fmul.s f16, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x24, 0x97ca98649ff009af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f24, f17, f14, dyn # perform operation
fmul.s f24, f17, f14, rdn # perform operation
fmul.s f24, f17, f14, rmm # perform operation
fmul.s f24, f17, f14, rne # perform operation
fmul.s f24, f17, f14, rtz # perform operation
fmul.s f24, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x7, 0xe3cc211cad4bcc91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f7, f29, f31, dyn # perform operation
fmul.s f7, f29, f31, rdn # perform operation
fmul.s f7, f29, f31, rmm # perform operation
fmul.s f7, f29, f31, rne # perform operation
fmul.s f7, f29, f31, rtz # perform operation
fmul.s f7, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x4, 0x9d84d469525a6e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fmul.s f4, f1, f10, dyn # perform operation
fmul.s f4, f1, f10, rdn # perform operation
fmul.s f4, f1, f10, rmm # perform operation
fmul.s f4, f1, f10, rne # perform operation
fmul.s f4, f1, f10, rtz # perform operation
fmul.s f4, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x30, 0xc92e9fc1e4d18689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fmul.s f30, f10, f23, dyn # perform operation
fmul.s f30, f10, f23, rdn # perform operation
fmul.s f30, f10, f23, rmm # perform operation
fmul.s f30, f10, f23, rne # perform operation
fmul.s f30, f10, f23, rtz # perform operation
fmul.s f30, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x20, 0x1a4df37119ce86db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f20, f22, f31, dyn # perform operation
fmul.s f20, f22, f31, rdn # perform operation
fmul.s f20, f22, f31, rmm # perform operation
fmul.s f20, f22, f31, rne # perform operation
fmul.s f20, f22, f31, rtz # perform operation
fmul.s f20, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x23, 0x935e91cf838239d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fmul.s f23, f19, f8, dyn # perform operation
fmul.s f23, f19, f8, rdn # perform operation
fmul.s f23, f19, f8, rmm # perform operation
fmul.s f23, f19, f8, rne # perform operation
fmul.s f23, f19, f8, rtz # perform operation
fmul.s f23, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x18, 0xcb97f83519e7b4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f18, f26, f7, dyn # perform operation
fmul.s f18, f26, f7, rdn # perform operation
fmul.s f18, f26, f7, rmm # perform operation
fmul.s f18, f26, f7, rne # perform operation
fmul.s f18, f26, f7, rtz # perform operation
fmul.s f18, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x7, 0x632abdf7505a9065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fmul.s f7, f5, f16, dyn # perform operation
fmul.s f7, f5, f16, rdn # perform operation
fmul.s f7, f5, f16, rmm # perform operation
fmul.s f7, f5, f16, rne # perform operation
fmul.s f7, f5, f16, rtz # perform operation
fmul.s f7, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x7, 0xb01f3e03b27b4dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fmul.s f7, f25, f16, dyn # perform operation
fmul.s f7, f25, f16, rdn # perform operation
fmul.s f7, f25, f16, rmm # perform operation
fmul.s f7, f25, f16, rne # perform operation
fmul.s f7, f25, f16, rtz # perform operation
fmul.s f7, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x12, 0x3ee9c5760045422d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f12, f4, f8, dyn # perform operation
fmul.s f12, f4, f8, rdn # perform operation
fmul.s f12, f4, f8, rmm # perform operation
fmul.s f12, f4, f8, rne # perform operation
fmul.s f12, f4, f8, rtz # perform operation
fmul.s f12, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x14, 0xae72ba4a0d8e31b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f14, f1, f6, dyn # perform operation
fmul.s f14, f1, f6, rdn # perform operation
fmul.s f14, f1, f6, rmm # perform operation
fmul.s f14, f1, f6, rne # perform operation
fmul.s f14, f1, f6, rtz # perform operation
fmul.s f14, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x22, 0xe2f05893ac3d948a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fmul.s f22, f14, f23, dyn # perform operation
fmul.s f22, f14, f23, rdn # perform operation
fmul.s f22, f14, f23, rmm # perform operation
fmul.s f22, f14, f23, rne # perform operation
fmul.s f22, f14, f23, rtz # perform operation
fmul.s f22, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x12, 0xf4ccdc4b6f36382d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmul.s f12, f27, f23, dyn # perform operation
fmul.s f12, f27, f23, rdn # perform operation
fmul.s f12, f27, f23, rmm # perform operation
fmul.s f12, f27, f23, rne # perform operation
fmul.s f12, f27, f23, rtz # perform operation
fmul.s f12, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x10, 0x2200fbc29b68d8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fmul.s f10, f19, f11, dyn # perform operation
fmul.s f10, f19, f11, rdn # perform operation
fmul.s f10, f19, f11, rmm # perform operation
fmul.s f10, f19, f11, rne # perform operation
fmul.s f10, f19, f11, rtz # perform operation
fmul.s f10, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x16, 0x7a437bc3d6a4ce5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f16, f7, f2, dyn # perform operation
fmul.s f16, f7, f2, rdn # perform operation
fmul.s f16, f7, f2, rmm # perform operation
fmul.s f16, f7, f2, rne # perform operation
fmul.s f16, f7, f2, rtz # perform operation
fmul.s f16, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x10, 0xe14aa445a40deb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fmul.s f10, f21, f28, dyn # perform operation
fmul.s f10, f21, f28, rdn # perform operation
fmul.s f10, f21, f28, rmm # perform operation
fmul.s f10, f21, f28, rne # perform operation
fmul.s f10, f21, f28, rtz # perform operation
fmul.s f10, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x28, 0x6ad011f5c2211c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f28, f11, f6, dyn # perform operation
fmul.s f28, f11, f6, rdn # perform operation
fmul.s f28, f11, f6, rmm # perform operation
fmul.s f28, f11, f6, rne # perform operation
fmul.s f28, f11, f6, rtz # perform operation
fmul.s f28, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x3, 0x7210673f917f838d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fmul.s f3, f28, f17, dyn # perform operation
fmul.s f3, f28, f17, rdn # perform operation
fmul.s f3, f28, f17, rmm # perform operation
fmul.s f3, f28, f17, rne # perform operation
fmul.s f3, f28, f17, rtz # perform operation
fmul.s f3, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x31, 0xaf4e7fdb5c81fb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f31, f10, f29, dyn # perform operation
fmul.s f31, f10, f29, rdn # perform operation
fmul.s f31, f10, f29, rmm # perform operation
fmul.s f31, f10, f29, rne # perform operation
fmul.s f31, f10, f29, rtz # perform operation
fmul.s f31, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x10, 0x8ef533df0de63512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmul.s f10, f11, f5, dyn # perform operation
fmul.s f10, f11, f5, rdn # perform operation
fmul.s f10, f11, f5, rmm # perform operation
fmul.s f10, f11, f5, rne # perform operation
fmul.s f10, f11, f5, rtz # perform operation
fmul.s f10, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x28, 0x909f00b689228e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fmul.s f28, f29, f31, dyn # perform operation
fmul.s f28, f29, f31, rdn # perform operation
fmul.s f28, f29, f31, rmm # perform operation
fmul.s f28, f29, f31, rne # perform operation
fmul.s f28, f29, f31, rtz # perform operation
fmul.s f28, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x9, 0xb7234a0dd79b5d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f9, f4, f16, dyn # perform operation
fmul.s f9, f4, f16, rdn # perform operation
fmul.s f9, f4, f16, rmm # perform operation
fmul.s f9, f4, f16, rne # perform operation
fmul.s f9, f4, f16, rtz # perform operation
fmul.s f9, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x25, 0xd11446dedf6cdcd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f25, f31, f17, dyn # perform operation
fmul.s f25, f31, f17, rdn # perform operation
fmul.s f25, f31, f17, rmm # perform operation
fmul.s f25, f31, f17, rne # perform operation
fmul.s f25, f31, f17, rtz # perform operation
fmul.s f25, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x17, 0xec168e3d6013d39c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fmul.s f17, f14, f15, dyn # perform operation
fmul.s f17, f14, f15, rdn # perform operation
fmul.s f17, f14, f15, rmm # perform operation
fmul.s f17, f14, f15, rne # perform operation
fmul.s f17, f14, f15, rtz # perform operation
fmul.s f17, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x7, 0x26112fa4fa8fdbb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fmul.s f7, f12, f27, dyn # perform operation
fmul.s f7, f12, f27, rdn # perform operation
fmul.s f7, f12, f27, rmm # perform operation
fmul.s f7, f12, f27, rne # perform operation
fmul.s f7, f12, f27, rtz # perform operation
fmul.s f7, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x6, 0xf6891cecf698efa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fmul.s f6, f11, f4, dyn # perform operation
fmul.s f6, f11, f4, rdn # perform operation
fmul.s f6, f11, f4, rmm # perform operation
fmul.s f6, f11, f4, rne # perform operation
fmul.s f6, f11, f4, rtz # perform operation
fmul.s f6, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x15, 0x9adc0f58ebcfb792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f15, f29, f9, dyn # perform operation
fmul.s f15, f29, f9, rdn # perform operation
fmul.s f15, f29, f9, rmm # perform operation
fmul.s f15, f29, f9, rne # perform operation
fmul.s f15, f29, f9, rtz # perform operation
fmul.s f15, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x13, 0x214197773fdae6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fmul.s f13, f18, f28, dyn # perform operation
fmul.s f13, f18, f28, rdn # perform operation
fmul.s f13, f18, f28, rmm # perform operation
fmul.s f13, f18, f28, rne # perform operation
fmul.s f13, f18, f28, rtz # perform operation
fmul.s f13, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x25, 0x71acfd0e4efb8647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmul.s f25, f8, f23, dyn # perform operation
fmul.s f25, f8, f23, rdn # perform operation
fmul.s f25, f8, f23, rmm # perform operation
fmul.s f25, f8, f23, rne # perform operation
fmul.s f25, f8, f23, rtz # perform operation
fmul.s f25, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x28, 0x3a3a8d4434d15d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fmul.s f28, f27, f31, dyn # perform operation
fmul.s f28, f27, f31, rdn # perform operation
fmul.s f28, f27, f31, rmm # perform operation
fmul.s f28, f27, f31, rne # perform operation
fmul.s f28, f27, f31, rtz # perform operation
fmul.s f28, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x4, 0x506b13843ea3a3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fmul.s f4, f12, f18, dyn # perform operation
fmul.s f4, f12, f18, rdn # perform operation
fmul.s f4, f12, f18, rmm # perform operation
fmul.s f4, f12, f18, rne # perform operation
fmul.s f4, f12, f18, rtz # perform operation
fmul.s f4, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x30, 0x75e3c1d789b9ad23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fmul.s f30, f20, f19, dyn # perform operation
fmul.s f30, f20, f19, rdn # perform operation
fmul.s f30, f20, f19, rmm # perform operation
fmul.s f30, f20, f19, rne # perform operation
fmul.s f30, f20, f19, rtz # perform operation
fmul.s f30, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x22, 0xc28c65ad2dc71e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f22, f10, f16, dyn # perform operation
fmul.s f22, f10, f16, rdn # perform operation
fmul.s f22, f10, f16, rmm # perform operation
fmul.s f22, f10, f16, rne # perform operation
fmul.s f22, f10, f16, rtz # perform operation
fmul.s f22, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x18, 0xaf1c529606d89353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fmul.s f18, f21, f9, dyn # perform operation
fmul.s f18, f21, f9, rdn # perform operation
fmul.s f18, f21, f9, rmm # perform operation
fmul.s f18, f21, f9, rne # perform operation
fmul.s f18, f21, f9, rtz # perform operation
fmul.s f18, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x14, 0x547a2250fcc5fd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f14, f4, f27, dyn # perform operation
fmul.s f14, f4, f27, rdn # perform operation
fmul.s f14, f4, f27, rmm # perform operation
fmul.s f14, f4, f27, rne # perform operation
fmul.s f14, f4, f27, rtz # perform operation
fmul.s f14, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x9, 0x27c0124943bae404 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f9, f23, f22, dyn # perform operation
fmul.s f9, f23, f22, rdn # perform operation
fmul.s f9, f23, f22, rmm # perform operation
fmul.s f9, f23, f22, rne # perform operation
fmul.s f9, f23, f22, rtz # perform operation
fmul.s f9, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x28, 0x44108ac422947515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f28, f18, f20, dyn # perform operation
fmul.s f28, f18, f20, rdn # perform operation
fmul.s f28, f18, f20, rmm # perform operation
fmul.s f28, f18, f20, rne # perform operation
fmul.s f28, f18, f20, rtz # perform operation
fmul.s f28, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x30, 0x67414578617315d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fmul.s f30, f15, f6, dyn # perform operation
fmul.s f30, f15, f6, rdn # perform operation
fmul.s f30, f15, f6, rmm # perform operation
fmul.s f30, f15, f6, rne # perform operation
fmul.s f30, f15, f6, rtz # perform operation
fmul.s f30, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x21, 0x054fbe7f32d60e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmul.s f21, f17, f7, dyn # perform operation
fmul.s f21, f17, f7, rdn # perform operation
fmul.s f21, f17, f7, rmm # perform operation
fmul.s f21, f17, f7, rne # perform operation
fmul.s f21, f17, f7, rtz # perform operation
fmul.s f21, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x9, 0x1afa129ba44e27d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f9, f23, f25, dyn # perform operation
fmul.s f9, f23, f25, rdn # perform operation
fmul.s f9, f23, f25, rmm # perform operation
fmul.s f9, f23, f25, rne # perform operation
fmul.s f9, f23, f25, rtz # perform operation
fmul.s f9, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x30, 0x77791016cad66d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmul.s f30, f9, f31, dyn # perform operation
fmul.s f30, f9, f31, rdn # perform operation
fmul.s f30, f9, f31, rmm # perform operation
fmul.s f30, f9, f31, rne # perform operation
fmul.s f30, f9, f31, rtz # perform operation
fmul.s f30, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x10, 0xab163cdab8d40f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fmul.s f10, f25, f1, dyn # perform operation
fmul.s f10, f25, f1, rdn # perform operation
fmul.s f10, f25, f1, rmm # perform operation
fmul.s f10, f25, f1, rne # perform operation
fmul.s f10, f25, f1, rtz # perform operation
fmul.s f10, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x11, 0x3c8ca663e0a8e7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f11, f9, f27, dyn # perform operation
fmul.s f11, f9, f27, rdn # perform operation
fmul.s f11, f9, f27, rmm # perform operation
fmul.s f11, f9, f27, rne # perform operation
fmul.s f11, f9, f27, rtz # perform operation
fmul.s f11, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x13, 0x33342905c0026c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f13, f25, f5, dyn # perform operation
fmul.s f13, f25, f5, rdn # perform operation
fmul.s f13, f25, f5, rmm # perform operation
fmul.s f13, f25, f5, rne # perform operation
fmul.s f13, f25, f5, rtz # perform operation
fmul.s f13, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x3, 0xb5f633ca0d22d01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f3, f8, f13, dyn # perform operation
fmul.s f3, f8, f13, rdn # perform operation
fmul.s f3, f8, f13, rmm # perform operation
fmul.s f3, f8, f13, rne # perform operation
fmul.s f3, f8, f13, rtz # perform operation
fmul.s f3, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x19, 0x03a49fd65b543905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fmul.s f19, f18, f7, dyn # perform operation
fmul.s f19, f18, f7, rdn # perform operation
fmul.s f19, f18, f7, rmm # perform operation
fmul.s f19, f18, f7, rne # perform operation
fmul.s f19, f18, f7, rtz # perform operation
fmul.s f19, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x31, 0x2a4ff7a52636b8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f31, f22, f7, dyn # perform operation
fmul.s f31, f22, f7, rdn # perform operation
fmul.s f31, f22, f7, rmm # perform operation
fmul.s f31, f22, f7, rne # perform operation
fmul.s f31, f22, f7, rtz # perform operation
fmul.s f31, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x6, 0x78af722d0669cb16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fmul.s f6, f10, f26, dyn # perform operation
fmul.s f6, f10, f26, rdn # perform operation
fmul.s f6, f10, f26, rmm # perform operation
fmul.s f6, f10, f26, rne # perform operation
fmul.s f6, f10, f26, rtz # perform operation
fmul.s f6, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x19, 0x46d47cef8fe513dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f19, f2, f23, dyn # perform operation
fmul.s f19, f2, f23, rdn # perform operation
fmul.s f19, f2, f23, rmm # perform operation
fmul.s f19, f2, f23, rne # perform operation
fmul.s f19, f2, f23, rtz # perform operation
fmul.s f19, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x25, 0x4e04fa45263202c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fmul.s f25, f12, f4, dyn # perform operation
fmul.s f25, f12, f4, rdn # perform operation
fmul.s f25, f12, f4, rmm # perform operation
fmul.s f25, f12, f4, rne # perform operation
fmul.s f25, f12, f4, rtz # perform operation
fmul.s f25, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x28, 0x7c7a486e2508615f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fmul.s f28, f12, f23, dyn # perform operation
fmul.s f28, f12, f23, rdn # perform operation
fmul.s f28, f12, f23, rmm # perform operation
fmul.s f28, f12, f23, rne # perform operation
fmul.s f28, f12, f23, rtz # perform operation
fmul.s f28, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x15, 0xd33eb8a5c2f62bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmul.s f15, f13, f10, dyn # perform operation
fmul.s f15, f13, f10, rdn # perform operation
fmul.s f15, f13, f10, rmm # perform operation
fmul.s f15, f13, f10, rne # perform operation
fmul.s f15, f13, f10, rtz # perform operation
fmul.s f15, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x18, 0x1c77a0e03ad72729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fmul.s f18, f31, f13, dyn # perform operation
fmul.s f18, f31, f13, rdn # perform operation
fmul.s f18, f31, f13, rmm # perform operation
fmul.s f18, f31, f13, rne # perform operation
fmul.s f18, f31, f13, rtz # perform operation
fmul.s f18, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x4, 0xc5d14a6f31c7f6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f4, f22, f31, dyn # perform operation
fmul.s f4, f22, f31, rdn # perform operation
fmul.s f4, f22, f31, rmm # perform operation
fmul.s f4, f22, f31, rne # perform operation
fmul.s f4, f22, f31, rtz # perform operation
fmul.s f4, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x22, 0x0c904c83ae5b3ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmul.s f22, f12, f2, dyn # perform operation
fmul.s f22, f12, f2, rdn # perform operation
fmul.s f22, f12, f2, rmm # perform operation
fmul.s f22, f12, f2, rne # perform operation
fmul.s f22, f12, f2, rtz # perform operation
fmul.s f22, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x12, 0xc029ab3aaeae64de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f12, f5, f11, dyn # perform operation
fmul.s f12, f5, f11, rdn # perform operation
fmul.s f12, f5, f11, rmm # perform operation
fmul.s f12, f5, f11, rne # perform operation
fmul.s f12, f5, f11, rtz # perform operation
fmul.s f12, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x20, 0xfcb543960fd0b1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f20, f13, f15, dyn # perform operation
fmul.s f20, f13, f15, rdn # perform operation
fmul.s f20, f13, f15, rmm # perform operation
fmul.s f20, f13, f15, rne # perform operation
fmul.s f20, f13, f15, rtz # perform operation
fmul.s f20, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x3, 0xf9056ff8d9cd09e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmul.s f3, f5, f6, dyn # perform operation
fmul.s f3, f5, f6, rdn # perform operation
fmul.s f3, f5, f6, rmm # perform operation
fmul.s f3, f5, f6, rne # perform operation
fmul.s f3, f5, f6, rtz # perform operation
fmul.s f3, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x19, 0xe7c4a6462de4ef5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fmul.s f19, f18, f2, dyn # perform operation
fmul.s f19, f18, f2, rdn # perform operation
fmul.s f19, f18, f2, rmm # perform operation
fmul.s f19, f18, f2, rne # perform operation
fmul.s f19, f18, f2, rtz # perform operation
fmul.s f19, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x23, 0x00203adf8a4d1285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fmul.s f23, f27, f1, dyn # perform operation
fmul.s f23, f27, f1, rdn # perform operation
fmul.s f23, f27, f1, rmm # perform operation
fmul.s f23, f27, f1, rne # perform operation
fmul.s f23, f27, f1, rtz # perform operation
fmul.s f23, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x7, 0xd4bc14978a7322b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fmul.s f7, f1, f28, dyn # perform operation
fmul.s f7, f1, f28, rdn # perform operation
fmul.s f7, f1, f28, rmm # perform operation
fmul.s f7, f1, f28, rne # perform operation
fmul.s f7, f1, f28, rtz # perform operation
fmul.s f7, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x14, 0x7c73501bdb57d031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fmul.s f14, f16, f27, dyn # perform operation
fmul.s f14, f16, f27, rdn # perform operation
fmul.s f14, f16, f27, rmm # perform operation
fmul.s f14, f16, f27, rne # perform operation
fmul.s f14, f16, f27, rtz # perform operation
fmul.s f14, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x16, 0x3c9b8d4607b08f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f16, f1, f12, dyn # perform operation
fmul.s f16, f1, f12, rdn # perform operation
fmul.s f16, f1, f12, rmm # perform operation
fmul.s f16, f1, f12, rne # perform operation
fmul.s f16, f1, f12, rtz # perform operation
fmul.s f16, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x21, 0x6cfd250e89526ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fmul.s f21, f10, f8, dyn # perform operation
fmul.s f21, f10, f8, rdn # perform operation
fmul.s f21, f10, f8, rmm # perform operation
fmul.s f21, f10, f8, rne # perform operation
fmul.s f21, f10, f8, rtz # perform operation
fmul.s f21, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x13, 0x7808c4720e9e9673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fmul.s f13, f12, f24, dyn # perform operation
fmul.s f13, f12, f24, rdn # perform operation
fmul.s f13, f12, f24, rmm # perform operation
fmul.s f13, f12, f24, rne # perform operation
fmul.s f13, f12, f24, rtz # perform operation
fmul.s f13, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x7, 0xa0d636afa401f4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmul.s f7, f24, f28, dyn # perform operation
fmul.s f7, f24, f28, rdn # perform operation
fmul.s f7, f24, f28, rmm # perform operation
fmul.s f7, f24, f28, rne # perform operation
fmul.s f7, f24, f28, rtz # perform operation
fmul.s f7, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x7, 0x2c25d2068ce4d2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f7, f27, f12, dyn # perform operation
fmul.s f7, f27, f12, rdn # perform operation
fmul.s f7, f27, f12, rmm # perform operation
fmul.s f7, f27, f12, rne # perform operation
fmul.s f7, f27, f12, rtz # perform operation
fmul.s f7, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x2, 0x7c87ae66efb35e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fmul.s f2, f28, f26, dyn # perform operation
fmul.s f2, f28, f26, rdn # perform operation
fmul.s f2, f28, f26, rmm # perform operation
fmul.s f2, f28, f26, rne # perform operation
fmul.s f2, f28, f26, rtz # perform operation
fmul.s f2, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x9, 0xa317f5b09d1542dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fmul.s f9, f29, f10, dyn # perform operation
fmul.s f9, f29, f10, rdn # perform operation
fmul.s f9, f29, f10, rmm # perform operation
fmul.s f9, f29, f10, rne # perform operation
fmul.s f9, f29, f10, rtz # perform operation
fmul.s f9, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x20, 0x43f7425ee53b72ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fmul.s f20, f30, f10, dyn # perform operation
fmul.s f20, f30, f10, rdn # perform operation
fmul.s f20, f30, f10, rmm # perform operation
fmul.s f20, f30, f10, rne # perform operation
fmul.s f20, f30, f10, rtz # perform operation
fmul.s f20, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x5, 0x0a470eec558a6800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fmul.s f5, f15, f6, dyn # perform operation
fmul.s f5, f15, f6, rdn # perform operation
fmul.s f5, f15, f6, rmm # perform operation
fmul.s f5, f15, f6, rne # perform operation
fmul.s f5, f15, f6, rtz # perform operation
fmul.s f5, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x30, 0x8e403a02b6a6dc4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f30, f8, f29, dyn # perform operation
fmul.s f30, f8, f29, rdn # perform operation
fmul.s f30, f8, f29, rmm # perform operation
fmul.s f30, f8, f29, rne # perform operation
fmul.s f30, f8, f29, rtz # perform operation
fmul.s f30, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x3, 0x4ea9a6aea428ab0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f3, f4, f2, dyn # perform operation
fmul.s f3, f4, f2, rdn # perform operation
fmul.s f3, f4, f2, rmm # perform operation
fmul.s f3, f4, f2, rne # perform operation
fmul.s f3, f4, f2, rtz # perform operation
fmul.s f3, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x7, 0x1a4eeb8b6fb480bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmul.s f7, f30, f10, dyn # perform operation
fmul.s f7, f30, f10, rdn # perform operation
fmul.s f7, f30, f10, rmm # perform operation
fmul.s f7, f30, f10, rne # perform operation
fmul.s f7, f30, f10, rtz # perform operation
fmul.s f7, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x20, 0x00cd7ce6fefdf0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmul.s f20, f3, f12, dyn # perform operation
fmul.s f20, f3, f12, rdn # perform operation
fmul.s f20, f3, f12, rmm # perform operation
fmul.s f20, f3, f12, rne # perform operation
fmul.s f20, f3, f12, rtz # perform operation
fmul.s f20, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x1, 0x917360b01556f8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmul.s f1, f19, f12, dyn # perform operation
fmul.s f1, f19, f12, rdn # perform operation
fmul.s f1, f19, f12, rmm # perform operation
fmul.s f1, f19, f12, rne # perform operation
fmul.s f1, f19, f12, rtz # perform operation
fmul.s f1, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x11, 0x7a9f46d28f89ec6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmul.s f11, f4, f22, dyn # perform operation
fmul.s f11, f4, f22, rdn # perform operation
fmul.s f11, f4, f22, rmm # perform operation
fmul.s f11, f4, f22, rne # perform operation
fmul.s f11, f4, f22, rtz # perform operation
fmul.s f11, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x10, 0xd0f85d5fc70001b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fmul.s f10, f22, f18, dyn # perform operation
fmul.s f10, f22, f18, rdn # perform operation
fmul.s f10, f22, f18, rmm # perform operation
fmul.s f10, f22, f18, rne # perform operation
fmul.s f10, f22, f18, rtz # perform operation
fmul.s f10, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x27, 0xfb122e912d48cd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f27, f26, f17, dyn # perform operation
fmul.s f27, f26, f17, rdn # perform operation
fmul.s f27, f26, f17, rmm # perform operation
fmul.s f27, f26, f17, rne # perform operation
fmul.s f27, f26, f17, rtz # perform operation
fmul.s f27, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x1, 0xc228d87eabe3f050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fmul.s f1, f25, f4, dyn # perform operation
fmul.s f1, f25, f4, rdn # perform operation
fmul.s f1, f25, f4, rmm # perform operation
fmul.s f1, f25, f4, rne # perform operation
fmul.s f1, f25, f4, rtz # perform operation
fmul.s f1, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x31, 0xcb353e917db9afa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f31, f7, f30, dyn # perform operation
fmul.s f31, f7, f30, rdn # perform operation
fmul.s f31, f7, f30, rmm # perform operation
fmul.s f31, f7, f30, rne # perform operation
fmul.s f31, f7, f30, rtz # perform operation
fmul.s f31, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x7, 0x1114cbc9a396b568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fmul.s f7, f13, f25, dyn # perform operation
fmul.s f7, f13, f25, rdn # perform operation
fmul.s f7, f13, f25, rmm # perform operation
fmul.s f7, f13, f25, rne # perform operation
fmul.s f7, f13, f25, rtz # perform operation
fmul.s f7, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x12, 0x0e829da9fdb24f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f12, f23, f9, dyn # perform operation
fmul.s f12, f23, f9, rdn # perform operation
fmul.s f12, f23, f9, rmm # perform operation
fmul.s f12, f23, f9, rne # perform operation
fmul.s f12, f23, f9, rtz # perform operation
fmul.s f12, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x14, 0x049a76ae9ecc5fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f14, f30, f15, dyn # perform operation
fmul.s f14, f30, f15, rdn # perform operation
fmul.s f14, f30, f15, rmm # perform operation
fmul.s f14, f30, f15, rne # perform operation
fmul.s f14, f30, f15, rtz # perform operation
fmul.s f14, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x18, 0xcdfff2dd8185fa7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmul.s f18, f27, f17, dyn # perform operation
fmul.s f18, f27, f17, rdn # perform operation
fmul.s f18, f27, f17, rmm # perform operation
fmul.s f18, f27, f17, rne # perform operation
fmul.s f18, f27, f17, rtz # perform operation
fmul.s f18, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x23, 0x4ee2c8a7ca27e763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fmul.s f23, f5, f2, dyn # perform operation
fmul.s f23, f5, f2, rdn # perform operation
fmul.s f23, f5, f2, rmm # perform operation
fmul.s f23, f5, f2, rne # perform operation
fmul.s f23, f5, f2, rtz # perform operation
fmul.s f23, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x12, 0xde9783727d0dfba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f12, f4, f27, dyn # perform operation
fmul.s f12, f4, f27, rdn # perform operation
fmul.s f12, f4, f27, rmm # perform operation
fmul.s f12, f4, f27, rne # perform operation
fmul.s f12, f4, f27, rtz # perform operation
fmul.s f12, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x26, 0x573b2407a78efaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmul.s f26, f29, f28, dyn # perform operation
fmul.s f26, f29, f28, rdn # perform operation
fmul.s f26, f29, f28, rmm # perform operation
fmul.s f26, f29, f28, rne # perform operation
fmul.s f26, f29, f28, rtz # perform operation
fmul.s f26, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x4, 0x28931a76b8d80f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f4, f21, f12, dyn # perform operation
fmul.s f4, f21, f12, rdn # perform operation
fmul.s f4, f21, f12, rmm # perform operation
fmul.s f4, f21, f12, rne # perform operation
fmul.s f4, f21, f12, rtz # perform operation
fmul.s f4, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x2, 0x6a8575011c5ea03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fmul.s f2, f29, f4, dyn # perform operation
fmul.s f2, f29, f4, rdn # perform operation
fmul.s f2, f29, f4, rmm # perform operation
fmul.s f2, f29, f4, rne # perform operation
fmul.s f2, f29, f4, rtz # perform operation
fmul.s f2, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x12, 0x32c534dd90c08078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fmul.s f12, f13, f10, dyn # perform operation
fmul.s f12, f13, f10, rdn # perform operation
fmul.s f12, f13, f10, rmm # perform operation
fmul.s f12, f13, f10, rne # perform operation
fmul.s f12, f13, f10, rtz # perform operation
fmul.s f12, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x12, 0x39e72bc7bcf8072c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fmul.s f12, f19, f20, dyn # perform operation
fmul.s f12, f19, f20, rdn # perform operation
fmul.s f12, f19, f20, rmm # perform operation
fmul.s f12, f19, f20, rne # perform operation
fmul.s f12, f19, f20, rtz # perform operation
fmul.s f12, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x6, 0x6fbe228bc85aa0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fmul.s f6, f23, f4, dyn # perform operation
fmul.s f6, f23, f4, rdn # perform operation
fmul.s f6, f23, f4, rmm # perform operation
fmul.s f6, f23, f4, rne # perform operation
fmul.s f6, f23, f4, rtz # perform operation
fmul.s f6, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x30, 0x79e717a2c8381043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f30, f24, f16, dyn # perform operation
fmul.s f30, f24, f16, rdn # perform operation
fmul.s f30, f24, f16, rmm # perform operation
fmul.s f30, f24, f16, rne # perform operation
fmul.s f30, f24, f16, rtz # perform operation
fmul.s f30, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x13, 0xd0d1266601a59461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fmul.s f13, f12, f21, dyn # perform operation
fmul.s f13, f12, f21, rdn # perform operation
fmul.s f13, f12, f21, rmm # perform operation
fmul.s f13, f12, f21, rne # perform operation
fmul.s f13, f12, f21, rtz # perform operation
fmul.s f13, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x13, 0x19f7433c637744da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fmul.s f13, f11, f23, dyn # perform operation
fmul.s f13, f11, f23, rdn # perform operation
fmul.s f13, f11, f23, rmm # perform operation
fmul.s f13, f11, f23, rne # perform operation
fmul.s f13, f11, f23, rtz # perform operation
fmul.s f13, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x30, 0xe761f3a9deb49968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmul.s f30, f16, f26, dyn # perform operation
fmul.s f30, f16, f26, rdn # perform operation
fmul.s f30, f16, f26, rmm # perform operation
fmul.s f30, f16, f26, rne # perform operation
fmul.s f30, f16, f26, rtz # perform operation
fmul.s f30, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x14, 0xab4164defe6f2e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmul.s f14, f27, f31, dyn # perform operation
fmul.s f14, f27, f31, rdn # perform operation
fmul.s f14, f27, f31, rmm # perform operation
fmul.s f14, f27, f31, rne # perform operation
fmul.s f14, f27, f31, rtz # perform operation
fmul.s f14, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x18, 0x74ccbac1c46514fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fmul.s f18, f21, f4, dyn # perform operation
fmul.s f18, f21, f4, rdn # perform operation
fmul.s f18, f21, f4, rmm # perform operation
fmul.s f18, f21, f4, rne # perform operation
fmul.s f18, f21, f4, rtz # perform operation
fmul.s f18, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x26, 0xc6c305066ebfb29c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fmul.s f26, f21, f4, dyn # perform operation
fmul.s f26, f21, f4, rdn # perform operation
fmul.s f26, f21, f4, rmm # perform operation
fmul.s f26, f21, f4, rne # perform operation
fmul.s f26, f21, f4, rtz # perform operation
fmul.s f26, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x31, 0x55f442c372200305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fmul.s f31, f20, f27, dyn # perform operation
fmul.s f31, f20, f27, rdn # perform operation
fmul.s f31, f20, f27, rmm # perform operation
fmul.s f31, f20, f27, rne # perform operation
fmul.s f31, f20, f27, rtz # perform operation
fmul.s f31, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x3, 0xe6007708e9652561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fmul.s f3, f12, f7, dyn # perform operation
fmul.s f3, f12, f7, rdn # perform operation
fmul.s f3, f12, f7, rmm # perform operation
fmul.s f3, f12, f7, rne # perform operation
fmul.s f3, f12, f7, rtz # perform operation
fmul.s f3, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x13, 0x772149fdc53e4ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f13, f26, f28, dyn # perform operation
fmul.s f13, f26, f28, rdn # perform operation
fmul.s f13, f26, f28, rmm # perform operation
fmul.s f13, f26, f28, rne # perform operation
fmul.s f13, f26, f28, rtz # perform operation
fmul.s f13, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x1, 0x6d49a79746694b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f1, f23, f31, dyn # perform operation
fmul.s f1, f23, f31, rdn # perform operation
fmul.s f1, f23, f31, rmm # perform operation
fmul.s f1, f23, f31, rne # perform operation
fmul.s f1, f23, f31, rtz # perform operation
fmul.s f1, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x1, 0x77a966b668f2e5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f1, f19, f15, dyn # perform operation
fmul.s f1, f19, f15, rdn # perform operation
fmul.s f1, f19, f15, rmm # perform operation
fmul.s f1, f19, f15, rne # perform operation
fmul.s f1, f19, f15, rtz # perform operation
fmul.s f1, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x24, 0x20629d7b1ad3c5de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fmul.s f24, f14, f5, dyn # perform operation
fmul.s f24, f14, f5, rdn # perform operation
fmul.s f24, f14, f5, rmm # perform operation
fmul.s f24, f14, f5, rne # perform operation
fmul.s f24, f14, f5, rtz # perform operation
fmul.s f24, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x20, 0xcb1ef20e044437af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fmul.s f20, f31, f8, dyn # perform operation
fmul.s f20, f31, f8, rdn # perform operation
fmul.s f20, f31, f8, rmm # perform operation
fmul.s f20, f31, f8, rne # perform operation
fmul.s f20, f31, f8, rtz # perform operation
fmul.s f20, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x9, 0x257d00f16e793e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f9, f17, f10, dyn # perform operation
fmul.s f9, f17, f10, rdn # perform operation
fmul.s f9, f17, f10, rmm # perform operation
fmul.s f9, f17, f10, rne # perform operation
fmul.s f9, f17, f10, rtz # perform operation
fmul.s f9, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x7, 0x5cba36e2be17937c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fmul.s f7, f31, f23, dyn # perform operation
fmul.s f7, f31, f23, rdn # perform operation
fmul.s f7, f31, f23, rmm # perform operation
fmul.s f7, f31, f23, rne # perform operation
fmul.s f7, f31, f23, rtz # perform operation
fmul.s f7, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x30, 0x142e850f618d47bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f30, f29, f10, dyn # perform operation
fmul.s f30, f29, f10, rdn # perform operation
fmul.s f30, f29, f10, rmm # perform operation
fmul.s f30, f29, f10, rne # perform operation
fmul.s f30, f29, f10, rtz # perform operation
fmul.s f30, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x29, 0xda3c931e415c9e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f29, f3, f7, dyn # perform operation
fmul.s f29, f3, f7, rdn # perform operation
fmul.s f29, f3, f7, rmm # perform operation
fmul.s f29, f3, f7, rne # perform operation
fmul.s f29, f3, f7, rtz # perform operation
fmul.s f29, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x15, 0xbbc6fd837ec5cf42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f15, f29, f23, dyn # perform operation
fmul.s f15, f29, f23, rdn # perform operation
fmul.s f15, f29, f23, rmm # perform operation
fmul.s f15, f29, f23, rne # perform operation
fmul.s f15, f29, f23, rtz # perform operation
fmul.s f15, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x24, 0x550314db3a991a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f24, f25, f15, dyn # perform operation
fmul.s f24, f25, f15, rdn # perform operation
fmul.s f24, f25, f15, rmm # perform operation
fmul.s f24, f25, f15, rne # perform operation
fmul.s f24, f25, f15, rtz # perform operation
fmul.s f24, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x26, 0xade8013e3f9ada09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f26, f14, f2, dyn # perform operation
fmul.s f26, f14, f2, rdn # perform operation
fmul.s f26, f14, f2, rmm # perform operation
fmul.s f26, f14, f2, rne # perform operation
fmul.s f26, f14, f2, rtz # perform operation
fmul.s f26, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x17, 0x3166feb79e1212d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fmul.s f17, f25, f26, dyn # perform operation
fmul.s f17, f25, f26, rdn # perform operation
fmul.s f17, f25, f26, rmm # perform operation
fmul.s f17, f25, f26, rne # perform operation
fmul.s f17, f25, f26, rtz # perform operation
fmul.s f17, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x27, 0xe8025f3681142ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f27, f9, f22, dyn # perform operation
fmul.s f27, f9, f22, rdn # perform operation
fmul.s f27, f9, f22, rmm # perform operation
fmul.s f27, f9, f22, rne # perform operation
fmul.s f27, f9, f22, rtz # perform operation
fmul.s f27, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x13, 0xa41de542c8123f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fmul.s f13, f19, f26, dyn # perform operation
fmul.s f13, f19, f26, rdn # perform operation
fmul.s f13, f19, f26, rmm # perform operation
fmul.s f13, f19, f26, rne # perform operation
fmul.s f13, f19, f26, rtz # perform operation
fmul.s f13, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x23, 0x39e48afac2929b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f23, f7, f2, dyn # perform operation
fmul.s f23, f7, f2, rdn # perform operation
fmul.s f23, f7, f2, rmm # perform operation
fmul.s f23, f7, f2, rne # perform operation
fmul.s f23, f7, f2, rtz # perform operation
fmul.s f23, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x6, 0x0566ff8124174714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmul.s f6, f29, f10, dyn # perform operation
fmul.s f6, f29, f10, rdn # perform operation
fmul.s f6, f29, f10, rmm # perform operation
fmul.s f6, f29, f10, rne # perform operation
fmul.s f6, f29, f10, rtz # perform operation
fmul.s f6, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x5, 0xfc4b316d56cfd115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f5, f18, f9, dyn # perform operation
fmul.s f5, f18, f9, rdn # perform operation
fmul.s f5, f18, f9, rmm # perform operation
fmul.s f5, f18, f9, rne # perform operation
fmul.s f5, f18, f9, rtz # perform operation
fmul.s f5, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x3, 0x388529bfbbe19403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f3, f30, f23, dyn # perform operation
fmul.s f3, f30, f23, rdn # perform operation
fmul.s f3, f30, f23, rmm # perform operation
fmul.s f3, f30, f23, rne # perform operation
fmul.s f3, f30, f23, rtz # perform operation
fmul.s f3, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x9, 0x60cd88f303738700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f9, f1, f29, dyn # perform operation
fmul.s f9, f1, f29, rdn # perform operation
fmul.s f9, f1, f29, rmm # perform operation
fmul.s f9, f1, f29, rne # perform operation
fmul.s f9, f1, f29, rtz # perform operation
fmul.s f9, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x5, 0xfcd23452215b263e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmul.s f5, f29, f4, dyn # perform operation
fmul.s f5, f29, f4, rdn # perform operation
fmul.s f5, f29, f4, rmm # perform operation
fmul.s f5, f29, f4, rne # perform operation
fmul.s f5, f29, f4, rtz # perform operation
fmul.s f5, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x18, 0xdb155d11fd3c426c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f18, f13, f20, dyn # perform operation
fmul.s f18, f13, f20, rdn # perform operation
fmul.s f18, f13, f20, rmm # perform operation
fmul.s f18, f13, f20, rne # perform operation
fmul.s f18, f13, f20, rtz # perform operation
fmul.s f18, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x24, 0xe1dacd6fef9922e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fmul.s f24, f29, f1, dyn # perform operation
fmul.s f24, f29, f1, rdn # perform operation
fmul.s f24, f29, f1, rmm # perform operation
fmul.s f24, f29, f1, rne # perform operation
fmul.s f24, f29, f1, rtz # perform operation
fmul.s f24, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x10, 0xd01e588834ff26cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fmul.s f10, f3, f14, dyn # perform operation
fmul.s f10, f3, f14, rdn # perform operation
fmul.s f10, f3, f14, rmm # perform operation
fmul.s f10, f3, f14, rne # perform operation
fmul.s f10, f3, f14, rtz # perform operation
fmul.s f10, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x23, 0xe3609ea793788c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fmul.s f23, f11, f30, dyn # perform operation
fmul.s f23, f11, f30, rdn # perform operation
fmul.s f23, f11, f30, rmm # perform operation
fmul.s f23, f11, f30, rne # perform operation
fmul.s f23, f11, f30, rtz # perform operation
fmul.s f23, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x30, 0x79e8c68d004bcc8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmul.s f30, f16, f12, dyn # perform operation
fmul.s f30, f16, f12, rdn # perform operation
fmul.s f30, f16, f12, rmm # perform operation
fmul.s f30, f16, f12, rne # perform operation
fmul.s f30, f16, f12, rtz # perform operation
fmul.s f30, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x18, 0xa51a52bc879de5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fmul.s f18, f26, f5, dyn # perform operation
fmul.s f18, f26, f5, rdn # perform operation
fmul.s f18, f26, f5, rmm # perform operation
fmul.s f18, f26, f5, rne # perform operation
fmul.s f18, f26, f5, rtz # perform operation
fmul.s f18, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x11, 0x5ecaabd08dc4b6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmul.s f11, f29, f23, dyn # perform operation
fmul.s f11, f29, f23, rdn # perform operation
fmul.s f11, f29, f23, rmm # perform operation
fmul.s f11, f29, f23, rne # perform operation
fmul.s f11, f29, f23, rtz # perform operation
fmul.s f11, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x25, 0x67252de5088c971f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f25, f10, f11, dyn # perform operation
fmul.s f25, f10, f11, rdn # perform operation
fmul.s f25, f10, f11, rmm # perform operation
fmul.s f25, f10, f11, rne # perform operation
fmul.s f25, f10, f11, rtz # perform operation
fmul.s f25, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x1, 0x26f467c6f1ad0fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fmul.s f1, f24, f6, dyn # perform operation
fmul.s f1, f24, f6, rdn # perform operation
fmul.s f1, f24, f6, rmm # perform operation
fmul.s f1, f24, f6, rne # perform operation
fmul.s f1, f24, f6, rtz # perform operation
fmul.s f1, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x14, 0xa8c3bb6582608a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f14, f16, f11, dyn # perform operation
fmul.s f14, f16, f11, rdn # perform operation
fmul.s f14, f16, f11, rmm # perform operation
fmul.s f14, f16, f11, rne # perform operation
fmul.s f14, f16, f11, rtz # perform operation
fmul.s f14, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x28, 0x7979a34ec7186984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmul.s f28, f4, f19, dyn # perform operation
fmul.s f28, f4, f19, rdn # perform operation
fmul.s f28, f4, f19, rmm # perform operation
fmul.s f28, f4, f19, rne # perform operation
fmul.s f28, f4, f19, rtz # perform operation
fmul.s f28, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x24, 0x9f15cfd7430b431d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fmul.s f24, f16, f23, dyn # perform operation
fmul.s f24, f16, f23, rdn # perform operation
fmul.s f24, f16, f23, rmm # perform operation
fmul.s f24, f16, f23, rne # perform operation
fmul.s f24, f16, f23, rtz # perform operation
fmul.s f24, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x17, 0x653fdbc61a57b309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f17, f3, f10, dyn # perform operation
fmul.s f17, f3, f10, rdn # perform operation
fmul.s f17, f3, f10, rmm # perform operation
fmul.s f17, f3, f10, rne # perform operation
fmul.s f17, f3, f10, rtz # perform operation
fmul.s f17, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x12, 0xfebffda8eacd93ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fmul.s f12, f14, f2, dyn # perform operation
fmul.s f12, f14, f2, rdn # perform operation
fmul.s f12, f14, f2, rmm # perform operation
fmul.s f12, f14, f2, rne # perform operation
fmul.s f12, f14, f2, rtz # perform operation
fmul.s f12, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x27, 0xba8f37901e9f13a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f27, f6, f10, dyn # perform operation
fmul.s f27, f6, f10, rdn # perform operation
fmul.s f27, f6, f10, rmm # perform operation
fmul.s f27, f6, f10, rne # perform operation
fmul.s f27, f6, f10, rtz # perform operation
fmul.s f27, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x16, 0xf393b07066eb8539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmul.s f16, f13, f25, dyn # perform operation
fmul.s f16, f13, f25, rdn # perform operation
fmul.s f16, f13, f25, rmm # perform operation
fmul.s f16, f13, f25, rne # perform operation
fmul.s f16, f13, f25, rtz # perform operation
fmul.s f16, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x23, 0xd623fb29d4f92e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fmul.s f23, f6, f12, dyn # perform operation
fmul.s f23, f6, f12, rdn # perform operation
fmul.s f23, f6, f12, rmm # perform operation
fmul.s f23, f6, f12, rne # perform operation
fmul.s f23, f6, f12, rtz # perform operation
fmul.s f23, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x31, 0xf7f5f7b382b10428 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f31, f6, f20, dyn # perform operation
fmul.s f31, f6, f20, rdn # perform operation
fmul.s f31, f6, f20, rmm # perform operation
fmul.s f31, f6, f20, rne # perform operation
fmul.s f31, f6, f20, rtz # perform operation
fmul.s f31, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x10, 0x9185b5e8f577b892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fmul.s f10, f29, f3, dyn # perform operation
fmul.s f10, f29, f3, rdn # perform operation
fmul.s f10, f29, f3, rmm # perform operation
fmul.s f10, f29, f3, rne # perform operation
fmul.s f10, f29, f3, rtz # perform operation
fmul.s f10, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x15, 0x9de576790f9a750e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmul.s f15, f5, f17, dyn # perform operation
fmul.s f15, f5, f17, rdn # perform operation
fmul.s f15, f5, f17, rmm # perform operation
fmul.s f15, f5, f17, rne # perform operation
fmul.s f15, f5, f17, rtz # perform operation
fmul.s f15, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x13, 0xa1f9252770c9510a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmul.s f13, f16, f7, dyn # perform operation
fmul.s f13, f16, f7, rdn # perform operation
fmul.s f13, f16, f7, rmm # perform operation
fmul.s f13, f16, f7, rne # perform operation
fmul.s f13, f16, f7, rtz # perform operation
fmul.s f13, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x17, 0x75b2c1fb4bd16d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmul.s f17, f20, f18, dyn # perform operation
fmul.s f17, f20, f18, rdn # perform operation
fmul.s f17, f20, f18, rmm # perform operation
fmul.s f17, f20, f18, rne # perform operation
fmul.s f17, f20, f18, rtz # perform operation
fmul.s f17, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x5, 0xc713ced39f0526e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fmul.s f5, f11, f30, dyn # perform operation
fmul.s f5, f11, f30, rdn # perform operation
fmul.s f5, f11, f30, rmm # perform operation
fmul.s f5, f11, f30, rne # perform operation
fmul.s f5, f11, f30, rtz # perform operation
fmul.s f5, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x2, 0x05254655fe835555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmul.s f2, f6, f20, dyn # perform operation
fmul.s f2, f6, f20, rdn # perform operation
fmul.s f2, f6, f20, rmm # perform operation
fmul.s f2, f6, f20, rne # perform operation
fmul.s f2, f6, f20, rtz # perform operation
fmul.s f2, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x5, 0xb7da8f4e0409f131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f5, f12, f3, dyn # perform operation
fmul.s f5, f12, f3, rdn # perform operation
fmul.s f5, f12, f3, rmm # perform operation
fmul.s f5, f12, f3, rne # perform operation
fmul.s f5, f12, f3, rtz # perform operation
fmul.s f5, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x11, 0x68339de89b9a9d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fmul.s f11, f14, f10, dyn # perform operation
fmul.s f11, f14, f10, rdn # perform operation
fmul.s f11, f14, f10, rmm # perform operation
fmul.s f11, f14, f10, rne # perform operation
fmul.s f11, f14, f10, rtz # perform operation
fmul.s f11, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x15, 0x9fa772842f3c645d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmul.s f15, f16, f5, dyn # perform operation
fmul.s f15, f16, f5, rdn # perform operation
fmul.s f15, f16, f5, rmm # perform operation
fmul.s f15, f16, f5, rne # perform operation
fmul.s f15, f16, f5, rtz # perform operation
fmul.s f15, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x22, 0xf643dfadc292886e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fmul.s f22, f30, f24, dyn # perform operation
fmul.s f22, f30, f24, rdn # perform operation
fmul.s f22, f30, f24, rmm # perform operation
fmul.s f22, f30, f24, rne # perform operation
fmul.s f22, f30, f24, rtz # perform operation
fmul.s f22, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x28, 0x3b609287e8b4c973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f28, f4, f16, dyn # perform operation
fmul.s f28, f4, f16, rdn # perform operation
fmul.s f28, f4, f16, rmm # perform operation
fmul.s f28, f4, f16, rne # perform operation
fmul.s f28, f4, f16, rtz # perform operation
fmul.s f28, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x12, 0x6953c65ec7ea9b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fmul.s f12, f21, f1, dyn # perform operation
fmul.s f12, f21, f1, rdn # perform operation
fmul.s f12, f21, f1, rmm # perform operation
fmul.s f12, f21, f1, rne # perform operation
fmul.s f12, f21, f1, rtz # perform operation
fmul.s f12, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x14, 0xb7c9bf2e457518e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fmul.s f14, f2, f22, dyn # perform operation
fmul.s f14, f2, f22, rdn # perform operation
fmul.s f14, f2, f22, rmm # perform operation
fmul.s f14, f2, f22, rne # perform operation
fmul.s f14, f2, f22, rtz # perform operation
fmul.s f14, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x22, 0x9244f430ee2a11b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f22, f3, f17, dyn # perform operation
fmul.s f22, f3, f17, rdn # perform operation
fmul.s f22, f3, f17, rmm # perform operation
fmul.s f22, f3, f17, rne # perform operation
fmul.s f22, f3, f17, rtz # perform operation
fmul.s f22, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x1, 0x9c6884e484beb2de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f1, f24, f5, dyn # perform operation
fmul.s f1, f24, f5, rdn # perform operation
fmul.s f1, f24, f5, rmm # perform operation
fmul.s f1, f24, f5, rne # perform operation
fmul.s f1, f24, f5, rtz # perform operation
fmul.s f1, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x23, 0xd6634d5246697bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f23, f31, f20, dyn # perform operation
fmul.s f23, f31, f20, rdn # perform operation
fmul.s f23, f31, f20, rmm # perform operation
fmul.s f23, f31, f20, rne # perform operation
fmul.s f23, f31, f20, rtz # perform operation
fmul.s f23, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x10, 0x39c3513c0038b123 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmul.s f10, f7, f22, dyn # perform operation
fmul.s f10, f7, f22, rdn # perform operation
fmul.s f10, f7, f22, rmm # perform operation
fmul.s f10, f7, f22, rne # perform operation
fmul.s f10, f7, f22, rtz # perform operation
fmul.s f10, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x20, 0x6365614865372daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f20, f1, f19, dyn # perform operation
fmul.s f20, f1, f19, rdn # perform operation
fmul.s f20, f1, f19, rmm # perform operation
fmul.s f20, f1, f19, rne # perform operation
fmul.s f20, f1, f19, rtz # perform operation
fmul.s f20, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x23, 0xcc0f19aa317728ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmul.s f23, f16, f19, dyn # perform operation
fmul.s f23, f16, f19, rdn # perform operation
fmul.s f23, f16, f19, rmm # perform operation
fmul.s f23, f16, f19, rne # perform operation
fmul.s f23, f16, f19, rtz # perform operation
fmul.s f23, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x17, 0xf33f778a5b9b0111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmul.s f17, f7, f30, dyn # perform operation
fmul.s f17, f7, f30, rdn # perform operation
fmul.s f17, f7, f30, rmm # perform operation
fmul.s f17, f7, f30, rne # perform operation
fmul.s f17, f7, f30, rtz # perform operation
fmul.s f17, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x14, 0x519d62cd84cbe52c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fmul.s f14, f27, f26, dyn # perform operation
fmul.s f14, f27, f26, rdn # perform operation
fmul.s f14, f27, f26, rmm # perform operation
fmul.s f14, f27, f26, rne # perform operation
fmul.s f14, f27, f26, rtz # perform operation
fmul.s f14, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x23, 0xe397b468b676d037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fmul.s f23, f30, f12, dyn # perform operation
fmul.s f23, f30, f12, rdn # perform operation
fmul.s f23, f30, f12, rmm # perform operation
fmul.s f23, f30, f12, rne # perform operation
fmul.s f23, f30, f12, rtz # perform operation
fmul.s f23, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x30, 0x9b33b6832bec1f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fmul.s f30, f9, f17, dyn # perform operation
fmul.s f30, f9, f17, rdn # perform operation
fmul.s f30, f9, f17, rmm # perform operation
fmul.s f30, f9, f17, rne # perform operation
fmul.s f30, f9, f17, rtz # perform operation
fmul.s f30, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x14, 0x09eecf57eae5d06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmul.s f14, f19, f7, dyn # perform operation
fmul.s f14, f19, f7, rdn # perform operation
fmul.s f14, f19, f7, rmm # perform operation
fmul.s f14, f19, f7, rne # perform operation
fmul.s f14, f19, f7, rtz # perform operation
fmul.s f14, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x7, 0x62e8749cbdd39d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fmul.s f7, f3, f30, dyn # perform operation
fmul.s f7, f3, f30, rdn # perform operation
fmul.s f7, f3, f30, rmm # perform operation
fmul.s f7, f3, f30, rne # perform operation
fmul.s f7, f3, f30, rtz # perform operation
fmul.s f7, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x24, 0x91a321f7a69493f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fmul.s f24, f2, f4, dyn # perform operation
fmul.s f24, f2, f4, rdn # perform operation
fmul.s f24, f2, f4, rmm # perform operation
fmul.s f24, f2, f4, rne # perform operation
fmul.s f24, f2, f4, rtz # perform operation
fmul.s f24, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x11, 0x0175e36645cf3e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fmul.s f11, f6, f4, dyn # perform operation
fmul.s f11, f6, f4, rdn # perform operation
fmul.s f11, f6, f4, rmm # perform operation
fmul.s f11, f6, f4, rne # perform operation
fmul.s f11, f6, f4, rtz # perform operation
fmul.s f11, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x14, 0x777e6861f75c4916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f14, f10, f18, dyn # perform operation
fmul.s f14, f10, f18, rdn # perform operation
fmul.s f14, f10, f18, rmm # perform operation
fmul.s f14, f10, f18, rne # perform operation
fmul.s f14, f10, f18, rtz # perform operation
fmul.s f14, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x28, 0xe00dc7e4706c62c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f28, f30, f26, dyn # perform operation
fmul.s f28, f30, f26, rdn # perform operation
fmul.s f28, f30, f26, rmm # perform operation
fmul.s f28, f30, f26, rne # perform operation
fmul.s f28, f30, f26, rtz # perform operation
fmul.s f28, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x1, 0x10fee71ffd3a360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f1, f5, f12, dyn # perform operation
fmul.s f1, f5, f12, rdn # perform operation
fmul.s f1, f5, f12, rmm # perform operation
fmul.s f1, f5, f12, rne # perform operation
fmul.s f1, f5, f12, rtz # perform operation
fmul.s f1, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x26, 0xdc8da9dd88db1985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fmul.s f26, f11, f2, dyn # perform operation
fmul.s f26, f11, f2, rdn # perform operation
fmul.s f26, f11, f2, rmm # perform operation
fmul.s f26, f11, f2, rne # perform operation
fmul.s f26, f11, f2, rtz # perform operation
fmul.s f26, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x27, 0x523715e07d34ad95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f27, f30, f25, dyn # perform operation
fmul.s f27, f30, f25, rdn # perform operation
fmul.s f27, f30, f25, rmm # perform operation
fmul.s f27, f30, f25, rne # perform operation
fmul.s f27, f30, f25, rtz # perform operation
fmul.s f27, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x9, 0x4c947bd8473827ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fmul.s f9, f12, f10, dyn # perform operation
fmul.s f9, f12, f10, rdn # perform operation
fmul.s f9, f12, f10, rmm # perform operation
fmul.s f9, f12, f10, rne # perform operation
fmul.s f9, f12, f10, rtz # perform operation
fmul.s f9, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x6, 0x35d0717a887a3508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fmul.s f6, f5, f19, dyn # perform operation
fmul.s f6, f5, f19, rdn # perform operation
fmul.s f6, f5, f19, rmm # perform operation
fmul.s f6, f5, f19, rne # perform operation
fmul.s f6, f5, f19, rtz # perform operation
fmul.s f6, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x24, 0x2581e1c9477414a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmul.s f24, f10, f11, dyn # perform operation
fmul.s f24, f10, f11, rdn # perform operation
fmul.s f24, f10, f11, rmm # perform operation
fmul.s f24, f10, f11, rne # perform operation
fmul.s f24, f10, f11, rtz # perform operation
fmul.s f24, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x12, 0x887e652498518569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmul.s f12, f14, f5, dyn # perform operation
fmul.s f12, f14, f5, rdn # perform operation
fmul.s f12, f14, f5, rmm # perform operation
fmul.s f12, f14, f5, rne # perform operation
fmul.s f12, f14, f5, rtz # perform operation
fmul.s f12, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x2, 0x89d5179000814f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f2, f11, f23, dyn # perform operation
fmul.s f2, f11, f23, rdn # perform operation
fmul.s f2, f11, f23, rmm # perform operation
fmul.s f2, f11, f23, rne # perform operation
fmul.s f2, f11, f23, rtz # perform operation
fmul.s f2, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x24, 0x6880d078052575f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fmul.s f24, f31, f20, dyn # perform operation
fmul.s f24, f31, f20, rdn # perform operation
fmul.s f24, f31, f20, rmm # perform operation
fmul.s f24, f31, f20, rne # perform operation
fmul.s f24, f31, f20, rtz # perform operation
fmul.s f24, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x28, 0x75d7efe50128aeb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fmul.s f28, f16, f29, dyn # perform operation
fmul.s f28, f16, f29, rdn # perform operation
fmul.s f28, f16, f29, rmm # perform operation
fmul.s f28, f16, f29, rne # perform operation
fmul.s f28, f16, f29, rtz # perform operation
fmul.s f28, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x23, 0x04b600af4c4baf49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f23, f31, f17, dyn # perform operation
fmul.s f23, f31, f17, rdn # perform operation
fmul.s f23, f31, f17, rmm # perform operation
fmul.s f23, f31, f17, rne # perform operation
fmul.s f23, f31, f17, rtz # perform operation
fmul.s f23, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x24, 0x029ca12ff258925d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f24, f2, f21, dyn # perform operation
fmul.s f24, f2, f21, rdn # perform operation
fmul.s f24, f2, f21, rmm # perform operation
fmul.s f24, f2, f21, rne # perform operation
fmul.s f24, f2, f21, rtz # perform operation
fmul.s f24, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x12, 0x381f002171b7d000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmul.s f12, f28, f22, dyn # perform operation
fmul.s f12, f28, f22, rdn # perform operation
fmul.s f12, f28, f22, rmm # perform operation
fmul.s f12, f28, f22, rne # perform operation
fmul.s f12, f28, f22, rtz # perform operation
fmul.s f12, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x25, 0x9ee40f702f0a52ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f25, f28, f27, dyn # perform operation
fmul.s f25, f28, f27, rdn # perform operation
fmul.s f25, f28, f27, rmm # perform operation
fmul.s f25, f28, f27, rne # perform operation
fmul.s f25, f28, f27, rtz # perform operation
fmul.s f25, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x9, 0x58b36237026dd792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f9, f14, f19, dyn # perform operation
fmul.s f9, f14, f19, rdn # perform operation
fmul.s f9, f14, f19, rmm # perform operation
fmul.s f9, f14, f19, rne # perform operation
fmul.s f9, f14, f19, rtz # perform operation
fmul.s f9, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x27, 0x59a28a59450b81bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fmul.s f27, f7, f28, dyn # perform operation
fmul.s f27, f7, f28, rdn # perform operation
fmul.s f27, f7, f28, rmm # perform operation
fmul.s f27, f7, f28, rne # perform operation
fmul.s f27, f7, f28, rtz # perform operation
fmul.s f27, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x10, 0x2560f7ed53b3a54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fmul.s f10, f6, f16, dyn # perform operation
fmul.s f10, f6, f16, rdn # perform operation
fmul.s f10, f6, f16, rmm # perform operation
fmul.s f10, f6, f16, rne # perform operation
fmul.s f10, f6, f16, rtz # perform operation
fmul.s f10, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x20, 0x2d0564cfe450ea38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fmul.s f20, f23, f14, dyn # perform operation
fmul.s f20, f23, f14, rdn # perform operation
fmul.s f20, f23, f14, rmm # perform operation
fmul.s f20, f23, f14, rne # perform operation
fmul.s f20, f23, f14, rtz # perform operation
fmul.s f20, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x3, 0xcab602aa354abb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmul.s f3, f23, f28, dyn # perform operation
fmul.s f3, f23, f28, rdn # perform operation
fmul.s f3, f23, f28, rmm # perform operation
fmul.s f3, f23, f28, rne # perform operation
fmul.s f3, f23, f28, rtz # perform operation
fmul.s f3, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x9, 0x32041bdf76dc7adc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fmul.s f9, f8, f13, dyn # perform operation
fmul.s f9, f8, f13, rdn # perform operation
fmul.s f9, f8, f13, rmm # perform operation
fmul.s f9, f8, f13, rne # perform operation
fmul.s f9, f8, f13, rtz # perform operation
fmul.s f9, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x17, 0x44f9a327d59c3ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f17, f10, f15, dyn # perform operation
fmul.s f17, f10, f15, rdn # perform operation
fmul.s f17, f10, f15, rmm # perform operation
fmul.s f17, f10, f15, rne # perform operation
fmul.s f17, f10, f15, rtz # perform operation
fmul.s f17, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x29, 0x7d3c0818d39b2e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fmul.s f29, f30, f27, dyn # perform operation
fmul.s f29, f30, f27, rdn # perform operation
fmul.s f29, f30, f27, rmm # perform operation
fmul.s f29, f30, f27, rne # perform operation
fmul.s f29, f30, f27, rtz # perform operation
fmul.s f29, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x8, 0x0ca213297ed08cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fmul.s f8, f19, f28, dyn # perform operation
fmul.s f8, f19, f28, rdn # perform operation
fmul.s f8, f19, f28, rmm # perform operation
fmul.s f8, f19, f28, rne # perform operation
fmul.s f8, f19, f28, rtz # perform operation
fmul.s f8, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x27, 0xf95201569724f0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmul.s f27, f13, f21, dyn # perform operation
fmul.s f27, f13, f21, rdn # perform operation
fmul.s f27, f13, f21, rmm # perform operation
fmul.s f27, f13, f21, rne # perform operation
fmul.s f27, f13, f21, rtz # perform operation
fmul.s f27, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x29, 0xe4d4e2e473446dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmul.s f29, f10, f17, dyn # perform operation
fmul.s f29, f10, f17, rdn # perform operation
fmul.s f29, f10, f17, rmm # perform operation
fmul.s f29, f10, f17, rne # perform operation
fmul.s f29, f10, f17, rtz # perform operation
fmul.s f29, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x22, 0x23be0432f1ed56c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f22, f29, f15, dyn # perform operation
fmul.s f22, f29, f15, rdn # perform operation
fmul.s f22, f29, f15, rmm # perform operation
fmul.s f22, f29, f15, rne # perform operation
fmul.s f22, f29, f15, rtz # perform operation
fmul.s f22, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x6, 0x488b8dcaa47b698e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fmul.s f6, f5, f16, dyn # perform operation
fmul.s f6, f5, f16, rdn # perform operation
fmul.s f6, f5, f16, rmm # perform operation
fmul.s f6, f5, f16, rne # perform operation
fmul.s f6, f5, f16, rtz # perform operation
fmul.s f6, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x27, 0x6e26ebc8c6efff4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fmul.s f27, f6, f8, dyn # perform operation
fmul.s f27, f6, f8, rdn # perform operation
fmul.s f27, f6, f8, rmm # perform operation
fmul.s f27, f6, f8, rne # perform operation
fmul.s f27, f6, f8, rtz # perform operation
fmul.s f27, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x21, 0xf7fc4a7028274cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f21, f19, f23, dyn # perform operation
fmul.s f21, f19, f23, rdn # perform operation
fmul.s f21, f19, f23, rmm # perform operation
fmul.s f21, f19, f23, rne # perform operation
fmul.s f21, f19, f23, rtz # perform operation
fmul.s f21, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x13, 0xf9e144c425678df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f13, f17, f20, dyn # perform operation
fmul.s f13, f17, f20, rdn # perform operation
fmul.s f13, f17, f20, rmm # perform operation
fmul.s f13, f17, f20, rne # perform operation
fmul.s f13, f17, f20, rtz # perform operation
fmul.s f13, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x9, 0xf54b5034b4c47af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fmul.s f9, f29, f3, dyn # perform operation
fmul.s f9, f29, f3, rdn # perform operation
fmul.s f9, f29, f3, rmm # perform operation
fmul.s f9, f29, f3, rne # perform operation
fmul.s f9, f29, f3, rtz # perform operation
fmul.s f9, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x21, 0x66c2bc9d4337091f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f21, f15, f24, dyn # perform operation
fmul.s f21, f15, f24, rdn # perform operation
fmul.s f21, f15, f24, rmm # perform operation
fmul.s f21, f15, f24, rne # perform operation
fmul.s f21, f15, f24, rtz # perform operation
fmul.s f21, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x26, 0x79e46af39b527102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fmul.s f26, f17, f3, dyn # perform operation
fmul.s f26, f17, f3, rdn # perform operation
fmul.s f26, f17, f3, rmm # perform operation
fmul.s f26, f17, f3, rne # perform operation
fmul.s f26, f17, f3, rtz # perform operation
fmul.s f26, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x4, 0x52db60b6a52a4f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fmul.s f4, f31, f21, dyn # perform operation
fmul.s f4, f31, f21, rdn # perform operation
fmul.s f4, f31, f21, rmm # perform operation
fmul.s f4, f31, f21, rne # perform operation
fmul.s f4, f31, f21, rtz # perform operation
fmul.s f4, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x16, 0xa066585cfe58b0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f16, f19, f29, dyn # perform operation
fmul.s f16, f19, f29, rdn # perform operation
fmul.s f16, f19, f29, rmm # perform operation
fmul.s f16, f19, f29, rne # perform operation
fmul.s f16, f19, f29, rtz # perform operation
fmul.s f16, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x19, 0x4e4991a11bd5739d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fmul.s f19, f3, f8, dyn # perform operation
fmul.s f19, f3, f8, rdn # perform operation
fmul.s f19, f3, f8, rmm # perform operation
fmul.s f19, f3, f8, rne # perform operation
fmul.s f19, f3, f8, rtz # perform operation
fmul.s f19, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x9, 0x1e9bc433fa913b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f9, f18, f3, dyn # perform operation
fmul.s f9, f18, f3, rdn # perform operation
fmul.s f9, f18, f3, rmm # perform operation
fmul.s f9, f18, f3, rne # perform operation
fmul.s f9, f18, f3, rtz # perform operation
fmul.s f9, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x1, 0xa167d4503d9f8560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fmul.s f1, f28, f26, dyn # perform operation
fmul.s f1, f28, f26, rdn # perform operation
fmul.s f1, f28, f26, rmm # perform operation
fmul.s f1, f28, f26, rne # perform operation
fmul.s f1, f28, f26, rtz # perform operation
fmul.s f1, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x3, 0xb1ab98a919e45e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fmul.s f3, f30, f6, dyn # perform operation
fmul.s f3, f30, f6, rdn # perform operation
fmul.s f3, f30, f6, rmm # perform operation
fmul.s f3, f30, f6, rne # perform operation
fmul.s f3, f30, f6, rtz # perform operation
fmul.s f3, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x29, 0xaa54cea64b914a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f29, f21, f17, dyn # perform operation
fmul.s f29, f21, f17, rdn # perform operation
fmul.s f29, f21, f17, rmm # perform operation
fmul.s f29, f21, f17, rne # perform operation
fmul.s f29, f21, f17, rtz # perform operation
fmul.s f29, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x3, 0x883e6c88d29e84ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fmul.s f3, f17, f10, dyn # perform operation
fmul.s f3, f17, f10, rdn # perform operation
fmul.s f3, f17, f10, rmm # perform operation
fmul.s f3, f17, f10, rne # perform operation
fmul.s f3, f17, f10, rtz # perform operation
fmul.s f3, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x29, 0xdc9a25ca9a51c248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fmul.s f29, f19, f20, dyn # perform operation
fmul.s f29, f19, f20, rdn # perform operation
fmul.s f29, f19, f20, rmm # perform operation
fmul.s f29, f19, f20, rne # perform operation
fmul.s f29, f19, f20, rtz # perform operation
fmul.s f29, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x30, 0x14973320da223fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fmul.s f30, f18, f5, dyn # perform operation
fmul.s f30, f18, f5, rdn # perform operation
fmul.s f30, f18, f5, rmm # perform operation
fmul.s f30, f18, f5, rne # perform operation
fmul.s f30, f18, f5, rtz # perform operation
fmul.s f30, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x4, 0x29651757949a7085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmul.s f4, f19, f12, dyn # perform operation
fmul.s f4, f19, f12, rdn # perform operation
fmul.s f4, f19, f12, rmm # perform operation
fmul.s f4, f19, f12, rne # perform operation
fmul.s f4, f19, f12, rtz # perform operation
fmul.s f4, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x16, 0x8347dd6f0b9f0806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fmul.s f16, f26, f13, dyn # perform operation
fmul.s f16, f26, f13, rdn # perform operation
fmul.s f16, f26, f13, rmm # perform operation
fmul.s f16, f26, f13, rne # perform operation
fmul.s f16, f26, f13, rtz # perform operation
fmul.s f16, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x16, 0xc02c067d51fb6fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fmul.s f16, f27, f17, dyn # perform operation
fmul.s f16, f27, f17, rdn # perform operation
fmul.s f16, f27, f17, rmm # perform operation
fmul.s f16, f27, f17, rne # perform operation
fmul.s f16, f27, f17, rtz # perform operation
fmul.s f16, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x12, 0x04b2f51eeb1c5ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fmul.s f12, f13, f28, dyn # perform operation
fmul.s f12, f13, f28, rdn # perform operation
fmul.s f12, f13, f28, rmm # perform operation
fmul.s f12, f13, f28, rne # perform operation
fmul.s f12, f13, f28, rtz # perform operation
fmul.s f12, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x3, 0x467ce54505209b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f3, f10, f26, dyn # perform operation
fmul.s f3, f10, f26, rdn # perform operation
fmul.s f3, f10, f26, rmm # perform operation
fmul.s f3, f10, f26, rne # perform operation
fmul.s f3, f10, f26, rtz # perform operation
fmul.s f3, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x26, 0xe5ca9f0b0660a27f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f26, f16, f25, dyn # perform operation
fmul.s f26, f16, f25, rdn # perform operation
fmul.s f26, f16, f25, rmm # perform operation
fmul.s f26, f16, f25, rne # perform operation
fmul.s f26, f16, f25, rtz # perform operation
fmul.s f26, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x1, 0x4f22c48b75f7f1a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fmul.s f1, f7, f10, dyn # perform operation
fmul.s f1, f7, f10, rdn # perform operation
fmul.s f1, f7, f10, rmm # perform operation
fmul.s f1, f7, f10, rne # perform operation
fmul.s f1, f7, f10, rtz # perform operation
fmul.s f1, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x21, 0xb7d8753401de179a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fmul.s f21, f15, f30, dyn # perform operation
fmul.s f21, f15, f30, rdn # perform operation
fmul.s f21, f15, f30, rmm # perform operation
fmul.s f21, f15, f30, rne # perform operation
fmul.s f21, f15, f30, rtz # perform operation
fmul.s f21, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x5, 0x5e789ffffca40337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fmul.s f5, f15, f10, dyn # perform operation
fmul.s f5, f15, f10, rdn # perform operation
fmul.s f5, f15, f10, rmm # perform operation
fmul.s f5, f15, f10, rne # perform operation
fmul.s f5, f15, f10, rtz # perform operation
fmul.s f5, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x17, 0x506ec460fabc7d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmul.s f17, f23, f6, dyn # perform operation
fmul.s f17, f23, f6, rdn # perform operation
fmul.s f17, f23, f6, rmm # perform operation
fmul.s f17, f23, f6, rne # perform operation
fmul.s f17, f23, f6, rtz # perform operation
fmul.s f17, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x10, 0xf7bafb74dfde0d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f10, f31, f20, dyn # perform operation
fmul.s f10, f31, f20, rdn # perform operation
fmul.s f10, f31, f20, rmm # perform operation
fmul.s f10, f31, f20, rne # perform operation
fmul.s f10, f31, f20, rtz # perform operation
fmul.s f10, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x29, 0xe6d7ea7601929d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f29, f5, f12, dyn # perform operation
fmul.s f29, f5, f12, rdn # perform operation
fmul.s f29, f5, f12, rmm # perform operation
fmul.s f29, f5, f12, rne # perform operation
fmul.s f29, f5, f12, rtz # perform operation
fmul.s f29, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x27, 0xead89c3ce241ad7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmul.s f27, f4, f2, dyn # perform operation
fmul.s f27, f4, f2, rdn # perform operation
fmul.s f27, f4, f2, rmm # perform operation
fmul.s f27, f4, f2, rne # perform operation
fmul.s f27, f4, f2, rtz # perform operation
fmul.s f27, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x18, 0xeab70931199ceb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fmul.s f18, f11, f25, dyn # perform operation
fmul.s f18, f11, f25, rdn # perform operation
fmul.s f18, f11, f25, rmm # perform operation
fmul.s f18, f11, f25, rne # perform operation
fmul.s f18, f11, f25, rtz # perform operation
fmul.s f18, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x4, 0x469b89df1de276e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fmul.s f4, f17, f9, dyn # perform operation
fmul.s f4, f17, f9, rdn # perform operation
fmul.s f4, f17, f9, rmm # perform operation
fmul.s f4, f17, f9, rne # perform operation
fmul.s f4, f17, f9, rtz # perform operation
fmul.s f4, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x31, 0x2ee0174c72efcf35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fmul.s f31, f20, f16, dyn # perform operation
fmul.s f31, f20, f16, rdn # perform operation
fmul.s f31, f20, f16, rmm # perform operation
fmul.s f31, f20, f16, rne # perform operation
fmul.s f31, f20, f16, rtz # perform operation
fmul.s f31, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x16, 0xee0b7fd3b27fb82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fmul.s f16, f22, f20, dyn # perform operation
fmul.s f16, f22, f20, rdn # perform operation
fmul.s f16, f22, f20, rmm # perform operation
fmul.s f16, f22, f20, rne # perform operation
fmul.s f16, f22, f20, rtz # perform operation
fmul.s f16, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x12, 0x0ab9f9856300b50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fmul.s f12, f28, f16, dyn # perform operation
fmul.s f12, f28, f16, rdn # perform operation
fmul.s f12, f28, f16, rmm # perform operation
fmul.s f12, f28, f16, rne # perform operation
fmul.s f12, f28, f16, rtz # perform operation
fmul.s f12, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x24, 0x49bc207bdf0ce561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fmul.s f24, f8, f15, dyn # perform operation
fmul.s f24, f8, f15, rdn # perform operation
fmul.s f24, f8, f15, rmm # perform operation
fmul.s f24, f8, f15, rne # perform operation
fmul.s f24, f8, f15, rtz # perform operation
fmul.s f24, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x25, 0x539e538d9cb2861b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fmul.s f25, f5, f18, dyn # perform operation
fmul.s f25, f5, f18, rdn # perform operation
fmul.s f25, f5, f18, rmm # perform operation
fmul.s f25, f5, f18, rne # perform operation
fmul.s f25, f5, f18, rtz # perform operation
fmul.s f25, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x24, 0x819a39340a421776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f24, f9, f12, dyn # perform operation
fmul.s f24, f9, f12, rdn # perform operation
fmul.s f24, f9, f12, rmm # perform operation
fmul.s f24, f9, f12, rne # perform operation
fmul.s f24, f9, f12, rtz # perform operation
fmul.s f24, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x29, 0x26bc29d65ee2f77e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f29, f5, f14, dyn # perform operation
fmul.s f29, f5, f14, rdn # perform operation
fmul.s f29, f5, f14, rmm # perform operation
fmul.s f29, f5, f14, rne # perform operation
fmul.s f29, f5, f14, rtz # perform operation
fmul.s f29, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x29, 0xa593561a2713ae67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmul.s f29, f20, f30, dyn # perform operation
fmul.s f29, f20, f30, rdn # perform operation
fmul.s f29, f20, f30, rmm # perform operation
fmul.s f29, f20, f30, rne # perform operation
fmul.s f29, f20, f30, rtz # perform operation
fmul.s f29, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x28, 0x6fc2045f41188428 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fmul.s f28, f1, f16, dyn # perform operation
fmul.s f28, f1, f16, rdn # perform operation
fmul.s f28, f1, f16, rmm # perform operation
fmul.s f28, f1, f16, rne # perform operation
fmul.s f28, f1, f16, rtz # perform operation
fmul.s f28, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x4, 0x2695b7d46ecc167b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fmul.s f4, f14, f7, dyn # perform operation
fmul.s f4, f14, f7, rdn # perform operation
fmul.s f4, f14, f7, rmm # perform operation
fmul.s f4, f14, f7, rne # perform operation
fmul.s f4, f14, f7, rtz # perform operation
fmul.s f4, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x20, 0x39182a54e92095a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f20, f11, f9, dyn # perform operation
fmul.s f20, f11, f9, rdn # perform operation
fmul.s f20, f11, f9, rmm # perform operation
fmul.s f20, f11, f9, rne # perform operation
fmul.s f20, f11, f9, rtz # perform operation
fmul.s f20, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x8, 0x365ffb8e682ff79f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f8, f9, f13, dyn # perform operation
fmul.s f8, f9, f13, rdn # perform operation
fmul.s f8, f9, f13, rmm # perform operation
fmul.s f8, f9, f13, rne # perform operation
fmul.s f8, f9, f13, rtz # perform operation
fmul.s f8, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x22, 0x925ad008ef7a2eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fmul.s f22, f10, f12, dyn # perform operation
fmul.s f22, f10, f12, rdn # perform operation
fmul.s f22, f10, f12, rmm # perform operation
fmul.s f22, f10, f12, rne # perform operation
fmul.s f22, f10, f12, rtz # perform operation
fmul.s f22, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x16, 0x440424d359e4b84a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fmul.s f16, f20, f27, dyn # perform operation
fmul.s f16, f20, f27, rdn # perform operation
fmul.s f16, f20, f27, rmm # perform operation
fmul.s f16, f20, f27, rne # perform operation
fmul.s f16, f20, f27, rtz # perform operation
fmul.s f16, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x6, 0x2970ce74b8854aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fmul.s f6, f16, f29, dyn # perform operation
fmul.s f6, f16, f29, rdn # perform operation
fmul.s f6, f16, f29, rmm # perform operation
fmul.s f6, f16, f29, rne # perform operation
fmul.s f6, f16, f29, rtz # perform operation
fmul.s f6, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x12, 0xcab8853c38e0f6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fmul.s f12, f11, f25, dyn # perform operation
fmul.s f12, f11, f25, rdn # perform operation
fmul.s f12, f11, f25, rmm # perform operation
fmul.s f12, f11, f25, rne # perform operation
fmul.s f12, f11, f25, rtz # perform operation
fmul.s f12, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x5, 0x42558d86589bfe2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fmul.s f5, f17, f23, dyn # perform operation
fmul.s f5, f17, f23, rdn # perform operation
fmul.s f5, f17, f23, rmm # perform operation
fmul.s f5, f17, f23, rne # perform operation
fmul.s f5, f17, f23, rtz # perform operation
fmul.s f5, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x7, 0x9f6885596713d2dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fmul.s f7, f14, f30, dyn # perform operation
fmul.s f7, f14, f30, rdn # perform operation
fmul.s f7, f14, f30, rmm # perform operation
fmul.s f7, f14, f30, rne # perform operation
fmul.s f7, f14, f30, rtz # perform operation
fmul.s f7, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x29, 0x61f20383edd94bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f29, f17, f18, dyn # perform operation
fmul.s f29, f17, f18, rdn # perform operation
fmul.s f29, f17, f18, rmm # perform operation
fmul.s f29, f17, f18, rne # perform operation
fmul.s f29, f17, f18, rtz # perform operation
fmul.s f29, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x5, 0xf66111eef4e3fac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f5, f2, f15, dyn # perform operation
fmul.s f5, f2, f15, rdn # perform operation
fmul.s f5, f2, f15, rmm # perform operation
fmul.s f5, f2, f15, rne # perform operation
fmul.s f5, f2, f15, rtz # perform operation
fmul.s f5, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x23, 0xe64e7d49a6f7d5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fmul.s f23, f28, f3, dyn # perform operation
fmul.s f23, f28, f3, rdn # perform operation
fmul.s f23, f28, f3, rmm # perform operation
fmul.s f23, f28, f3, rne # perform operation
fmul.s f23, f28, f3, rtz # perform operation
fmul.s f23, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x26, 0x88d2b07cfa3678d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmul.s f26, f7, f17, dyn # perform operation
fmul.s f26, f7, f17, rdn # perform operation
fmul.s f26, f7, f17, rmm # perform operation
fmul.s f26, f7, f17, rne # perform operation
fmul.s f26, f7, f17, rtz # perform operation
fmul.s f26, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x26, 0x95462f500367c4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fmul.s f26, f22, f28, dyn # perform operation
fmul.s f26, f22, f28, rdn # perform operation
fmul.s f26, f22, f28, rmm # perform operation
fmul.s f26, f22, f28, rne # perform operation
fmul.s f26, f22, f28, rtz # perform operation
fmul.s f26, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x4, 0x244c87b1ef0f3b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f4, f27, f11, dyn # perform operation
fmul.s f4, f27, f11, rdn # perform operation
fmul.s f4, f27, f11, rmm # perform operation
fmul.s f4, f27, f11, rne # perform operation
fmul.s f4, f27, f11, rtz # perform operation
fmul.s f4, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x13, 0x7019feb616d6191f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fmul.s f13, f23, f20, dyn # perform operation
fmul.s f13, f23, f20, rdn # perform operation
fmul.s f13, f23, f20, rmm # perform operation
fmul.s f13, f23, f20, rne # perform operation
fmul.s f13, f23, f20, rtz # perform operation
fmul.s f13, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x1, 0xf039f334635ec7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmul.s f1, f9, f13, dyn # perform operation
fmul.s f1, f9, f13, rdn # perform operation
fmul.s f1, f9, f13, rmm # perform operation
fmul.s f1, f9, f13, rne # perform operation
fmul.s f1, f9, f13, rtz # perform operation
fmul.s f1, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x25, 0x795cf3f0ec00a7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmul.s f25, f14, f5, dyn # perform operation
fmul.s f25, f14, f5, rdn # perform operation
fmul.s f25, f14, f5, rmm # perform operation
fmul.s f25, f14, f5, rne # perform operation
fmul.s f25, f14, f5, rtz # perform operation
fmul.s f25, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x25, 0x0c83aa3bc91ac5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmul.s f25, f28, f11, dyn # perform operation
fmul.s f25, f28, f11, rdn # perform operation
fmul.s f25, f28, f11, rmm # perform operation
fmul.s f25, f28, f11, rne # perform operation
fmul.s f25, f28, f11, rtz # perform operation
fmul.s f25, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x26, 0x5c26cbe430f3a63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fmul.s f26, f25, f13, dyn # perform operation
fmul.s f26, f25, f13, rdn # perform operation
fmul.s f26, f25, f13, rmm # perform operation
fmul.s f26, f25, f13, rne # perform operation
fmul.s f26, f25, f13, rtz # perform operation
fmul.s f26, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x24, 0xefdda7b368f6b2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f24, f30, f20, dyn # perform operation
fmul.s f24, f30, f20, rdn # perform operation
fmul.s f24, f30, f20, rmm # perform operation
fmul.s f24, f30, f20, rne # perform operation
fmul.s f24, f30, f20, rtz # perform operation
fmul.s f24, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x22, 0x18c20d8340c7a41d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmul.s f22, f19, f4, dyn # perform operation
fmul.s f22, f19, f4, rdn # perform operation
fmul.s f22, f19, f4, rmm # perform operation
fmul.s f22, f19, f4, rne # perform operation
fmul.s f22, f19, f4, rtz # perform operation
fmul.s f22, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x10, 0x27b8bf9934edb021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fmul.s f10, f14, f4, dyn # perform operation
fmul.s f10, f14, f4, rdn # perform operation
fmul.s f10, f14, f4, rmm # perform operation
fmul.s f10, f14, f4, rne # perform operation
fmul.s f10, f14, f4, rtz # perform operation
fmul.s f10, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x10, 0x1d0bc94ef88fd675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fmul.s f10, f31, f28, dyn # perform operation
fmul.s f10, f31, f28, rdn # perform operation
fmul.s f10, f31, f28, rmm # perform operation
fmul.s f10, f31, f28, rne # perform operation
fmul.s f10, f31, f28, rtz # perform operation
fmul.s f10, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x27, 0x91012d691674eed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fmul.s f27, f21, f19, dyn # perform operation
fmul.s f27, f21, f19, rdn # perform operation
fmul.s f27, f21, f19, rmm # perform operation
fmul.s f27, f21, f19, rne # perform operation
fmul.s f27, f21, f19, rtz # perform operation
fmul.s f27, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x29, 0xff33edfcb859bc49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fmul.s f29, f5, f21, dyn # perform operation
fmul.s f29, f5, f21, rdn # perform operation
fmul.s f29, f5, f21, rmm # perform operation
fmul.s f29, f5, f21, rne # perform operation
fmul.s f29, f5, f21, rtz # perform operation
fmul.s f29, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x9, 0xd3e749f8c17c10cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f9, f30, f10, dyn # perform operation
fmul.s f9, f30, f10, rdn # perform operation
fmul.s f9, f30, f10, rmm # perform operation
fmul.s f9, f30, f10, rne # perform operation
fmul.s f9, f30, f10, rtz # perform operation
fmul.s f9, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x31, 0xabbfc3d85e3d30cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fmul.s f31, f18, f7, dyn # perform operation
fmul.s f31, f18, f7, rdn # perform operation
fmul.s f31, f18, f7, rmm # perform operation
fmul.s f31, f18, f7, rne # perform operation
fmul.s f31, f18, f7, rtz # perform operation
fmul.s f31, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x3, 0x4b1404651de6fb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fmul.s f3, f24, f22, dyn # perform operation
fmul.s f3, f24, f22, rdn # perform operation
fmul.s f3, f24, f22, rmm # perform operation
fmul.s f3, f24, f22, rne # perform operation
fmul.s f3, f24, f22, rtz # perform operation
fmul.s f3, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x30, 0x25b470ae4e7427f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fmul.s f30, f4, f9, dyn # perform operation
fmul.s f30, f4, f9, rdn # perform operation
fmul.s f30, f4, f9, rmm # perform operation
fmul.s f30, f4, f9, rne # perform operation
fmul.s f30, f4, f9, rtz # perform operation
fmul.s f30, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x2, 0x569cea8effa4b2c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f2, f5, f22, dyn # perform operation
fmul.s f2, f5, f22, rdn # perform operation
fmul.s f2, f5, f22, rmm # perform operation
fmul.s f2, f5, f22, rne # perform operation
fmul.s f2, f5, f22, rtz # perform operation
fmul.s f2, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x28, 0xe5ddec07f01c029c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f28, f23, f15, dyn # perform operation
fmul.s f28, f23, f15, rdn # perform operation
fmul.s f28, f23, f15, rmm # perform operation
fmul.s f28, f23, f15, rne # perform operation
fmul.s f28, f23, f15, rtz # perform operation
fmul.s f28, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x9, 0x1b9d499399393bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f9, f16, f8, dyn # perform operation
fmul.s f9, f16, f8, rdn # perform operation
fmul.s f9, f16, f8, rmm # perform operation
fmul.s f9, f16, f8, rne # perform operation
fmul.s f9, f16, f8, rtz # perform operation
fmul.s f9, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x7, 0x7a654bc4fa686b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fmul.s f7, f19, f8, dyn # perform operation
fmul.s f7, f19, f8, rdn # perform operation
fmul.s f7, f19, f8, rmm # perform operation
fmul.s f7, f19, f8, rne # perform operation
fmul.s f7, f19, f8, rtz # perform operation
fmul.s f7, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x21, 0x3b2de6d4de677cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmul.s f21, f30, f7, dyn # perform operation
fmul.s f21, f30, f7, rdn # perform operation
fmul.s f21, f30, f7, rmm # perform operation
fmul.s f21, f30, f7, rne # perform operation
fmul.s f21, f30, f7, rtz # perform operation
fmul.s f21, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x3, 0x05af29e73a67198b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmul.s f3, f8, f1, dyn # perform operation
fmul.s f3, f8, f1, rdn # perform operation
fmul.s f3, f8, f1, rmm # perform operation
fmul.s f3, f8, f1, rne # perform operation
fmul.s f3, f8, f1, rtz # perform operation
fmul.s f3, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x13, 0x6aa769af77a60ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f13, f7, f15, dyn # perform operation
fmul.s f13, f7, f15, rdn # perform operation
fmul.s f13, f7, f15, rmm # perform operation
fmul.s f13, f7, f15, rne # perform operation
fmul.s f13, f7, f15, rtz # perform operation
fmul.s f13, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x31, 0xe057d22acd5bf5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f31, f1, f12, dyn # perform operation
fmul.s f31, f1, f12, rdn # perform operation
fmul.s f31, f1, f12, rmm # perform operation
fmul.s f31, f1, f12, rne # perform operation
fmul.s f31, f1, f12, rtz # perform operation
fmul.s f31, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x12, 0xf9c9f75b1dc6ec4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fmul.s f12, f4, f26, dyn # perform operation
fmul.s f12, f4, f26, rdn # perform operation
fmul.s f12, f4, f26, rmm # perform operation
fmul.s f12, f4, f26, rne # perform operation
fmul.s f12, f4, f26, rtz # perform operation
fmul.s f12, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x7, 0xb5ac445920d66672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f7, f14, f23, dyn # perform operation
fmul.s f7, f14, f23, rdn # perform operation
fmul.s f7, f14, f23, rmm # perform operation
fmul.s f7, f14, f23, rne # perform operation
fmul.s f7, f14, f23, rtz # perform operation
fmul.s f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x27, 0x73a8fb280315837b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fmul.s f27, f28, f13, dyn # perform operation
fmul.s f27, f28, f13, rdn # perform operation
fmul.s f27, f28, f13, rmm # perform operation
fmul.s f27, f28, f13, rne # perform operation
fmul.s f27, f28, f13, rtz # perform operation
fmul.s f27, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x18, 0xe00bbaf39c0544b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmul.s f18, f12, f17, dyn # perform operation
fmul.s f18, f12, f17, rdn # perform operation
fmul.s f18, f12, f17, rmm # perform operation
fmul.s f18, f12, f17, rne # perform operation
fmul.s f18, f12, f17, rtz # perform operation
fmul.s f18, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x16, 0xddae9c7cd8914ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f16, f27, f10, dyn # perform operation
fmul.s f16, f27, f10, rdn # perform operation
fmul.s f16, f27, f10, rmm # perform operation
fmul.s f16, f27, f10, rne # perform operation
fmul.s f16, f27, f10, rtz # perform operation
fmul.s f16, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x15, 0x78471c77351bd65e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fmul.s f15, f9, f16, dyn # perform operation
fmul.s f15, f9, f16, rdn # perform operation
fmul.s f15, f9, f16, rmm # perform operation
fmul.s f15, f9, f16, rne # perform operation
fmul.s f15, f9, f16, rtz # perform operation
fmul.s f15, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x18, 0x7372d6adb62c6162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmul.s f18, f20, f11, dyn # perform operation
fmul.s f18, f20, f11, rdn # perform operation
fmul.s f18, f20, f11, rmm # perform operation
fmul.s f18, f20, f11, rne # perform operation
fmul.s f18, f20, f11, rtz # perform operation
fmul.s f18, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x27, 0xdf52eab84be73dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f27, f15, f29, dyn # perform operation
fmul.s f27, f15, f29, rdn # perform operation
fmul.s f27, f15, f29, rmm # perform operation
fmul.s f27, f15, f29, rne # perform operation
fmul.s f27, f15, f29, rtz # perform operation
fmul.s f27, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x24, 0x6c6935d5046a6e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fmul.s f24, f9, f5, dyn # perform operation
fmul.s f24, f9, f5, rdn # perform operation
fmul.s f24, f9, f5, rmm # perform operation
fmul.s f24, f9, f5, rne # perform operation
fmul.s f24, f9, f5, rtz # perform operation
fmul.s f24, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x18, 0x390895c14b20d87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f18, f22, f3, dyn # perform operation
fmul.s f18, f22, f3, rdn # perform operation
fmul.s f18, f22, f3, rmm # perform operation
fmul.s f18, f22, f3, rne # perform operation
fmul.s f18, f22, f3, rtz # perform operation
fmul.s f18, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x20, 0xd2b1b342efbdf311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fmul.s f20, f31, f24, dyn # perform operation
fmul.s f20, f31, f24, rdn # perform operation
fmul.s f20, f31, f24, rmm # perform operation
fmul.s f20, f31, f24, rne # perform operation
fmul.s f20, f31, f24, rtz # perform operation
fmul.s f20, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x8, 0xc00afc4c04e81ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fmul.s f8, f19, f12, dyn # perform operation
fmul.s f8, f19, f12, rdn # perform operation
fmul.s f8, f19, f12, rmm # perform operation
fmul.s f8, f19, f12, rne # perform operation
fmul.s f8, f19, f12, rtz # perform operation
fmul.s f8, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x30, 0x74a8d3602890bb8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmul.s f30, f24, f12, dyn # perform operation
fmul.s f30, f24, f12, rdn # perform operation
fmul.s f30, f24, f12, rmm # perform operation
fmul.s f30, f24, f12, rne # perform operation
fmul.s f30, f24, f12, rtz # perform operation
fmul.s f30, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x8, 0x59d118455730173f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f8, f1, f11, dyn # perform operation
fmul.s f8, f1, f11, rdn # perform operation
fmul.s f8, f1, f11, rmm # perform operation
fmul.s f8, f1, f11, rne # perform operation
fmul.s f8, f1, f11, rtz # perform operation
fmul.s f8, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x25, 0xdefb270e057ed554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmul.s f25, f9, f18, dyn # perform operation
fmul.s f25, f9, f18, rdn # perform operation
fmul.s f25, f9, f18, rmm # perform operation
fmul.s f25, f9, f18, rne # perform operation
fmul.s f25, f9, f18, rtz # perform operation
fmul.s f25, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x2, 0x6a5d34c7159e1166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fmul.s f2, f25, f26, dyn # perform operation
fmul.s f2, f25, f26, rdn # perform operation
fmul.s f2, f25, f26, rmm # perform operation
fmul.s f2, f25, f26, rne # perform operation
fmul.s f2, f25, f26, rtz # perform operation
fmul.s f2, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x30, 0x8a07cfd6d45e9745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmul.s f30, f16, f12, dyn # perform operation
fmul.s f30, f16, f12, rdn # perform operation
fmul.s f30, f16, f12, rmm # perform operation
fmul.s f30, f16, f12, rne # perform operation
fmul.s f30, f16, f12, rtz # perform operation
fmul.s f30, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x9, 0x8df9dd7e670e3e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fmul.s f9, f11, f13, dyn # perform operation
fmul.s f9, f11, f13, rdn # perform operation
fmul.s f9, f11, f13, rmm # perform operation
fmul.s f9, f11, f13, rne # perform operation
fmul.s f9, f11, f13, rtz # perform operation
fmul.s f9, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x25, 0x0dcc68edc09227c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fmul.s f25, f12, f13, dyn # perform operation
fmul.s f25, f12, f13, rdn # perform operation
fmul.s f25, f12, f13, rmm # perform operation
fmul.s f25, f12, f13, rne # perform operation
fmul.s f25, f12, f13, rtz # perform operation
fmul.s f25, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x21, 0xc058622ee488178f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fmul.s f21, f8, f22, dyn # perform operation
fmul.s f21, f8, f22, rdn # perform operation
fmul.s f21, f8, f22, rmm # perform operation
fmul.s f21, f8, f22, rne # perform operation
fmul.s f21, f8, f22, rtz # perform operation
fmul.s f21, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x11, 0x9212fb90f6b2f086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f11, f12, f21, dyn # perform operation
fmul.s f11, f12, f21, rdn # perform operation
fmul.s f11, f12, f21, rmm # perform operation
fmul.s f11, f12, f21, rne # perform operation
fmul.s f11, f12, f21, rtz # perform operation
fmul.s f11, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x21, 0xa7b3c7927fca0bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fmul.s f21, f18, f8, dyn # perform operation
fmul.s f21, f18, f8, rdn # perform operation
fmul.s f21, f18, f8, rmm # perform operation
fmul.s f21, f18, f8, rne # perform operation
fmul.s f21, f18, f8, rtz # perform operation
fmul.s f21, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x30, 0x6225fdc0c674498e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fmul.s f30, f2, f18, dyn # perform operation
fmul.s f30, f2, f18, rdn # perform operation
fmul.s f30, f2, f18, rmm # perform operation
fmul.s f30, f2, f18, rne # perform operation
fmul.s f30, f2, f18, rtz # perform operation
fmul.s f30, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x24, 0xcd298d541d65c428 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fmul.s f24, f23, f28, dyn # perform operation
fmul.s f24, f23, f28, rdn # perform operation
fmul.s f24, f23, f28, rmm # perform operation
fmul.s f24, f23, f28, rne # perform operation
fmul.s f24, f23, f28, rtz # perform operation
fmul.s f24, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x18, 0x228fec8a16166fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fmul.s f18, f23, f6, dyn # perform operation
fmul.s f18, f23, f6, rdn # perform operation
fmul.s f18, f23, f6, rmm # perform operation
fmul.s f18, f23, f6, rne # perform operation
fmul.s f18, f23, f6, rtz # perform operation
fmul.s f18, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x11, 0x58107b5a4d0ec54c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f11, f13, f12, dyn # perform operation
fmul.s f11, f13, f12, rdn # perform operation
fmul.s f11, f13, f12, rmm # perform operation
fmul.s f11, f13, f12, rne # perform operation
fmul.s f11, f13, f12, rtz # perform operation
fmul.s f11, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x1, 0x93fd9e31cafda1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fmul.s f1, f25, f6, dyn # perform operation
fmul.s f1, f25, f6, rdn # perform operation
fmul.s f1, f25, f6, rmm # perform operation
fmul.s f1, f25, f6, rne # perform operation
fmul.s f1, f25, f6, rtz # perform operation
fmul.s f1, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x19, 0x300ca284ee7934b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fmul.s f19, f16, f10, dyn # perform operation
fmul.s f19, f16, f10, rdn # perform operation
fmul.s f19, f16, f10, rmm # perform operation
fmul.s f19, f16, f10, rne # perform operation
fmul.s f19, f16, f10, rtz # perform operation
fmul.s f19, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x1, 0x3bd1cfc7507dce86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f1, f15, f20, dyn # perform operation
fmul.s f1, f15, f20, rdn # perform operation
fmul.s f1, f15, f20, rmm # perform operation
fmul.s f1, f15, f20, rne # perform operation
fmul.s f1, f15, f20, rtz # perform operation
fmul.s f1, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x5, 0x47867a1cfc5c57f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fmul.s f5, f6, f1, dyn # perform operation
fmul.s f5, f6, f1, rdn # perform operation
fmul.s f5, f6, f1, rmm # perform operation
fmul.s f5, f6, f1, rne # perform operation
fmul.s f5, f6, f1, rtz # perform operation
fmul.s f5, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x25, 0x4c49f1f4035279e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fmul.s f25, f15, f7, dyn # perform operation
fmul.s f25, f15, f7, rdn # perform operation
fmul.s f25, f15, f7, rmm # perform operation
fmul.s f25, f15, f7, rne # perform operation
fmul.s f25, f15, f7, rtz # perform operation
fmul.s f25, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x1, 0x95a1e9c58f417288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f1, f25, f27, dyn # perform operation
fmul.s f1, f25, f27, rdn # perform operation
fmul.s f1, f25, f27, rmm # perform operation
fmul.s f1, f25, f27, rne # perform operation
fmul.s f1, f25, f27, rtz # perform operation
fmul.s f1, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x24, 0xfbc6958329a0903a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f24, f27, f7, dyn # perform operation
fmul.s f24, f27, f7, rdn # perform operation
fmul.s f24, f27, f7, rmm # perform operation
fmul.s f24, f27, f7, rne # perform operation
fmul.s f24, f27, f7, rtz # perform operation
fmul.s f24, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x15, 0x374129ef1758cd1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fmul.s f15, f8, f11, dyn # perform operation
fmul.s f15, f8, f11, rdn # perform operation
fmul.s f15, f8, f11, rmm # perform operation
fmul.s f15, f8, f11, rne # perform operation
fmul.s f15, f8, f11, rtz # perform operation
fmul.s f15, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x25, 0xd77719f0f04453b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fmul.s f25, f14, f11, dyn # perform operation
fmul.s f25, f14, f11, rdn # perform operation
fmul.s f25, f14, f11, rmm # perform operation
fmul.s f25, f14, f11, rne # perform operation
fmul.s f25, f14, f11, rtz # perform operation
fmul.s f25, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x2, 0xdb629226b564249a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fmul.s f2, f19, f6, dyn # perform operation
fmul.s f2, f19, f6, rdn # perform operation
fmul.s f2, f19, f6, rmm # perform operation
fmul.s f2, f19, f6, rne # perform operation
fmul.s f2, f19, f6, rtz # perform operation
fmul.s f2, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x19, 0x32540bc5d4661c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fmul.s f19, f24, f26, dyn # perform operation
fmul.s f19, f24, f26, rdn # perform operation
fmul.s f19, f24, f26, rmm # perform operation
fmul.s f19, f24, f26, rne # perform operation
fmul.s f19, f24, f26, rtz # perform operation
fmul.s f19, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x15, 0xd7f793195e9e8241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmul.s f15, f18, f21, dyn # perform operation
fmul.s f15, f18, f21, rdn # perform operation
fmul.s f15, f18, f21, rmm # perform operation
fmul.s f15, f18, f21, rne # perform operation
fmul.s f15, f18, f21, rtz # perform operation
fmul.s f15, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x23, 0xa434026fed44310a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fmul.s f23, f16, f5, dyn # perform operation
fmul.s f23, f16, f5, rdn # perform operation
fmul.s f23, f16, f5, rmm # perform operation
fmul.s f23, f16, f5, rne # perform operation
fmul.s f23, f16, f5, rtz # perform operation
fmul.s f23, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x29, 0x270ed203c1d3ef5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fmul.s f29, f4, f22, dyn # perform operation
fmul.s f29, f4, f22, rdn # perform operation
fmul.s f29, f4, f22, rmm # perform operation
fmul.s f29, f4, f22, rne # perform operation
fmul.s f29, f4, f22, rtz # perform operation
fmul.s f29, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x8, 0xb0aa94ff73d317a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fmul.s f8, f7, f6, dyn # perform operation
fmul.s f8, f7, f6, rdn # perform operation
fmul.s f8, f7, f6, rmm # perform operation
fmul.s f8, f7, f6, rne # perform operation
fmul.s f8, f7, f6, rtz # perform operation
fmul.s f8, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x29, 0x19227ebc264b0a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fmul.s f29, f16, f26, dyn # perform operation
fmul.s f29, f16, f26, rdn # perform operation
fmul.s f29, f16, f26, rmm # perform operation
fmul.s f29, f16, f26, rne # perform operation
fmul.s f29, f16, f26, rtz # perform operation
fmul.s f29, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x18, 0x40a487a571144a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fmul.s f18, f16, f4, dyn # perform operation
fmul.s f18, f16, f4, rdn # perform operation
fmul.s f18, f16, f4, rmm # perform operation
fmul.s f18, f16, f4, rne # perform operation
fmul.s f18, f16, f4, rtz # perform operation
fmul.s f18, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x12, 0x414ed98ad452cf3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fmul.s f12, f3, f6, dyn # perform operation
fmul.s f12, f3, f6, rdn # perform operation
fmul.s f12, f3, f6, rmm # perform operation
fmul.s f12, f3, f6, rne # perform operation
fmul.s f12, f3, f6, rtz # perform operation
fmul.s f12, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x26, 0xd96b546acfefa142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fmul.s f26, f12, f9, dyn # perform operation
fmul.s f26, f12, f9, rdn # perform operation
fmul.s f26, f12, f9, rmm # perform operation
fmul.s f26, f12, f9, rne # perform operation
fmul.s f26, f12, f9, rtz # perform operation
fmul.s f26, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x15, 0x5e65ed9651ce0842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fmul.s f15, f28, f12, dyn # perform operation
fmul.s f15, f28, f12, rdn # perform operation
fmul.s f15, f28, f12, rmm # perform operation
fmul.s f15, f28, f12, rne # perform operation
fmul.s f15, f28, f12, rtz # perform operation
fmul.s f15, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x10, 0x4ae7a6dadbb99d8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmul.s f10, f4, f14, dyn # perform operation
fmul.s f10, f4, f14, rdn # perform operation
fmul.s f10, f4, f14, rmm # perform operation
fmul.s f10, f4, f14, rne # perform operation
fmul.s f10, f4, f14, rtz # perform operation
fmul.s f10, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x22, 0x601b253fedf45df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fmul.s f22, f26, f4, dyn # perform operation
fmul.s f22, f26, f4, rdn # perform operation
fmul.s f22, f26, f4, rmm # perform operation
fmul.s f22, f26, f4, rne # perform operation
fmul.s f22, f26, f4, rtz # perform operation
fmul.s f22, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x4, 0xe5ebe612386663df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f4, f23, f17, dyn # perform operation
fmul.s f4, f23, f17, rdn # perform operation
fmul.s f4, f23, f17, rmm # perform operation
fmul.s f4, f23, f17, rne # perform operation
fmul.s f4, f23, f17, rtz # perform operation
fmul.s f4, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x21, 0x85c65d01167b4df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fmul.s f21, f1, f22, dyn # perform operation
fmul.s f21, f1, f22, rdn # perform operation
fmul.s f21, f1, f22, rmm # perform operation
fmul.s f21, f1, f22, rne # perform operation
fmul.s f21, f1, f22, rtz # perform operation
fmul.s f21, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x11, 0xbae90cf73fc401ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fmul.s f11, f21, f27, dyn # perform operation
fmul.s f11, f21, f27, rdn # perform operation
fmul.s f11, f21, f27, rmm # perform operation
fmul.s f11, f21, f27, rne # perform operation
fmul.s f11, f21, f27, rtz # perform operation
fmul.s f11, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x23, 0x0580a6a7a9831f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmul.s f23, f25, f31, dyn # perform operation
fmul.s f23, f25, f31, rdn # perform operation
fmul.s f23, f25, f31, rmm # perform operation
fmul.s f23, f25, f31, rne # perform operation
fmul.s f23, f25, f31, rtz # perform operation
fmul.s f23, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x22, 0x20b814efdc6f090f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmul.s f22, f15, f17, dyn # perform operation
fmul.s f22, f15, f17, rdn # perform operation
fmul.s f22, f15, f17, rmm # perform operation
fmul.s f22, f15, f17, rne # perform operation
fmul.s f22, f15, f17, rtz # perform operation
fmul.s f22, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x3, 0xe8a61475d8465a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f3, f19, f13, dyn # perform operation
fmul.s f3, f19, f13, rdn # perform operation
fmul.s f3, f19, f13, rmm # perform operation
fmul.s f3, f19, f13, rne # perform operation
fmul.s f3, f19, f13, rtz # perform operation
fmul.s f3, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x31, 0xa53b02c1bcdc3c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f31, f11, f5, dyn # perform operation
fmul.s f31, f11, f5, rdn # perform operation
fmul.s f31, f11, f5, rmm # perform operation
fmul.s f31, f11, f5, rne # perform operation
fmul.s f31, f11, f5, rtz # perform operation
fmul.s f31, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x16, 0xe4974bbb8d6cbcb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmul.s f16, f7, f27, dyn # perform operation
fmul.s f16, f7, f27, rdn # perform operation
fmul.s f16, f7, f27, rmm # perform operation
fmul.s f16, f7, f27, rne # perform operation
fmul.s f16, f7, f27, rtz # perform operation
fmul.s f16, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x7, 0x8fa710e6a62aac4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmul.s f7, f20, f5, dyn # perform operation
fmul.s f7, f20, f5, rdn # perform operation
fmul.s f7, f20, f5, rmm # perform operation
fmul.s f7, f20, f5, rne # perform operation
fmul.s f7, f20, f5, rtz # perform operation
fmul.s f7, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x27, 0x1cca4367880242a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f27, f28, f26, dyn # perform operation
fmul.s f27, f28, f26, rdn # perform operation
fmul.s f27, f28, f26, rmm # perform operation
fmul.s f27, f28, f26, rne # perform operation
fmul.s f27, f28, f26, rtz # perform operation
fmul.s f27, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x27, 0xac41d79f3403861b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f27, f12, f16, dyn # perform operation
fmul.s f27, f12, f16, rdn # perform operation
fmul.s f27, f12, f16, rmm # perform operation
fmul.s f27, f12, f16, rne # perform operation
fmul.s f27, f12, f16, rtz # perform operation
fmul.s f27, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x5, 0x8ab6d005526318d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fmul.s f5, f9, f27, dyn # perform operation
fmul.s f5, f9, f27, rdn # perform operation
fmul.s f5, f9, f27, rmm # perform operation
fmul.s f5, f9, f27, rne # perform operation
fmul.s f5, f9, f27, rtz # perform operation
fmul.s f5, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x24, 0xaf2caf192ff65a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fmul.s f24, f14, f2, dyn # perform operation
fmul.s f24, f14, f2, rdn # perform operation
fmul.s f24, f14, f2, rmm # perform operation
fmul.s f24, f14, f2, rne # perform operation
fmul.s f24, f14, f2, rtz # perform operation
fmul.s f24, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x21, 0x1e28d3a642c766d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f21, f12, f28, dyn # perform operation
fmul.s f21, f12, f28, rdn # perform operation
fmul.s f21, f12, f28, rmm # perform operation
fmul.s f21, f12, f28, rne # perform operation
fmul.s f21, f12, f28, rtz # perform operation
fmul.s f21, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x23, 0x50549e2662f1e7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmul.s f23, f21, f10, dyn # perform operation
fmul.s f23, f21, f10, rdn # perform operation
fmul.s f23, f21, f10, rmm # perform operation
fmul.s f23, f21, f10, rne # perform operation
fmul.s f23, f21, f10, rtz # perform operation
fmul.s f23, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x17, 0x39f017436b694f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmul.s f17, f31, f26, dyn # perform operation
fmul.s f17, f31, f26, rdn # perform operation
fmul.s f17, f31, f26, rmm # perform operation
fmul.s f17, f31, f26, rne # perform operation
fmul.s f17, f31, f26, rtz # perform operation
fmul.s f17, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x14, 0xbfcc18eb15db96f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fmul.s f14, f11, f20, dyn # perform operation
fmul.s f14, f11, f20, rdn # perform operation
fmul.s f14, f11, f20, rmm # perform operation
fmul.s f14, f11, f20, rne # perform operation
fmul.s f14, f11, f20, rtz # perform operation
fmul.s f14, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x14, 0x735f7532cc69d994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmul.s f14, f21, f23, dyn # perform operation
fmul.s f14, f21, f23, rdn # perform operation
fmul.s f14, f21, f23, rmm # perform operation
fmul.s f14, f21, f23, rne # perform operation
fmul.s f14, f21, f23, rtz # perform operation
fmul.s f14, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x13, 0xe6ffb3316daf0e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fmul.s f13, f10, f6, dyn # perform operation
fmul.s f13, f10, f6, rdn # perform operation
fmul.s f13, f10, f6, rmm # perform operation
fmul.s f13, f10, f6, rne # perform operation
fmul.s f13, f10, f6, rtz # perform operation
fmul.s f13, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x16, 0xf5619555d4b5333d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fmul.s f16, f31, f2, dyn # perform operation
fmul.s f16, f31, f2, rdn # perform operation
fmul.s f16, f31, f2, rmm # perform operation
fmul.s f16, f31, f2, rne # perform operation
fmul.s f16, f31, f2, rtz # perform operation
fmul.s f16, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x1, 0x9a62b6b15de840bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmul.s f1, f17, f6, dyn # perform operation
fmul.s f1, f17, f6, rdn # perform operation
fmul.s f1, f17, f6, rmm # perform operation
fmul.s f1, f17, f6, rne # perform operation
fmul.s f1, f17, f6, rtz # perform operation
fmul.s f1, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x17, 0xd0860ab01cbc082e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f17, f19, f22, dyn # perform operation
fmul.s f17, f19, f22, rdn # perform operation
fmul.s f17, f19, f22, rmm # perform operation
fmul.s f17, f19, f22, rne # perform operation
fmul.s f17, f19, f22, rtz # perform operation
fmul.s f17, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x17, 0x14f303e54a2c5f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmul.s f17, f23, f24, dyn # perform operation
fmul.s f17, f23, f24, rdn # perform operation
fmul.s f17, f23, f24, rmm # perform operation
fmul.s f17, f23, f24, rne # perform operation
fmul.s f17, f23, f24, rtz # perform operation
fmul.s f17, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x1, 0xada96d691fbc10fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fmul.s f1, f16, f29, dyn # perform operation
fmul.s f1, f16, f29, rdn # perform operation
fmul.s f1, f16, f29, rmm # perform operation
fmul.s f1, f16, f29, rne # perform operation
fmul.s f1, f16, f29, rtz # perform operation
fmul.s f1, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x26, 0x4d3c758401c822be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f26, f29, f21, dyn # perform operation
fmul.s f26, f29, f21, rdn # perform operation
fmul.s f26, f29, f21, rmm # perform operation
fmul.s f26, f29, f21, rne # perform operation
fmul.s f26, f29, f21, rtz # perform operation
fmul.s f26, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x9, 0x20c4ab3069b4ed2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fmul.s f9, f11, f2, dyn # perform operation
fmul.s f9, f11, f2, rdn # perform operation
fmul.s f9, f11, f2, rmm # perform operation
fmul.s f9, f11, f2, rne # perform operation
fmul.s f9, f11, f2, rtz # perform operation
fmul.s f9, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x5, 0x3825bed1359c9a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f5, f29, f17, dyn # perform operation
fmul.s f5, f29, f17, rdn # perform operation
fmul.s f5, f29, f17, rmm # perform operation
fmul.s f5, f29, f17, rne # perform operation
fmul.s f5, f29, f17, rtz # perform operation
fmul.s f5, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x8, 0x472e90213f3ab34b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fmul.s f8, f7, f28, dyn # perform operation
fmul.s f8, f7, f28, rdn # perform operation
fmul.s f8, f7, f28, rmm # perform operation
fmul.s f8, f7, f28, rne # perform operation
fmul.s f8, f7, f28, rtz # perform operation
fmul.s f8, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x19, 0x8108bbd79da1d5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f19, f24, f15, dyn # perform operation
fmul.s f19, f24, f15, rdn # perform operation
fmul.s f19, f24, f15, rmm # perform operation
fmul.s f19, f24, f15, rne # perform operation
fmul.s f19, f24, f15, rtz # perform operation
fmul.s f19, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x12, 0xd2dc67e9804bbb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fmul.s f12, f27, f3, dyn # perform operation
fmul.s f12, f27, f3, rdn # perform operation
fmul.s f12, f27, f3, rmm # perform operation
fmul.s f12, f27, f3, rne # perform operation
fmul.s f12, f27, f3, rtz # perform operation
fmul.s f12, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x10, 0xd8e75cdad42fa392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fmul.s f10, f22, f3, dyn # perform operation
fmul.s f10, f22, f3, rdn # perform operation
fmul.s f10, f22, f3, rmm # perform operation
fmul.s f10, f22, f3, rne # perform operation
fmul.s f10, f22, f3, rtz # perform operation
fmul.s f10, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x23, 0x1cef23e73fc04eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f23, f29, f27, dyn # perform operation
fmul.s f23, f29, f27, rdn # perform operation
fmul.s f23, f29, f27, rmm # perform operation
fmul.s f23, f29, f27, rne # perform operation
fmul.s f23, f29, f27, rtz # perform operation
fmul.s f23, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x18, 0x201c44a3f171a7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fmul.s f18, f12, f13, dyn # perform operation
fmul.s f18, f12, f13, rdn # perform operation
fmul.s f18, f12, f13, rmm # perform operation
fmul.s f18, f12, f13, rne # perform operation
fmul.s f18, f12, f13, rtz # perform operation
fmul.s f18, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x19, 0x82e157de4f6ecd83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fmul.s f19, f11, f1, dyn # perform operation
fmul.s f19, f11, f1, rdn # perform operation
fmul.s f19, f11, f1, rmm # perform operation
fmul.s f19, f11, f1, rne # perform operation
fmul.s f19, f11, f1, rtz # perform operation
fmul.s f19, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x24, 0x9622c6649a939139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f24, f25, f10, dyn # perform operation
fmul.s f24, f25, f10, rdn # perform operation
fmul.s f24, f25, f10, rmm # perform operation
fmul.s f24, f25, f10, rne # perform operation
fmul.s f24, f25, f10, rtz # perform operation
fmul.s f24, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x6, 0x6045e30fa5279eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f6, f30, f26, dyn # perform operation
fmul.s f6, f30, f26, rdn # perform operation
fmul.s f6, f30, f26, rmm # perform operation
fmul.s f6, f30, f26, rne # perform operation
fmul.s f6, f30, f26, rtz # perform operation
fmul.s f6, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x13, 0x7830acf268d09b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fmul.s f13, f4, f28, dyn # perform operation
fmul.s f13, f4, f28, rdn # perform operation
fmul.s f13, f4, f28, rmm # perform operation
fmul.s f13, f4, f28, rne # perform operation
fmul.s f13, f4, f28, rtz # perform operation
fmul.s f13, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x20, 0x03cb87bbbcff39cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f20, f15, f19, dyn # perform operation
fmul.s f20, f15, f19, rdn # perform operation
fmul.s f20, f15, f19, rmm # perform operation
fmul.s f20, f15, f19, rne # perform operation
fmul.s f20, f15, f19, rtz # perform operation
fmul.s f20, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x31, 0xa85e9ff0983f5fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fmul.s f31, f1, f22, dyn # perform operation
fmul.s f31, f1, f22, rdn # perform operation
fmul.s f31, f1, f22, rmm # perform operation
fmul.s f31, f1, f22, rne # perform operation
fmul.s f31, f1, f22, rtz # perform operation
fmul.s f31, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x10, 0xf285742b593fa1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fmul.s f10, f8, f12, dyn # perform operation
fmul.s f10, f8, f12, rdn # perform operation
fmul.s f10, f8, f12, rmm # perform operation
fmul.s f10, f8, f12, rne # perform operation
fmul.s f10, f8, f12, rtz # perform operation
fmul.s f10, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x15, 0xf3597df897bf30a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fmul.s f15, f7, f22, dyn # perform operation
fmul.s f15, f7, f22, rdn # perform operation
fmul.s f15, f7, f22, rmm # perform operation
fmul.s f15, f7, f22, rne # perform operation
fmul.s f15, f7, f22, rtz # perform operation
fmul.s f15, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x12, 0xadffeb8fd1a07d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fmul.s f12, f5, f24, dyn # perform operation
fmul.s f12, f5, f24, rdn # perform operation
fmul.s f12, f5, f24, rmm # perform operation
fmul.s f12, f5, f24, rne # perform operation
fmul.s f12, f5, f24, rtz # perform operation
fmul.s f12, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x26, 0x72c67cce9dc42acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fmul.s f26, f24, f5, dyn # perform operation
fmul.s f26, f24, f5, rdn # perform operation
fmul.s f26, f24, f5, rmm # perform operation
fmul.s f26, f24, f5, rne # perform operation
fmul.s f26, f24, f5, rtz # perform operation
fmul.s f26, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x13, 0x23907743c8ac2b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f13, f16, f17, dyn # perform operation
fmul.s f13, f16, f17, rdn # perform operation
fmul.s f13, f16, f17, rmm # perform operation
fmul.s f13, f16, f17, rne # perform operation
fmul.s f13, f16, f17, rtz # perform operation
fmul.s f13, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x13, 0xa9d6e244b4a2b561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f13, f17, f8, dyn # perform operation
fmul.s f13, f17, f8, rdn # perform operation
fmul.s f13, f17, f8, rmm # perform operation
fmul.s f13, f17, f8, rne # perform operation
fmul.s f13, f17, f8, rtz # perform operation
fmul.s f13, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x10, 0xc5df0bf8a7bed070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fmul.s f10, f17, f14, dyn # perform operation
fmul.s f10, f17, f14, rdn # perform operation
fmul.s f10, f17, f14, rmm # perform operation
fmul.s f10, f17, f14, rne # perform operation
fmul.s f10, f17, f14, rtz # perform operation
fmul.s f10, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x25, 0xf9bf6531e9fd02e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f25, f16, f15, dyn # perform operation
fmul.s f25, f16, f15, rdn # perform operation
fmul.s f25, f16, f15, rmm # perform operation
fmul.s f25, f16, f15, rne # perform operation
fmul.s f25, f16, f15, rtz # perform operation
fmul.s f25, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x9, 0xdd495f9831bc8fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fmul.s f9, f14, f3, dyn # perform operation
fmul.s f9, f14, f3, rdn # perform operation
fmul.s f9, f14, f3, rmm # perform operation
fmul.s f9, f14, f3, rne # perform operation
fmul.s f9, f14, f3, rtz # perform operation
fmul.s f9, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x14, 0x67be7f74d58a11f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f14, f29, f25, dyn # perform operation
fmul.s f14, f29, f25, rdn # perform operation
fmul.s f14, f29, f25, rmm # perform operation
fmul.s f14, f29, f25, rne # perform operation
fmul.s f14, f29, f25, rtz # perform operation
fmul.s f14, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x1, 0x49ae4356935ee79a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmul.s f1, f5, f7, dyn # perform operation
fmul.s f1, f5, f7, rdn # perform operation
fmul.s f1, f5, f7, rmm # perform operation
fmul.s f1, f5, f7, rne # perform operation
fmul.s f1, f5, f7, rtz # perform operation
fmul.s f1, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x29, 0x85eb94231619d01f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmul.s f29, f8, f13, dyn # perform operation
fmul.s f29, f8, f13, rdn # perform operation
fmul.s f29, f8, f13, rmm # perform operation
fmul.s f29, f8, f13, rne # perform operation
fmul.s f29, f8, f13, rtz # perform operation
fmul.s f29, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x28, 0x6f5b646635eba81f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f28, f10, f20, dyn # perform operation
fmul.s f28, f10, f20, rdn # perform operation
fmul.s f28, f10, f20, rmm # perform operation
fmul.s f28, f10, f20, rne # perform operation
fmul.s f28, f10, f20, rtz # perform operation
fmul.s f28, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x22, 0x3cf54fcb022aa21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fmul.s f22, f11, f12, dyn # perform operation
fmul.s f22, f11, f12, rdn # perform operation
fmul.s f22, f11, f12, rmm # perform operation
fmul.s f22, f11, f12, rne # perform operation
fmul.s f22, f11, f12, rtz # perform operation
fmul.s f22, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x24, 0x50955fbfaf224c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmul.s f24, f14, f9, dyn # perform operation
fmul.s f24, f14, f9, rdn # perform operation
fmul.s f24, f14, f9, rmm # perform operation
fmul.s f24, f14, f9, rne # perform operation
fmul.s f24, f14, f9, rtz # perform operation
fmul.s f24, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x6, 0xf5848d6223cd7025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f6, f28, f2, dyn # perform operation
fmul.s f6, f28, f2, rdn # perform operation
fmul.s f6, f28, f2, rmm # perform operation
fmul.s f6, f28, f2, rne # perform operation
fmul.s f6, f28, f2, rtz # perform operation
fmul.s f6, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x31, 0x3b877e3063d266b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fmul.s f31, f7, f20, dyn # perform operation
fmul.s f31, f7, f20, rdn # perform operation
fmul.s f31, f7, f20, rmm # perform operation
fmul.s f31, f7, f20, rne # perform operation
fmul.s f31, f7, f20, rtz # perform operation
fmul.s f31, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x30, 0x8419966a53028151 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmul.s f30, f12, f13, dyn # perform operation
fmul.s f30, f12, f13, rdn # perform operation
fmul.s f30, f12, f13, rmm # perform operation
fmul.s f30, f12, f13, rne # perform operation
fmul.s f30, f12, f13, rtz # perform operation
fmul.s f30, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x17, 0xa2da71348403ee60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f17, f28, f6, dyn # perform operation
fmul.s f17, f28, f6, rdn # perform operation
fmul.s f17, f28, f6, rmm # perform operation
fmul.s f17, f28, f6, rne # perform operation
fmul.s f17, f28, f6, rtz # perform operation
fmul.s f17, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x16, 0xb00b683bd5b07452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fmul.s f16, f6, f15, dyn # perform operation
fmul.s f16, f6, f15, rdn # perform operation
fmul.s f16, f6, f15, rmm # perform operation
fmul.s f16, f6, f15, rne # perform operation
fmul.s f16, f6, f15, rtz # perform operation
fmul.s f16, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x26, 0xf01d606246c13555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f26, f23, f21, dyn # perform operation
fmul.s f26, f23, f21, rdn # perform operation
fmul.s f26, f23, f21, rmm # perform operation
fmul.s f26, f23, f21, rne # perform operation
fmul.s f26, f23, f21, rtz # perform operation
fmul.s f26, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x1, 0x1b8a916157a5d8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fmul.s f1, f21, f15, dyn # perform operation
fmul.s f1, f21, f15, rdn # perform operation
fmul.s f1, f21, f15, rmm # perform operation
fmul.s f1, f21, f15, rne # perform operation
fmul.s f1, f21, f15, rtz # perform operation
fmul.s f1, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x2, 0xebd1ebd297f6d749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmul.s f2, f27, f25, dyn # perform operation
fmul.s f2, f27, f25, rdn # perform operation
fmul.s f2, f27, f25, rmm # perform operation
fmul.s f2, f27, f25, rne # perform operation
fmul.s f2, f27, f25, rtz # perform operation
fmul.s f2, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x18, 0x4ce3df62b05114e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f18, f27, f17, dyn # perform operation
fmul.s f18, f27, f17, rdn # perform operation
fmul.s f18, f27, f17, rmm # perform operation
fmul.s f18, f27, f17, rne # perform operation
fmul.s f18, f27, f17, rtz # perform operation
fmul.s f18, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x4, 0xb3247485138f8319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fmul.s f4, f11, f5, dyn # perform operation
fmul.s f4, f11, f5, rdn # perform operation
fmul.s f4, f11, f5, rmm # perform operation
fmul.s f4, f11, f5, rne # perform operation
fmul.s f4, f11, f5, rtz # perform operation
fmul.s f4, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x21, 0xcb829053376f092f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f21, f7, f26, dyn # perform operation
fmul.s f21, f7, f26, rdn # perform operation
fmul.s f21, f7, f26, rmm # perform operation
fmul.s f21, f7, f26, rne # perform operation
fmul.s f21, f7, f26, rtz # perform operation
fmul.s f21, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x6, 0x3cc3af79e0c8e7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fmul.s f6, f2, f9, dyn # perform operation
fmul.s f6, f2, f9, rdn # perform operation
fmul.s f6, f2, f9, rmm # perform operation
fmul.s f6, f2, f9, rne # perform operation
fmul.s f6, f2, f9, rtz # perform operation
fmul.s f6, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x10, 0x37838cdfd9a3a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f10, f8, f5, dyn # perform operation
fmul.s f10, f8, f5, rdn # perform operation
fmul.s f10, f8, f5, rmm # perform operation
fmul.s f10, f8, f5, rne # perform operation
fmul.s f10, f8, f5, rtz # perform operation
fmul.s f10, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x29, 0xf2da549ce9a6ae43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmul.s f29, f11, f31, dyn # perform operation
fmul.s f29, f11, f31, rdn # perform operation
fmul.s f29, f11, f31, rmm # perform operation
fmul.s f29, f11, f31, rne # perform operation
fmul.s f29, f11, f31, rtz # perform operation
fmul.s f29, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x1, 0x43a3f5c032238b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fmul.s f1, f27, f2, dyn # perform operation
fmul.s f1, f27, f2, rdn # perform operation
fmul.s f1, f27, f2, rmm # perform operation
fmul.s f1, f27, f2, rne # perform operation
fmul.s f1, f27, f2, rtz # perform operation
fmul.s f1, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x21, 0x66ed55cb33362fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f21, f10, f28, dyn # perform operation
fmul.s f21, f10, f28, rdn # perform operation
fmul.s f21, f10, f28, rmm # perform operation
fmul.s f21, f10, f28, rne # perform operation
fmul.s f21, f10, f28, rtz # perform operation
fmul.s f21, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x30, 0x9615a80c8f2267be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fmul.s f30, f9, f2, dyn # perform operation
fmul.s f30, f9, f2, rdn # perform operation
fmul.s f30, f9, f2, rmm # perform operation
fmul.s f30, f9, f2, rne # perform operation
fmul.s f30, f9, f2, rtz # perform operation
fmul.s f30, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x5, 0xbc8517b125e8b398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmul.s f5, f4, f8, dyn # perform operation
fmul.s f5, f4, f8, rdn # perform operation
fmul.s f5, f4, f8, rmm # perform operation
fmul.s f5, f4, f8, rne # perform operation
fmul.s f5, f4, f8, rtz # perform operation
fmul.s f5, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x28, 0x4c312c5a8d6d4c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f28, f2, f1, dyn # perform operation
fmul.s f28, f2, f1, rdn # perform operation
fmul.s f28, f2, f1, rmm # perform operation
fmul.s f28, f2, f1, rne # perform operation
fmul.s f28, f2, f1, rtz # perform operation
fmul.s f28, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x13, 0x87b9a2ab22add44c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fmul.s f13, f10, f4, dyn # perform operation
fmul.s f13, f10, f4, rdn # perform operation
fmul.s f13, f10, f4, rmm # perform operation
fmul.s f13, f10, f4, rne # perform operation
fmul.s f13, f10, f4, rtz # perform operation
fmul.s f13, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x6, 0xf7cf1f6f93d5d32e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fmul.s f6, f24, f15, dyn # perform operation
fmul.s f6, f24, f15, rdn # perform operation
fmul.s f6, f24, f15, rmm # perform operation
fmul.s f6, f24, f15, rne # perform operation
fmul.s f6, f24, f15, rtz # perform operation
fmul.s f6, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x8, 0x77a183705d42bb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fmul.s f8, f7, f28, dyn # perform operation
fmul.s f8, f7, f28, rdn # perform operation
fmul.s f8, f7, f28, rmm # perform operation
fmul.s f8, f7, f28, rne # perform operation
fmul.s f8, f7, f28, rtz # perform operation
fmul.s f8, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x30, 0x69a99b6f9f3ff202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f30, f15, f8, dyn # perform operation
fmul.s f30, f15, f8, rdn # perform operation
fmul.s f30, f15, f8, rmm # perform operation
fmul.s f30, f15, f8, rne # perform operation
fmul.s f30, f15, f8, rtz # perform operation
fmul.s f30, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x4, 0xe0096b3a77e10d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmul.s f4, f13, f17, dyn # perform operation
fmul.s f4, f13, f17, rdn # perform operation
fmul.s f4, f13, f17, rmm # perform operation
fmul.s f4, f13, f17, rne # perform operation
fmul.s f4, f13, f17, rtz # perform operation
fmul.s f4, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x14, 0x2b5fce7a2509c771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fmul.s f14, f25, f15, dyn # perform operation
fmul.s f14, f25, f15, rdn # perform operation
fmul.s f14, f25, f15, rmm # perform operation
fmul.s f14, f25, f15, rne # perform operation
fmul.s f14, f25, f15, rtz # perform operation
fmul.s f14, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f25, f15 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x01b940c54513602c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c2b9c0d75ce943a # load x3 with value 0x6c2b9c0d75ce943a
sw x3, 0(x2) # store 0x6c2b9c0d75ce943a in memory
flw f23, 0(x2) # load 0x6c2b9c0d75ce943a from memory into f23
li x3, 0x6d6465122639c4e # load x3 with value 0x6d6465122639c4e
sw x3, 0(x2) # store 0x6d6465122639c4e in memory
flw f30, 0(x2) # load 0x6d6465122639c4e from memory into f30
fmul.s f0, f23, f30 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xd6fb740f662e99ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e37b9f7d9f2b2e2 # load x3 with value 0x7e37b9f7d9f2b2e2
sw x3, 0(x2) # store 0x7e37b9f7d9f2b2e2 in memory
flw f19, 0(x2) # load 0x7e37b9f7d9f2b2e2 from memory into f19
li x3, 0xca090913f22aeb4e # load x3 with value 0xca090913f22aeb4e
sw x3, 0(x2) # store 0xca090913f22aeb4e in memory
flw f20, 0(x2) # load 0xca090913f22aeb4e from memory into f20
fmul.s f1, f19, f20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9dae7135467a5cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4d541b9d479f93c # load x3 with value 0xc4d541b9d479f93c
sw x3, 0(x2) # store 0xc4d541b9d479f93c in memory
flw f8, 0(x2) # load 0xc4d541b9d479f93c from memory into f8
li x3, 0xa6bc79b2e24d4101 # load x3 with value 0xa6bc79b2e24d4101
sw x3, 0(x2) # store 0xa6bc79b2e24d4101 in memory
flw f18, 0(x2) # load 0xa6bc79b2e24d4101 from memory into f18
fmul.s f2, f8, f18 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xcec4683fd008ebc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7629d713e6c7edbe # load x3 with value 0x7629d713e6c7edbe
sw x3, 0(x2) # store 0x7629d713e6c7edbe in memory
flw f23, 0(x2) # load 0x7629d713e6c7edbe from memory into f23
li x3, 0xa0614f3f12693139 # load x3 with value 0xa0614f3f12693139
sw x3, 0(x2) # store 0xa0614f3f12693139 in memory
flw f2, 0(x2) # load 0xa0614f3f12693139 from memory into f2
fmul.s f3, f23, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x1650dc0169fd2d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa670db4f925e7169 # load x3 with value 0xa670db4f925e7169
sw x3, 0(x2) # store 0xa670db4f925e7169 in memory
flw f26, 0(x2) # load 0xa670db4f925e7169 from memory into f26
li x3, 0x93a4cc0a619cc688 # load x3 with value 0x93a4cc0a619cc688
sw x3, 0(x2) # store 0x93a4cc0a619cc688 in memory
flw f25, 0(x2) # load 0x93a4cc0a619cc688 from memory into f25
fmul.s f4, f26, f25 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xac4fbb87976a79a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x493bd5b3fba5f2e3 # load x3 with value 0x493bd5b3fba5f2e3
sw x3, 0(x2) # store 0x493bd5b3fba5f2e3 in memory
flw f8, 0(x2) # load 0x493bd5b3fba5f2e3 from memory into f8
li x3, 0xc4ef92a48546f7ce # load x3 with value 0xc4ef92a48546f7ce
sw x3, 0(x2) # store 0xc4ef92a48546f7ce in memory
flw f26, 0(x2) # load 0xc4ef92a48546f7ce from memory into f26
fmul.s f5, f8, f26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x40be51dd7575d076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c802d7aa8b2d9d # load x3 with value 0x8c802d7aa8b2d9d
sw x3, 0(x2) # store 0x8c802d7aa8b2d9d in memory
flw f15, 0(x2) # load 0x8c802d7aa8b2d9d from memory into f15
li x3, 0xe9561fca5dc18c78 # load x3 with value 0xe9561fca5dc18c78
sw x3, 0(x2) # store 0xe9561fca5dc18c78 in memory
flw f17, 0(x2) # load 0xe9561fca5dc18c78 from memory into f17
fmul.s f6, f15, f17 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x82fce05258f061e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x159ef0f95d937e3f # load x3 with value 0x159ef0f95d937e3f
sw x3, 0(x2) # store 0x159ef0f95d937e3f in memory
flw f25, 0(x2) # load 0x159ef0f95d937e3f from memory into f25
li x3, 0x6ed1882ba1c52c8b # load x3 with value 0x6ed1882ba1c52c8b
sw x3, 0(x2) # store 0x6ed1882ba1c52c8b in memory
flw f6, 0(x2) # load 0x6ed1882ba1c52c8b from memory into f6
fmul.s f7, f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2a4ee880c14b9029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc06c491aa5839f63 # load x3 with value 0xc06c491aa5839f63
sw x3, 0(x2) # store 0xc06c491aa5839f63 in memory
flw f2, 0(x2) # load 0xc06c491aa5839f63 from memory into f2
li x3, 0x5e7de2801ace39c8 # load x3 with value 0x5e7de2801ace39c8
sw x3, 0(x2) # store 0x5e7de2801ace39c8 in memory
flw f30, 0(x2) # load 0x5e7de2801ace39c8 from memory into f30
fmul.s f8, f2, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x4f706235c1a29dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd825ee910279ae55 # load x3 with value 0xd825ee910279ae55
sw x3, 0(x2) # store 0xd825ee910279ae55 in memory
flw f29, 0(x2) # load 0xd825ee910279ae55 from memory into f29
li x3, 0x3a9ccbb65c0c3530 # load x3 with value 0x3a9ccbb65c0c3530
sw x3, 0(x2) # store 0x3a9ccbb65c0c3530 in memory
flw f30, 0(x2) # load 0x3a9ccbb65c0c3530 from memory into f30
fmul.s f9, f29, f30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0d055510c929bcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd04d9a98d90fa9ad # load x3 with value 0xd04d9a98d90fa9ad
sw x3, 0(x2) # store 0xd04d9a98d90fa9ad in memory
flw f6, 0(x2) # load 0xd04d9a98d90fa9ad from memory into f6
li x3, 0xcb0f6640104d2f09 # load x3 with value 0xcb0f6640104d2f09
sw x3, 0(x2) # store 0xcb0f6640104d2f09 in memory
flw f21, 0(x2) # load 0xcb0f6640104d2f09 from memory into f21
fmul.s f10, f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xbb0233f6d4b3f022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x343efd7e5170bb7e # load x3 with value 0x343efd7e5170bb7e
sw x3, 0(x2) # store 0x343efd7e5170bb7e in memory
flw f20, 0(x2) # load 0x343efd7e5170bb7e from memory into f20
li x3, 0xbda687211b0bcb5a # load x3 with value 0xbda687211b0bcb5a
sw x3, 0(x2) # store 0xbda687211b0bcb5a in memory
flw f8, 0(x2) # load 0xbda687211b0bcb5a from memory into f8
fmul.s f11, f20, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf16d03cec46e0d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebd903159548129b # load x3 with value 0xebd903159548129b
sw x3, 0(x2) # store 0xebd903159548129b in memory
flw f3, 0(x2) # load 0xebd903159548129b from memory into f3
li x3, 0xd58d852c2c5aded7 # load x3 with value 0xd58d852c2c5aded7
sw x3, 0(x2) # store 0xd58d852c2c5aded7 in memory
flw f4, 0(x2) # load 0xd58d852c2c5aded7 from memory into f4
fmul.s f12, f3, f4 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xf7b76bc22bcbbcbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d402be2eef594e8 # load x3 with value 0x2d402be2eef594e8
sw x3, 0(x2) # store 0x2d402be2eef594e8 in memory
flw f30, 0(x2) # load 0x2d402be2eef594e8 from memory into f30
li x3, 0xc785bc77c31111b7 # load x3 with value 0xc785bc77c31111b7
sw x3, 0(x2) # store 0xc785bc77c31111b7 in memory
flw f11, 0(x2) # load 0xc785bc77c31111b7 from memory into f11
fmul.s f13, f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x79f6c86b3a6268bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b51ac5b7b442229 # load x3 with value 0x3b51ac5b7b442229
sw x3, 0(x2) # store 0x3b51ac5b7b442229 in memory
flw f4, 0(x2) # load 0x3b51ac5b7b442229 from memory into f4
li x3, 0x7ead722267f21d7c # load x3 with value 0x7ead722267f21d7c
sw x3, 0(x2) # store 0x7ead722267f21d7c in memory
flw f21, 0(x2) # load 0x7ead722267f21d7c from memory into f21
fmul.s f14, f4, f21 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xbc50da309b9f6ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e0e81b0162b9783 # load x3 with value 0x2e0e81b0162b9783
sw x3, 0(x2) # store 0x2e0e81b0162b9783 in memory
flw f26, 0(x2) # load 0x2e0e81b0162b9783 from memory into f26
li x3, 0x53425a89f9b25dcf # load x3 with value 0x53425a89f9b25dcf
sw x3, 0(x2) # store 0x53425a89f9b25dcf in memory
flw f12, 0(x2) # load 0x53425a89f9b25dcf from memory into f12
fmul.s f15, f26, f12 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x0731d5d5160b8dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8685338d84e91c4a # load x3 with value 0x8685338d84e91c4a
sw x3, 0(x2) # store 0x8685338d84e91c4a in memory
flw f29, 0(x2) # load 0x8685338d84e91c4a from memory into f29
li x3, 0xc0567392db0dbf55 # load x3 with value 0xc0567392db0dbf55
sw x3, 0(x2) # store 0xc0567392db0dbf55 in memory
flw f28, 0(x2) # load 0xc0567392db0dbf55 from memory into f28
fmul.s f16, f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xca7c524abbb79b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd502b9f2b58b291d # load x3 with value 0xd502b9f2b58b291d
sw x3, 0(x2) # store 0xd502b9f2b58b291d in memory
flw f11, 0(x2) # load 0xd502b9f2b58b291d from memory into f11
li x3, 0x2678c4427f30ca17 # load x3 with value 0x2678c4427f30ca17
sw x3, 0(x2) # store 0x2678c4427f30ca17 in memory
flw f1, 0(x2) # load 0x2678c4427f30ca17 from memory into f1
fmul.s f17, f11, f1 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x4f03b83e7aeb61e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89ad69d929c1f575 # load x3 with value 0x89ad69d929c1f575
sw x3, 0(x2) # store 0x89ad69d929c1f575 in memory
flw f24, 0(x2) # load 0x89ad69d929c1f575 from memory into f24
li x3, 0xed972ff35f68ff2f # load x3 with value 0xed972ff35f68ff2f
sw x3, 0(x2) # store 0xed972ff35f68ff2f in memory
flw f12, 0(x2) # load 0xed972ff35f68ff2f from memory into f12
fmul.s f18, f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2241ef21caafb445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x720baf20cf1fa0f6 # load x3 with value 0x720baf20cf1fa0f6
sw x3, 0(x2) # store 0x720baf20cf1fa0f6 in memory
flw f4, 0(x2) # load 0x720baf20cf1fa0f6 from memory into f4
li x3, 0x2ca72b8991b170ff # load x3 with value 0x2ca72b8991b170ff
sw x3, 0(x2) # store 0x2ca72b8991b170ff in memory
flw f24, 0(x2) # load 0x2ca72b8991b170ff from memory into f24
fmul.s f19, f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x94d98ef9cd7fa0cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86efa3a7ac2c9ab4 # load x3 with value 0x86efa3a7ac2c9ab4
sw x3, 0(x2) # store 0x86efa3a7ac2c9ab4 in memory
flw f12, 0(x2) # load 0x86efa3a7ac2c9ab4 from memory into f12
li x3, 0x3d77c017b0e4ab48 # load x3 with value 0x3d77c017b0e4ab48
sw x3, 0(x2) # store 0x3d77c017b0e4ab48 in memory
flw f15, 0(x2) # load 0x3d77c017b0e4ab48 from memory into f15
fmul.s f20, f12, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x99fe9ad003038c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaf38dba1b638365 # load x3 with value 0xbaf38dba1b638365
sw x3, 0(x2) # store 0xbaf38dba1b638365 in memory
flw f30, 0(x2) # load 0xbaf38dba1b638365 from memory into f30
li x3, 0xd935c990bbda3e4e # load x3 with value 0xd935c990bbda3e4e
sw x3, 0(x2) # store 0xd935c990bbda3e4e in memory
flw f28, 0(x2) # load 0xd935c990bbda3e4e from memory into f28
fmul.s f21, f30, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x117c1d77248547e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaafd173a2d5af1d # load x3 with value 0xdaafd173a2d5af1d
sw x3, 0(x2) # store 0xdaafd173a2d5af1d in memory
flw f4, 0(x2) # load 0xdaafd173a2d5af1d from memory into f4
li x3, 0x1187542dec0c631c # load x3 with value 0x1187542dec0c631c
sw x3, 0(x2) # store 0x1187542dec0c631c in memory
flw f21, 0(x2) # load 0x1187542dec0c631c from memory into f21
fmul.s f22, f4, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xe03a3224b995ee60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ece1cfc4d355b0d # load x3 with value 0x4ece1cfc4d355b0d
sw x3, 0(x2) # store 0x4ece1cfc4d355b0d in memory
flw f12, 0(x2) # load 0x4ece1cfc4d355b0d from memory into f12
li x3, 0xaa654c701280afb4 # load x3 with value 0xaa654c701280afb4
sw x3, 0(x2) # store 0xaa654c701280afb4 in memory
flw f7, 0(x2) # load 0xaa654c701280afb4 from memory into f7
fmul.s f23, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x20e1c55c5a5385c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd395910779258dd # load x3 with value 0xbd395910779258dd
sw x3, 0(x2) # store 0xbd395910779258dd in memory
flw f9, 0(x2) # load 0xbd395910779258dd from memory into f9
li x3, 0xd22610a52aa482e # load x3 with value 0xd22610a52aa482e
sw x3, 0(x2) # store 0xd22610a52aa482e in memory
flw f27, 0(x2) # load 0xd22610a52aa482e from memory into f27
fmul.s f24, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x5efe2ecbce7918b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc294608f2377e184 # load x3 with value 0xc294608f2377e184
sw x3, 0(x2) # store 0xc294608f2377e184 in memory
flw f12, 0(x2) # load 0xc294608f2377e184 from memory into f12
li x3, 0xcfea9b0c4e9165be # load x3 with value 0xcfea9b0c4e9165be
sw x3, 0(x2) # store 0xcfea9b0c4e9165be in memory
flw f3, 0(x2) # load 0xcfea9b0c4e9165be from memory into f3
fmul.s f25, f12, f3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xeeec941e94642060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a4a55749b290035 # load x3 with value 0x5a4a55749b290035
sw x3, 0(x2) # store 0x5a4a55749b290035 in memory
flw f1, 0(x2) # load 0x5a4a55749b290035 from memory into f1
li x3, 0xa87a184142077ef0 # load x3 with value 0xa87a184142077ef0
sw x3, 0(x2) # store 0xa87a184142077ef0 in memory
flw f7, 0(x2) # load 0xa87a184142077ef0 from memory into f7
fmul.s f26, f1, f7 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc8a89aefbafff0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x214b43c4df442f63 # load x3 with value 0x214b43c4df442f63
sw x3, 0(x2) # store 0x214b43c4df442f63 in memory
flw f18, 0(x2) # load 0x214b43c4df442f63 from memory into f18
li x3, 0x4ab047c9ed85650f # load x3 with value 0x4ab047c9ed85650f
sw x3, 0(x2) # store 0x4ab047c9ed85650f in memory
flw f3, 0(x2) # load 0x4ab047c9ed85650f from memory into f3
fmul.s f27, f18, f3 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x91c65ea2044fc3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88914da7e6c0c669 # load x3 with value 0x88914da7e6c0c669
sw x3, 0(x2) # store 0x88914da7e6c0c669 in memory
flw f16, 0(x2) # load 0x88914da7e6c0c669 from memory into f16
li x3, 0x6ea74bfbd4df7121 # load x3 with value 0x6ea74bfbd4df7121
sw x3, 0(x2) # store 0x6ea74bfbd4df7121 in memory
flw f10, 0(x2) # load 0x6ea74bfbd4df7121 from memory into f10
fmul.s f28, f16, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe16222203a101900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4025eb2f7aeb0b5a # load x3 with value 0x4025eb2f7aeb0b5a
sw x3, 0(x2) # store 0x4025eb2f7aeb0b5a in memory
flw f29, 0(x2) # load 0x4025eb2f7aeb0b5a from memory into f29
li x3, 0xb8025409da2de5c1 # load x3 with value 0xb8025409da2de5c1
sw x3, 0(x2) # store 0xb8025409da2de5c1 in memory
flw f27, 0(x2) # load 0xb8025409da2de5c1 from memory into f27
fmul.s f29, f29, f27 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x21735c497f8b6e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x119a4110794942a1 # load x3 with value 0x119a4110794942a1
sw x3, 0(x2) # store 0x119a4110794942a1 in memory
flw f13, 0(x2) # load 0x119a4110794942a1 from memory into f13
li x3, 0xa7b315c89fedcc5a # load x3 with value 0xa7b315c89fedcc5a
sw x3, 0(x2) # store 0xa7b315c89fedcc5a in memory
flw f21, 0(x2) # load 0xa7b315c89fedcc5a from memory into f21
fmul.s f30, f13, f21 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x291c0abb0db960a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ea31851de374467 # load x3 with value 0x7ea31851de374467
sw x3, 0(x2) # store 0x7ea31851de374467 in memory
flw f4, 0(x2) # load 0x7ea31851de374467 from memory into f4
li x3, 0x920b9784a8b18390 # load x3 with value 0x920b9784a8b18390
sw x3, 0(x2) # store 0x920b9784a8b18390 in memory
flw f13, 0(x2) # load 0x920b9784a8b18390 from memory into f13
fmul.s f31, f4, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0x92b864676d8d2e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35d0a3d0a9e2a1d8 # load x3 with value 0x35d0a3d0a9e2a1d8
sw x3, 0(x2) # store 0x35d0a3d0a9e2a1d8 in memory
flw f0, 0(x2) # load 0x35d0a3d0a9e2a1d8 from memory into f0
li x3, 0xe514dc1d336a1c9f # load x3 with value 0xe514dc1d336a1c9f
sw x3, 0(x2) # store 0xe514dc1d336a1c9f in memory
flw f28, 0(x2) # load 0xe514dc1d336a1c9f from memory into f28
fmul.s f12, f0, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x11, 0x4a8f1a6aeb58359c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f18452c7b956a4f # load x3 with value 0x2f18452c7b956a4f
sw x3, 0(x2) # store 0x2f18452c7b956a4f in memory
flw f1, 0(x2) # load 0x2f18452c7b956a4f from memory into f1
li x3, 0x55a247d6cb871df9 # load x3 with value 0x55a247d6cb871df9
sw x3, 0(x2) # store 0x55a247d6cb871df9 in memory
flw f8, 0(x2) # load 0x55a247d6cb871df9 from memory into f8
fmul.s f11, f1, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x5c77171cb3b1bb6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe13d4470dec69147 # load x3 with value 0xe13d4470dec69147
sw x3, 0(x2) # store 0xe13d4470dec69147 in memory
flw f2, 0(x2) # load 0xe13d4470dec69147 from memory into f2
li x3, 0x6cbbe6ecbc856c33 # load x3 with value 0x6cbbe6ecbc856c33
sw x3, 0(x2) # store 0x6cbbe6ecbc856c33 in memory
flw f3, 0(x2) # load 0x6cbbe6ecbc856c33 from memory into f3
fmul.s f18, f2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0x6710125237b32dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42300417dbe731ae # load x3 with value 0x42300417dbe731ae
sw x3, 0(x2) # store 0x42300417dbe731ae in memory
flw f3, 0(x2) # load 0x42300417dbe731ae from memory into f3
li x3, 0xb032b7297a1197a8 # load x3 with value 0xb032b7297a1197a8
sw x3, 0(x2) # store 0xb032b7297a1197a8 in memory
flw f15, 0(x2) # load 0xb032b7297a1197a8 from memory into f15
fmul.s f6, f3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x27, 0xd9c49af0fa8aa6d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x805c12b5a50c0bfd # load x3 with value 0x805c12b5a50c0bfd
sw x3, 0(x2) # store 0x805c12b5a50c0bfd in memory
flw f4, 0(x2) # load 0x805c12b5a50c0bfd from memory into f4
li x3, 0x9da3b0f8ac2d3a15 # load x3 with value 0x9da3b0f8ac2d3a15
sw x3, 0(x2) # store 0x9da3b0f8ac2d3a15 in memory
flw f5, 0(x2) # load 0x9da3b0f8ac2d3a15 from memory into f5
fmul.s f27, f4, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x23, 0x1c84fb6af7befd26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fd71bc8e3932cc3 # load x3 with value 0x7fd71bc8e3932cc3
sw x3, 0(x2) # store 0x7fd71bc8e3932cc3 in memory
flw f5, 0(x2) # load 0x7fd71bc8e3932cc3 from memory into f5
li x3, 0x15ad107e97a61cbb # load x3 with value 0x15ad107e97a61cbb
sw x3, 0(x2) # store 0x15ad107e97a61cbb in memory
flw f30, 0(x2) # load 0x15ad107e97a61cbb from memory into f30
fmul.s f23, f5, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0xcaef9f6159db5710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1654b7c84127b46d # load x3 with value 0x1654b7c84127b46d
sw x3, 0(x2) # store 0x1654b7c84127b46d in memory
flw f6, 0(x2) # load 0x1654b7c84127b46d from memory into f6
li x3, 0x99ef97b370b8d909 # load x3 with value 0x99ef97b370b8d909
sw x3, 0(x2) # store 0x99ef97b370b8d909 in memory
flw f14, 0(x2) # load 0x99ef97b370b8d909 from memory into f14
fmul.s f31, f6, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x28, 0xeaba9dfd00406283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd14413fef4302dc # load x3 with value 0xcd14413fef4302dc
sw x3, 0(x2) # store 0xcd14413fef4302dc in memory
flw f7, 0(x2) # load 0xcd14413fef4302dc from memory into f7
li x3, 0x13147b5e03a7fee1 # load x3 with value 0x13147b5e03a7fee1
sw x3, 0(x2) # store 0x13147b5e03a7fee1 in memory
flw f9, 0(x2) # load 0x13147b5e03a7fee1 from memory into f9
fmul.s f28, f7, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x27, 0x531a14fcde8a5360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b4d80839f38d20e # load x3 with value 0x8b4d80839f38d20e
sw x3, 0(x2) # store 0x8b4d80839f38d20e in memory
flw f8, 0(x2) # load 0x8b4d80839f38d20e from memory into f8
li x3, 0x73e174478c9a0bcf # load x3 with value 0x73e174478c9a0bcf
sw x3, 0(x2) # store 0x73e174478c9a0bcf in memory
flw f24, 0(x2) # load 0x73e174478c9a0bcf from memory into f24
fmul.s f27, f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x20, 0xc74e4066c1c1f970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f2d395bc58a6877 # load x3 with value 0x2f2d395bc58a6877
sw x3, 0(x2) # store 0x2f2d395bc58a6877 in memory
flw f9, 0(x2) # load 0x2f2d395bc58a6877 from memory into f9
li x3, 0x34d487e87282688f # load x3 with value 0x34d487e87282688f
sw x3, 0(x2) # store 0x34d487e87282688f in memory
flw f1, 0(x2) # load 0x34d487e87282688f from memory into f1
fmul.s f20, f9, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x18, 0x19a0d8eef27fd730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed27f59b9730aefe # load x3 with value 0xed27f59b9730aefe
sw x3, 0(x2) # store 0xed27f59b9730aefe in memory
flw f10, 0(x2) # load 0xed27f59b9730aefe from memory into f10
li x3, 0x758981b4b5edcf2b # load x3 with value 0x758981b4b5edcf2b
sw x3, 0(x2) # store 0x758981b4b5edcf2b in memory
flw f3, 0(x2) # load 0x758981b4b5edcf2b from memory into f3
fmul.s f18, f10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x30, 0x98c4776f5b69ee8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f9a70899891ca23 # load x3 with value 0x9f9a70899891ca23
sw x3, 0(x2) # store 0x9f9a70899891ca23 in memory
flw f11, 0(x2) # load 0x9f9a70899891ca23 from memory into f11
li x3, 0xac6b13857f329881 # load x3 with value 0xac6b13857f329881
sw x3, 0(x2) # store 0xac6b13857f329881 in memory
flw f4, 0(x2) # load 0xac6b13857f329881 from memory into f4
fmul.s f30, f11, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x26, 0x683332340b318fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c3127b45d4bbb0c # load x3 with value 0x9c3127b45d4bbb0c
sw x3, 0(x2) # store 0x9c3127b45d4bbb0c in memory
flw f12, 0(x2) # load 0x9c3127b45d4bbb0c from memory into f12
li x3, 0xcb09fd3f1dd14e07 # load x3 with value 0xcb09fd3f1dd14e07
sw x3, 0(x2) # store 0xcb09fd3f1dd14e07 in memory
flw f10, 0(x2) # load 0xcb09fd3f1dd14e07 from memory into f10
fmul.s f26, f12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0x42a30ed346d1f3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3c827b468fbb97f # load x3 with value 0xe3c827b468fbb97f
sw x3, 0(x2) # store 0xe3c827b468fbb97f in memory
flw f13, 0(x2) # load 0xe3c827b468fbb97f from memory into f13
li x3, 0xb1e909192691860c # load x3 with value 0xb1e909192691860c
sw x3, 0(x2) # store 0xb1e909192691860c in memory
flw f1, 0(x2) # load 0xb1e909192691860c from memory into f1
fmul.s f26, f13, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x4, 0xdb6066a92e068f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c58a3178acdbb1e # load x3 with value 0x1c58a3178acdbb1e
sw x3, 0(x2) # store 0x1c58a3178acdbb1e in memory
flw f14, 0(x2) # load 0x1c58a3178acdbb1e from memory into f14
li x3, 0x38c1630d576a07bc # load x3 with value 0x38c1630d576a07bc
sw x3, 0(x2) # store 0x38c1630d576a07bc in memory
flw f10, 0(x2) # load 0x38c1630d576a07bc from memory into f10
fmul.s f4, f14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0xfdb655e630ec762a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14c1d64dd28e10ee # load x3 with value 0x14c1d64dd28e10ee
sw x3, 0(x2) # store 0x14c1d64dd28e10ee in memory
flw f15, 0(x2) # load 0x14c1d64dd28e10ee from memory into f15
li x3, 0x5adc0d454f564380 # load x3 with value 0x5adc0d454f564380
sw x3, 0(x2) # store 0x5adc0d454f564380 in memory
flw f27, 0(x2) # load 0x5adc0d454f564380 from memory into f27
fmul.s f29, f15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x4, 0xdc5369e94eca5d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22f0121539a0fe3 # load x3 with value 0x22f0121539a0fe3
sw x3, 0(x2) # store 0x22f0121539a0fe3 in memory
flw f16, 0(x2) # load 0x22f0121539a0fe3 from memory into f16
li x3, 0xe0664b2490ad85e2 # load x3 with value 0xe0664b2490ad85e2
sw x3, 0(x2) # store 0xe0664b2490ad85e2 in memory
flw f20, 0(x2) # load 0xe0664b2490ad85e2 from memory into f20
fmul.s f4, f16, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x5, 0xad19356cf4bc54e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5eded0a629b2153 # load x3 with value 0xd5eded0a629b2153
sw x3, 0(x2) # store 0xd5eded0a629b2153 in memory
flw f17, 0(x2) # load 0xd5eded0a629b2153 from memory into f17
li x3, 0xfac674ba933f2066 # load x3 with value 0xfac674ba933f2066
sw x3, 0(x2) # store 0xfac674ba933f2066 in memory
flw f8, 0(x2) # load 0xfac674ba933f2066 from memory into f8
fmul.s f5, f17, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0x94f5ee46c2e98a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75526cdccc0634cc # load x3 with value 0x75526cdccc0634cc
sw x3, 0(x2) # store 0x75526cdccc0634cc in memory
flw f18, 0(x2) # load 0x75526cdccc0634cc from memory into f18
li x3, 0xcae2896c5c2ae6ca # load x3 with value 0xcae2896c5c2ae6ca
sw x3, 0(x2) # store 0xcae2896c5c2ae6ca in memory
flw f1, 0(x2) # load 0xcae2896c5c2ae6ca from memory into f1
fmul.s f31, f18, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x28, 0x8a712533a18bf59b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54903b0cf3ceb5d2 # load x3 with value 0x54903b0cf3ceb5d2
sw x3, 0(x2) # store 0x54903b0cf3ceb5d2 in memory
flw f19, 0(x2) # load 0x54903b0cf3ceb5d2 from memory into f19
li x3, 0xee0523c2ac2393aa # load x3 with value 0xee0523c2ac2393aa
sw x3, 0(x2) # store 0xee0523c2ac2393aa in memory
flw f30, 0(x2) # load 0xee0523c2ac2393aa from memory into f30
fmul.s f28, f19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x27, 0x6ebe29be4e6393b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x864463142f736c7f # load x3 with value 0x864463142f736c7f
sw x3, 0(x2) # store 0x864463142f736c7f in memory
flw f20, 0(x2) # load 0x864463142f736c7f from memory into f20
li x3, 0x4a6f4c1e0628bf87 # load x3 with value 0x4a6f4c1e0628bf87
sw x3, 0(x2) # store 0x4a6f4c1e0628bf87 in memory
flw f19, 0(x2) # load 0x4a6f4c1e0628bf87 from memory into f19
fmul.s f27, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x26, 0x5d39fb2494f823d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8da17686dd2e75ec # load x3 with value 0x8da17686dd2e75ec
sw x3, 0(x2) # store 0x8da17686dd2e75ec in memory
flw f21, 0(x2) # load 0x8da17686dd2e75ec from memory into f21
li x3, 0x6b288dae0abf7c4d # load x3 with value 0x6b288dae0abf7c4d
sw x3, 0(x2) # store 0x6b288dae0abf7c4d in memory
flw f3, 0(x2) # load 0x6b288dae0abf7c4d from memory into f3
fmul.s f26, f21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0x1f891e8500ed3bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2bff8c89c4963ae # load x3 with value 0xd2bff8c89c4963ae
sw x3, 0(x2) # store 0xd2bff8c89c4963ae in memory
flw f22, 0(x2) # load 0xd2bff8c89c4963ae from memory into f22
li x3, 0xc3ed5d380c14c019 # load x3 with value 0xc3ed5d380c14c019
sw x3, 0(x2) # store 0xc3ed5d380c14c019 in memory
flw f29, 0(x2) # load 0xc3ed5d380c14c019 from memory into f29
fmul.s f20, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0x5af6356d2f38da81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabb0af360815c98f # load x3 with value 0xabb0af360815c98f
sw x3, 0(x2) # store 0xabb0af360815c98f in memory
flw f23, 0(x2) # load 0xabb0af360815c98f from memory into f23
li x3, 0xa7702debf73be759 # load x3 with value 0xa7702debf73be759
sw x3, 0(x2) # store 0xa7702debf73be759 in memory
flw f10, 0(x2) # load 0xa7702debf73be759 from memory into f10
fmul.s f28, f23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x7, 0xb472a27348ac9c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x823858908832db8c # load x3 with value 0x823858908832db8c
sw x3, 0(x2) # store 0x823858908832db8c in memory
flw f24, 0(x2) # load 0x823858908832db8c from memory into f24
li x3, 0x601b0486f8704d11 # load x3 with value 0x601b0486f8704d11
sw x3, 0(x2) # store 0x601b0486f8704d11 in memory
flw f8, 0(x2) # load 0x601b0486f8704d11 from memory into f8
fmul.s f7, f24, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0x7c4769081be16285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8734c032d46203bd # load x3 with value 0x8734c032d46203bd
sw x3, 0(x2) # store 0x8734c032d46203bd in memory
flw f25, 0(x2) # load 0x8734c032d46203bd from memory into f25
li x3, 0x2080ec4af1aa67e5 # load x3 with value 0x2080ec4af1aa67e5
sw x3, 0(x2) # store 0x2080ec4af1aa67e5 in memory
flw f18, 0(x2) # load 0x2080ec4af1aa67e5 from memory into f18
fmul.s f2, f25, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x4, 0x525c5d813e21921d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7be383ee4a723948 # load x3 with value 0x7be383ee4a723948
sw x3, 0(x2) # store 0x7be383ee4a723948 in memory
flw f26, 0(x2) # load 0x7be383ee4a723948 from memory into f26
li x3, 0x4782623cfc895355 # load x3 with value 0x4782623cfc895355
sw x3, 0(x2) # store 0x4782623cfc895355 in memory
flw f28, 0(x2) # load 0x4782623cfc895355 from memory into f28
fmul.s f4, f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x17, 0xfbe959a774bcb7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab9049aa7b84568d # load x3 with value 0xab9049aa7b84568d
sw x3, 0(x2) # store 0xab9049aa7b84568d in memory
flw f27, 0(x2) # load 0xab9049aa7b84568d from memory into f27
li x3, 0xcb4a5392f60fbe16 # load x3 with value 0xcb4a5392f60fbe16
sw x3, 0(x2) # store 0xcb4a5392f60fbe16 in memory
flw f1, 0(x2) # load 0xcb4a5392f60fbe16 from memory into f1
fmul.s f17, f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x21, 0x16ccf1e5195479c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf8f7257b771861a # load x3 with value 0xaf8f7257b771861a
sw x3, 0(x2) # store 0xaf8f7257b771861a in memory
flw f28, 0(x2) # load 0xaf8f7257b771861a from memory into f28
li x3, 0xc87bc37021b1a9e0 # load x3 with value 0xc87bc37021b1a9e0
sw x3, 0(x2) # store 0xc87bc37021b1a9e0 in memory
flw f27, 0(x2) # load 0xc87bc37021b1a9e0 from memory into f27
fmul.s f21, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0x2369e75443d14a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40ed17bb18e64278 # load x3 with value 0x40ed17bb18e64278
sw x3, 0(x2) # store 0x40ed17bb18e64278 in memory
flw f29, 0(x2) # load 0x40ed17bb18e64278 from memory into f29
li x3, 0x912d277dfc890a3e # load x3 with value 0x912d277dfc890a3e
sw x3, 0(x2) # store 0x912d277dfc890a3e in memory
flw f16, 0(x2) # load 0x912d277dfc890a3e from memory into f16
fmul.s f22, f29, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x28, 0x9daef0c8a60561d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe61cd0b6f30ae993 # load x3 with value 0xe61cd0b6f30ae993
sw x3, 0(x2) # store 0xe61cd0b6f30ae993 in memory
flw f30, 0(x2) # load 0xe61cd0b6f30ae993 from memory into f30
li x3, 0x6038de4fd602c5df # load x3 with value 0x6038de4fd602c5df
sw x3, 0(x2) # store 0x6038de4fd602c5df in memory
flw f24, 0(x2) # load 0x6038de4fd602c5df from memory into f24
fmul.s f28, f30, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x31, 0x97a863d40a070364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c5de8aef6a02f21 # load x3 with value 0x3c5de8aef6a02f21
sw x3, 0(x2) # store 0x3c5de8aef6a02f21 in memory
flw f31, 0(x2) # load 0x3c5de8aef6a02f21 from memory into f31
li x3, 0xe31a7dcb58ee9d7e # load x3 with value 0xe31a7dcb58ee9d7e
sw x3, 0(x2) # store 0xe31a7dcb58ee9d7e in memory
flw f9, 0(x2) # load 0xe31a7dcb58ee9d7e from memory into f9
fmul.s f31, f31, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x8, 0x5dd66cb3df1d6377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b118654c26ceea0 # load x3 with value 0x9b118654c26ceea0
sw x3, 0(x2) # store 0x9b118654c26ceea0 in memory
flw f28, 0(x2) # load 0x9b118654c26ceea0 from memory into f28
li x3, 0x5a1a86cff501cbe1 # load x3 with value 0x5a1a86cff501cbe1
sw x3, 0(x2) # store 0x5a1a86cff501cbe1 in memory
flw f0, 0(x2) # load 0x5a1a86cff501cbe1 from memory into f0
fmul.s f8, f28, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x23, 0x973dca77aed276bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9633a61dcea45c0e # load x3 with value 0x9633a61dcea45c0e
sw x3, 0(x2) # store 0x9633a61dcea45c0e in memory
flw f19, 0(x2) # load 0x9633a61dcea45c0e from memory into f19
li x3, 0xfcd2e13880655068 # load x3 with value 0xfcd2e13880655068
sw x3, 0(x2) # store 0xfcd2e13880655068 in memory
flw f1, 0(x2) # load 0xfcd2e13880655068 from memory into f1
fmul.s f23, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x8, 0xcde77b9a680c5912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63e0e6b2f439d711 # load x3 with value 0x63e0e6b2f439d711
sw x3, 0(x2) # store 0x63e0e6b2f439d711 in memory
flw f12, 0(x2) # load 0x63e0e6b2f439d711 from memory into f12
li x3, 0x9062221b1805e010 # load x3 with value 0x9062221b1805e010
sw x3, 0(x2) # store 0x9062221b1805e010 in memory
flw f2, 0(x2) # load 0x9062221b1805e010 from memory into f2
fmul.s f8, f12, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x4, 0xa772e4dcf7f468a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56015a9475b85919 # load x3 with value 0x56015a9475b85919
sw x3, 0(x2) # store 0x56015a9475b85919 in memory
flw f23, 0(x2) # load 0x56015a9475b85919 from memory into f23
li x3, 0x4f03967cca380390 # load x3 with value 0x4f03967cca380390
sw x3, 0(x2) # store 0x4f03967cca380390 in memory
flw f3, 0(x2) # load 0x4f03967cca380390 from memory into f3
fmul.s f4, f23, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x30, 0x7673de802f45e83b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfba1f4bccc8fbff # load x3 with value 0xdfba1f4bccc8fbff
sw x3, 0(x2) # store 0xdfba1f4bccc8fbff in memory
flw f21, 0(x2) # load 0xdfba1f4bccc8fbff from memory into f21
li x3, 0x22787a7cabad33f2 # load x3 with value 0x22787a7cabad33f2
sw x3, 0(x2) # store 0x22787a7cabad33f2 in memory
flw f4, 0(x2) # load 0x22787a7cabad33f2 from memory into f4
fmul.s f30, f21, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x30, 0xd29eeb2183d05939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf71f1fab794ca5e # load x3 with value 0xbf71f1fab794ca5e
sw x3, 0(x2) # store 0xbf71f1fab794ca5e in memory
flw f27, 0(x2) # load 0xbf71f1fab794ca5e from memory into f27
li x3, 0x25ff2b169c6bde3d # load x3 with value 0x25ff2b169c6bde3d
sw x3, 0(x2) # store 0x25ff2b169c6bde3d in memory
flw f5, 0(x2) # load 0x25ff2b169c6bde3d from memory into f5
fmul.s f30, f27, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x15, 0xb8e4e2197f83bc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x134738058165e728 # load x3 with value 0x134738058165e728
sw x3, 0(x2) # store 0x134738058165e728 in memory
flw f26, 0(x2) # load 0x134738058165e728 from memory into f26
li x3, 0xee0ebd6912830fb2 # load x3 with value 0xee0ebd6912830fb2
sw x3, 0(x2) # store 0xee0ebd6912830fb2 in memory
flw f6, 0(x2) # load 0xee0ebd6912830fb2 from memory into f6
fmul.s f15, f26, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x17, 0x7e3b43ca5a172450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8804a0fe3cbd1613 # load x3 with value 0x8804a0fe3cbd1613
sw x3, 0(x2) # store 0x8804a0fe3cbd1613 in memory
flw f10, 0(x2) # load 0x8804a0fe3cbd1613 from memory into f10
li x3, 0xd9ee0a1b429dbe2f # load x3 with value 0xd9ee0a1b429dbe2f
sw x3, 0(x2) # store 0xd9ee0a1b429dbe2f in memory
flw f7, 0(x2) # load 0xd9ee0a1b429dbe2f from memory into f7
fmul.s f17, f10, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x2, 0x31e962faf2b639ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce65e2b611cab4e9 # load x3 with value 0xce65e2b611cab4e9
sw x3, 0(x2) # store 0xce65e2b611cab4e9 in memory
flw f13, 0(x2) # load 0xce65e2b611cab4e9 from memory into f13
li x3, 0x385e27ed37aac03b # load x3 with value 0x385e27ed37aac03b
sw x3, 0(x2) # store 0x385e27ed37aac03b in memory
flw f8, 0(x2) # load 0x385e27ed37aac03b from memory into f8
fmul.s f2, f13, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x13, 0x7cc24e4192d3be3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdef56272ffdb7d1 # load x3 with value 0xfdef56272ffdb7d1
sw x3, 0(x2) # store 0xfdef56272ffdb7d1 in memory
flw f26, 0(x2) # load 0xfdef56272ffdb7d1 from memory into f26
li x3, 0x351db8da9488ff8e # load x3 with value 0x351db8da9488ff8e
sw x3, 0(x2) # store 0x351db8da9488ff8e in memory
flw f9, 0(x2) # load 0x351db8da9488ff8e from memory into f9
fmul.s f13, f26, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x15, 0x0ce327047fa2d6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937637bdb2e2a59e # load x3 with value 0x937637bdb2e2a59e
sw x3, 0(x2) # store 0x937637bdb2e2a59e in memory
flw f29, 0(x2) # load 0x937637bdb2e2a59e from memory into f29
li x3, 0x36bf144f0194ecaa # load x3 with value 0x36bf144f0194ecaa
sw x3, 0(x2) # store 0x36bf144f0194ecaa in memory
flw f10, 0(x2) # load 0x36bf144f0194ecaa from memory into f10
fmul.s f15, f29, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x13, 0x84d92717b1f38d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x141009d7d6fa70f6 # load x3 with value 0x141009d7d6fa70f6
sw x3, 0(x2) # store 0x141009d7d6fa70f6 in memory
flw f16, 0(x2) # load 0x141009d7d6fa70f6 from memory into f16
li x3, 0x202ecdf35112b46e # load x3 with value 0x202ecdf35112b46e
sw x3, 0(x2) # store 0x202ecdf35112b46e in memory
flw f11, 0(x2) # load 0x202ecdf35112b46e from memory into f11
fmul.s f13, f16, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x23, 0xc889aa12a194e80f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14257fa5e719bc23 # load x3 with value 0x14257fa5e719bc23
sw x3, 0(x2) # store 0x14257fa5e719bc23 in memory
flw f3, 0(x2) # load 0x14257fa5e719bc23 from memory into f3
li x3, 0x1a9d86be3583c03e # load x3 with value 0x1a9d86be3583c03e
sw x3, 0(x2) # store 0x1a9d86be3583c03e in memory
flw f12, 0(x2) # load 0x1a9d86be3583c03e from memory into f12
fmul.s f23, f3, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x5, 0x6eb7a99d961a4334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5908dae247e43ce2 # load x3 with value 0x5908dae247e43ce2
sw x3, 0(x2) # store 0x5908dae247e43ce2 in memory
flw f7, 0(x2) # load 0x5908dae247e43ce2 from memory into f7
li x3, 0xf57f9c90674f76d3 # load x3 with value 0xf57f9c90674f76d3
sw x3, 0(x2) # store 0xf57f9c90674f76d3 in memory
flw f13, 0(x2) # load 0xf57f9c90674f76d3 from memory into f13
fmul.s f5, f7, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x12, 0x7fefc7ad3ed2b3fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c9702b4bbed986d # load x3 with value 0x4c9702b4bbed986d
sw x3, 0(x2) # store 0x4c9702b4bbed986d in memory
flw f9, 0(x2) # load 0x4c9702b4bbed986d from memory into f9
li x3, 0xb251ddf345a5baaa # load x3 with value 0xb251ddf345a5baaa
sw x3, 0(x2) # store 0xb251ddf345a5baaa in memory
flw f14, 0(x2) # load 0xb251ddf345a5baaa from memory into f14
fmul.s f12, f9, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x10, 0x5b44d55a7b3d65f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x979e2ed08ebd8003 # load x3 with value 0x979e2ed08ebd8003
sw x3, 0(x2) # store 0x979e2ed08ebd8003 in memory
flw f17, 0(x2) # load 0x979e2ed08ebd8003 from memory into f17
li x3, 0xd4bfec1d2a448c72 # load x3 with value 0xd4bfec1d2a448c72
sw x3, 0(x2) # store 0xd4bfec1d2a448c72 in memory
flw f15, 0(x2) # load 0xd4bfec1d2a448c72 from memory into f15
fmul.s f10, f17, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x9, 0xdf3ed6089d21ff36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb8af97ff4f27b56 # load x3 with value 0xdb8af97ff4f27b56
sw x3, 0(x2) # store 0xdb8af97ff4f27b56 in memory
flw f11, 0(x2) # load 0xdb8af97ff4f27b56 from memory into f11
li x3, 0x99ded81c14102769 # load x3 with value 0x99ded81c14102769
sw x3, 0(x2) # store 0x99ded81c14102769 in memory
flw f16, 0(x2) # load 0x99ded81c14102769 from memory into f16
fmul.s f9, f11, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0x4c8c4fbe89b0c7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5903b816961f18 # load x3 with value 0x7b5903b816961f18
sw x3, 0(x2) # store 0x7b5903b816961f18 in memory
flw f30, 0(x2) # load 0x7b5903b816961f18 from memory into f30
li x3, 0xa5a8d1c3c64f390e # load x3 with value 0xa5a8d1c3c64f390e
sw x3, 0(x2) # store 0xa5a8d1c3c64f390e in memory
flw f17, 0(x2) # load 0xa5a8d1c3c64f390e from memory into f17
fmul.s f4, f30, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x13, 0x57e509fe13e1a1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x995e39946b37cee8 # load x3 with value 0x995e39946b37cee8
sw x3, 0(x2) # store 0x995e39946b37cee8 in memory
flw f12, 0(x2) # load 0x995e39946b37cee8 from memory into f12
li x3, 0xce20d571575923b8 # load x3 with value 0xce20d571575923b8
sw x3, 0(x2) # store 0xce20d571575923b8 in memory
flw f18, 0(x2) # load 0xce20d571575923b8 from memory into f18
fmul.s f13, f12, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x20, 0x9626b82464bf80a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3b36e8e06e1b11c # load x3 with value 0xc3b36e8e06e1b11c
sw x3, 0(x2) # store 0xc3b36e8e06e1b11c in memory
flw f24, 0(x2) # load 0xc3b36e8e06e1b11c from memory into f24
li x3, 0xf6350c7fc4c3f22a # load x3 with value 0xf6350c7fc4c3f22a
sw x3, 0(x2) # store 0xf6350c7fc4c3f22a in memory
flw f19, 0(x2) # load 0xf6350c7fc4c3f22a from memory into f19
fmul.s f20, f24, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x8, 0xb1c908d643aefea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb75660d93d422d6d # load x3 with value 0xb75660d93d422d6d
sw x3, 0(x2) # store 0xb75660d93d422d6d in memory
flw f14, 0(x2) # load 0xb75660d93d422d6d from memory into f14
li x3, 0xafcff33ba8e08103 # load x3 with value 0xafcff33ba8e08103
sw x3, 0(x2) # store 0xafcff33ba8e08103 in memory
flw f20, 0(x2) # load 0xafcff33ba8e08103 from memory into f20
fmul.s f8, f14, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x20, 0x81d7db02f19df3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11db36b8143b9603 # load x3 with value 0x11db36b8143b9603
sw x3, 0(x2) # store 0x11db36b8143b9603 in memory
flw f8, 0(x2) # load 0x11db36b8143b9603 from memory into f8
li x3, 0x395c8630ca192d26 # load x3 with value 0x395c8630ca192d26
sw x3, 0(x2) # store 0x395c8630ca192d26 in memory
flw f21, 0(x2) # load 0x395c8630ca192d26 from memory into f21
fmul.s f20, f8, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x3, 0xbd6f3e56c8e680cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96afb642673929e # load x3 with value 0x96afb642673929e
sw x3, 0(x2) # store 0x96afb642673929e in memory
flw f11, 0(x2) # load 0x96afb642673929e from memory into f11
li x3, 0xc77db0b5d9e81ba4 # load x3 with value 0xc77db0b5d9e81ba4
sw x3, 0(x2) # store 0xc77db0b5d9e81ba4 in memory
flw f22, 0(x2) # load 0xc77db0b5d9e81ba4 from memory into f22
fmul.s f3, f11, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x13, 0x78d1d063ea05cb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1081472659182d6 # load x3 with value 0xd1081472659182d6
sw x3, 0(x2) # store 0xd1081472659182d6 in memory
flw f19, 0(x2) # load 0xd1081472659182d6 from memory into f19
li x3, 0x48410c3c752807ce # load x3 with value 0x48410c3c752807ce
sw x3, 0(x2) # store 0x48410c3c752807ce in memory
flw f23, 0(x2) # load 0x48410c3c752807ce from memory into f23
fmul.s f13, f19, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x21, 0xa72b3039556b363b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd924e4b9a47d9e26 # load x3 with value 0xd924e4b9a47d9e26
sw x3, 0(x2) # store 0xd924e4b9a47d9e26 in memory
flw f15, 0(x2) # load 0xd924e4b9a47d9e26 from memory into f15
li x3, 0xba6caa06b29d5bef # load x3 with value 0xba6caa06b29d5bef
sw x3, 0(x2) # store 0xba6caa06b29d5bef in memory
flw f24, 0(x2) # load 0xba6caa06b29d5bef from memory into f24
fmul.s f21, f15, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x29, 0xb374b02e570e1fad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a5e52ba16dd2d17 # load x3 with value 0x3a5e52ba16dd2d17
sw x3, 0(x2) # store 0x3a5e52ba16dd2d17 in memory
flw f9, 0(x2) # load 0x3a5e52ba16dd2d17 from memory into f9
li x3, 0x2bdf33f5f23e0446 # load x3 with value 0x2bdf33f5f23e0446
sw x3, 0(x2) # store 0x2bdf33f5f23e0446 in memory
flw f25, 0(x2) # load 0x2bdf33f5f23e0446 from memory into f25
fmul.s f29, f9, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x17, 0xf864fbadb7231982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x146e13a5162605b8 # load x3 with value 0x146e13a5162605b8
sw x3, 0(x2) # store 0x146e13a5162605b8 in memory
flw f10, 0(x2) # load 0x146e13a5162605b8 from memory into f10
li x3, 0xaf3f4a8fad9cc8e8 # load x3 with value 0xaf3f4a8fad9cc8e8
sw x3, 0(x2) # store 0xaf3f4a8fad9cc8e8 in memory
flw f26, 0(x2) # load 0xaf3f4a8fad9cc8e8 from memory into f26
fmul.s f17, f10, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x7, 0x4c18504a17effc66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea443ed02a89573f # load x3 with value 0xea443ed02a89573f
sw x3, 0(x2) # store 0xea443ed02a89573f in memory
flw f13, 0(x2) # load 0xea443ed02a89573f from memory into f13
li x3, 0x4e8de27bd144d7d7 # load x3 with value 0x4e8de27bd144d7d7
sw x3, 0(x2) # store 0x4e8de27bd144d7d7 in memory
flw f27, 0(x2) # load 0x4e8de27bd144d7d7 from memory into f27
fmul.s f7, f13, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0xb928be0733ea32d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1805e4f53ad98cbf # load x3 with value 0x1805e4f53ad98cbf
sw x3, 0(x2) # store 0x1805e4f53ad98cbf in memory
flw f24, 0(x2) # load 0x1805e4f53ad98cbf from memory into f24
li x3, 0x7bc5eea2f2842507 # load x3 with value 0x7bc5eea2f2842507
sw x3, 0(x2) # store 0x7bc5eea2f2842507 in memory
flw f28, 0(x2) # load 0x7bc5eea2f2842507 from memory into f28
fmul.s f6, f24, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x14, 0xcbe4236023dcce0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x360e1dd7c9b5393d # load x3 with value 0x360e1dd7c9b5393d
sw x3, 0(x2) # store 0x360e1dd7c9b5393d in memory
flw f9, 0(x2) # load 0x360e1dd7c9b5393d from memory into f9
li x3, 0xd3abb553a71f5cd3 # load x3 with value 0xd3abb553a71f5cd3
sw x3, 0(x2) # store 0xd3abb553a71f5cd3 in memory
flw f29, 0(x2) # load 0xd3abb553a71f5cd3 from memory into f29
fmul.s f14, f9, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x22, 0x03219bf9485275cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd0a2c82fa1e2c0f # load x3 with value 0xcd0a2c82fa1e2c0f
sw x3, 0(x2) # store 0xcd0a2c82fa1e2c0f in memory
flw f13, 0(x2) # load 0xcd0a2c82fa1e2c0f from memory into f13
li x3, 0x57944674c5a248ff # load x3 with value 0x57944674c5a248ff
sw x3, 0(x2) # store 0x57944674c5a248ff in memory
flw f30, 0(x2) # load 0x57944674c5a248ff from memory into f30
fmul.s f22, f13, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x4, 0x1fc4a69618cea900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91aa197f75fd039f # load x3 with value 0x91aa197f75fd039f
sw x3, 0(x2) # store 0x91aa197f75fd039f in memory
flw f1, 0(x2) # load 0x91aa197f75fd039f from memory into f1
li x3, 0x345aa381f8a9caee # load x3 with value 0x345aa381f8a9caee
sw x3, 0(x2) # store 0x345aa381f8a9caee in memory
flw f31, 0(x2) # load 0x345aa381f8a9caee from memory into f31
fmul.s f4, f1, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
