///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsub.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.844618
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
fsub.s f24, f30, f2 # perform first operation
fsub.s f29, f24, f18 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsub.s f28, f18, f16 # perform first operation
fsub.s f25, f26, f28 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.s f27, f25, f12 # perform first operation
fsub.s f27, f28, f16 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.s f29, f20, f23 # perform first operation
fsub.s f29, f4, f20 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.s f3, f11, f25 # perform first operation
fsub.s f11, f22, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.s f13, f18, f5 # perform first operation
fsub.s f5, f20, f27 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xa2646fad777c1ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c2b9f20d49f055f # load x3 with value 0x6c2b9f20d49f055f
sw x3, 0(x2) # store 0x6c2b9f20d49f055f in memory
flw f0, 0(x2) # load 0x6c2b9f20d49f055f from memory into f0
li x3, 0xa9ccc7f492af450f # load x3 with value 0xa9ccc7f492af450f
sw x3, 0(x2) # store 0xa9ccc7f492af450f in memory
flw f29, 0(x2) # load 0xa9ccc7f492af450f from memory into f29
fsub.s f0, f0, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x20c21a2e1165f916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64894c51fa3e4234 # load x3 with value 0x64894c51fa3e4234
sw x3, 0(x2) # store 0x64894c51fa3e4234 in memory
flw f1, 0(x2) # load 0x64894c51fa3e4234 from memory into f1
li x3, 0x9d409e7937f822d0 # load x3 with value 0x9d409e7937f822d0
sw x3, 0(x2) # store 0x9d409e7937f822d0 in memory
flw f3, 0(x2) # load 0x9d409e7937f822d0 from memory into f3
fsub.s f1, f1, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xaa4520809c0ffa69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c5a152f22e34fe9 # load x3 with value 0x3c5a152f22e34fe9
sw x3, 0(x2) # store 0x3c5a152f22e34fe9 in memory
flw f2, 0(x2) # load 0x3c5a152f22e34fe9 from memory into f2
li x3, 0x5e0f8186bf8496c5 # load x3 with value 0x5e0f8186bf8496c5
sw x3, 0(x2) # store 0x5e0f8186bf8496c5 in memory
flw f27, 0(x2) # load 0x5e0f8186bf8496c5 from memory into f27
fsub.s f2, f2, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x2c6aa10843802d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34edc3534be56ba7 # load x3 with value 0x34edc3534be56ba7
sw x3, 0(x2) # store 0x34edc3534be56ba7 in memory
flw f3, 0(x2) # load 0x34edc3534be56ba7 from memory into f3
li x3, 0x96a35c15c8e55153 # load x3 with value 0x96a35c15c8e55153
sw x3, 0(x2) # store 0x96a35c15c8e55153 in memory
flw f15, 0(x2) # load 0x96a35c15c8e55153 from memory into f15
fsub.s f3, f3, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xf3e54c9218b595ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bfc9e7de3bafaa8 # load x3 with value 0x9bfc9e7de3bafaa8
sw x3, 0(x2) # store 0x9bfc9e7de3bafaa8 in memory
flw f4, 0(x2) # load 0x9bfc9e7de3bafaa8 from memory into f4
li x3, 0x70e4195b9d1a5035 # load x3 with value 0x70e4195b9d1a5035
sw x3, 0(x2) # store 0x70e4195b9d1a5035 in memory
flw f15, 0(x2) # load 0x70e4195b9d1a5035 from memory into f15
fsub.s f4, f4, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xaa96bbd4992118b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75e28bcbe7ee0093 # load x3 with value 0x75e28bcbe7ee0093
sw x3, 0(x2) # store 0x75e28bcbe7ee0093 in memory
flw f5, 0(x2) # load 0x75e28bcbe7ee0093 from memory into f5
li x3, 0xf51cddf63fc09b09 # load x3 with value 0xf51cddf63fc09b09
sw x3, 0(x2) # store 0xf51cddf63fc09b09 in memory
flw f13, 0(x2) # load 0xf51cddf63fc09b09 from memory into f13
fsub.s f5, f5, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xdaf0b1d429bd7888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0029f9331f22b4c # load x3 with value 0xb0029f9331f22b4c
sw x3, 0(x2) # store 0xb0029f9331f22b4c in memory
flw f6, 0(x2) # load 0xb0029f9331f22b4c from memory into f6
li x3, 0xc867959ebd8489f5 # load x3 with value 0xc867959ebd8489f5
sw x3, 0(x2) # store 0xc867959ebd8489f5 in memory
flw f31, 0(x2) # load 0xc867959ebd8489f5 from memory into f31
fsub.s f6, f6, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x5926027c560cc73e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa451148c7019e3db # load x3 with value 0xa451148c7019e3db
sw x3, 0(x2) # store 0xa451148c7019e3db in memory
flw f7, 0(x2) # load 0xa451148c7019e3db from memory into f7
li x3, 0x7ba10d7dcfde6680 # load x3 with value 0x7ba10d7dcfde6680
sw x3, 0(x2) # store 0x7ba10d7dcfde6680 in memory
flw f5, 0(x2) # load 0x7ba10d7dcfde6680 from memory into f5
fsub.s f7, f7, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x1e7aec392b765720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71d8356f11c20368 # load x3 with value 0x71d8356f11c20368
sw x3, 0(x2) # store 0x71d8356f11c20368 in memory
flw f8, 0(x2) # load 0x71d8356f11c20368 from memory into f8
li x3, 0x7ab64c8bc3fdcbd1 # load x3 with value 0x7ab64c8bc3fdcbd1
sw x3, 0(x2) # store 0x7ab64c8bc3fdcbd1 in memory
flw f21, 0(x2) # load 0x7ab64c8bc3fdcbd1 from memory into f21
fsub.s f8, f8, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xab94ea55b708731c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f5f441a2a9756fa # load x3 with value 0x6f5f441a2a9756fa
sw x3, 0(x2) # store 0x6f5f441a2a9756fa in memory
flw f9, 0(x2) # load 0x6f5f441a2a9756fa from memory into f9
li x3, 0x2e311e9e95575243 # load x3 with value 0x2e311e9e95575243
sw x3, 0(x2) # store 0x2e311e9e95575243 in memory
flw f28, 0(x2) # load 0x2e311e9e95575243 from memory into f28
fsub.s f9, f9, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x4d277312cd9c6364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x605abf63c0855c88 # load x3 with value 0x605abf63c0855c88
sw x3, 0(x2) # store 0x605abf63c0855c88 in memory
flw f10, 0(x2) # load 0x605abf63c0855c88 from memory into f10
li x3, 0x675bb106b442797e # load x3 with value 0x675bb106b442797e
sw x3, 0(x2) # store 0x675bb106b442797e in memory
flw f24, 0(x2) # load 0x675bb106b442797e from memory into f24
fsub.s f10, f10, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x3974e5e39b59ebc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54a7a44b6c534699 # load x3 with value 0x54a7a44b6c534699
sw x3, 0(x2) # store 0x54a7a44b6c534699 in memory
flw f11, 0(x2) # load 0x54a7a44b6c534699 from memory into f11
li x3, 0x1a992c098eb8387a # load x3 with value 0x1a992c098eb8387a
sw x3, 0(x2) # store 0x1a992c098eb8387a in memory
flw f8, 0(x2) # load 0x1a992c098eb8387a from memory into f8
fsub.s f11, f11, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xcfe7c7886b54ff32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a835511f90186b1 # load x3 with value 0x1a835511f90186b1
sw x3, 0(x2) # store 0x1a835511f90186b1 in memory
flw f12, 0(x2) # load 0x1a835511f90186b1 from memory into f12
li x3, 0x44354622c838731b # load x3 with value 0x44354622c838731b
sw x3, 0(x2) # store 0x44354622c838731b in memory
flw f21, 0(x2) # load 0x44354622c838731b from memory into f21
fsub.s f12, f12, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xbb762753de2c8dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe3fd08982658bd1 # load x3 with value 0xbe3fd08982658bd1
sw x3, 0(x2) # store 0xbe3fd08982658bd1 in memory
flw f13, 0(x2) # load 0xbe3fd08982658bd1 from memory into f13
li x3, 0xe4bf9d71cfef3849 # load x3 with value 0xe4bf9d71cfef3849
sw x3, 0(x2) # store 0xe4bf9d71cfef3849 in memory
flw f28, 0(x2) # load 0xe4bf9d71cfef3849 from memory into f28
fsub.s f13, f13, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x49b29283f197b512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23989faaae4894b2 # load x3 with value 0x23989faaae4894b2
sw x3, 0(x2) # store 0x23989faaae4894b2 in memory
flw f14, 0(x2) # load 0x23989faaae4894b2 from memory into f14
li x3, 0x524f2e05b90a8048 # load x3 with value 0x524f2e05b90a8048
sw x3, 0(x2) # store 0x524f2e05b90a8048 in memory
flw f21, 0(x2) # load 0x524f2e05b90a8048 from memory into f21
fsub.s f14, f14, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xa66a6a09a4c34d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe459de75c7335d79 # load x3 with value 0xe459de75c7335d79
sw x3, 0(x2) # store 0xe459de75c7335d79 in memory
flw f15, 0(x2) # load 0xe459de75c7335d79 from memory into f15
li x3, 0x1736e43a8dd3eb29 # load x3 with value 0x1736e43a8dd3eb29
sw x3, 0(x2) # store 0x1736e43a8dd3eb29 in memory
flw f8, 0(x2) # load 0x1736e43a8dd3eb29 from memory into f8
fsub.s f15, f15, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x77a77fe90eeb7cae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x711c8bbd4a15b81a # load x3 with value 0x711c8bbd4a15b81a
sw x3, 0(x2) # store 0x711c8bbd4a15b81a in memory
flw f16, 0(x2) # load 0x711c8bbd4a15b81a from memory into f16
li x3, 0x7ffdcb3ad686b392 # load x3 with value 0x7ffdcb3ad686b392
sw x3, 0(x2) # store 0x7ffdcb3ad686b392 in memory
flw f7, 0(x2) # load 0x7ffdcb3ad686b392 from memory into f7
fsub.s f16, f16, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x1c083d1b9d82830e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37df5e3bddb46598 # load x3 with value 0x37df5e3bddb46598
sw x3, 0(x2) # store 0x37df5e3bddb46598 in memory
flw f17, 0(x2) # load 0x37df5e3bddb46598 from memory into f17
li x3, 0x804d2d4e0da69a2f # load x3 with value 0x804d2d4e0da69a2f
sw x3, 0(x2) # store 0x804d2d4e0da69a2f in memory
flw f25, 0(x2) # load 0x804d2d4e0da69a2f from memory into f25
fsub.s f17, f17, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xd5b89ee175da3385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc80684cf0eb4cd8 # load x3 with value 0xcc80684cf0eb4cd8
sw x3, 0(x2) # store 0xcc80684cf0eb4cd8 in memory
flw f18, 0(x2) # load 0xcc80684cf0eb4cd8 from memory into f18
li x3, 0xb789c2e51236c264 # load x3 with value 0xb789c2e51236c264
sw x3, 0(x2) # store 0xb789c2e51236c264 in memory
flw f30, 0(x2) # load 0xb789c2e51236c264 from memory into f30
fsub.s f18, f18, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xca014a1a4d36bfab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38570c3a5e88f048 # load x3 with value 0x38570c3a5e88f048
sw x3, 0(x2) # store 0x38570c3a5e88f048 in memory
flw f19, 0(x2) # load 0x38570c3a5e88f048 from memory into f19
li x3, 0xff1980ae2623d0e2 # load x3 with value 0xff1980ae2623d0e2
sw x3, 0(x2) # store 0xff1980ae2623d0e2 in memory
flw f31, 0(x2) # load 0xff1980ae2623d0e2 from memory into f31
fsub.s f19, f19, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x391d39636324e92c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa1ecc08f934ac1f # load x3 with value 0xfa1ecc08f934ac1f
sw x3, 0(x2) # store 0xfa1ecc08f934ac1f in memory
flw f20, 0(x2) # load 0xfa1ecc08f934ac1f from memory into f20
li x3, 0xd4976371057c0073 # load x3 with value 0xd4976371057c0073
sw x3, 0(x2) # store 0xd4976371057c0073 in memory
flw f11, 0(x2) # load 0xd4976371057c0073 from memory into f11
fsub.s f20, f20, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x3a02fd8f93de472c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e0066ed23091138 # load x3 with value 0x5e0066ed23091138
sw x3, 0(x2) # store 0x5e0066ed23091138 in memory
flw f21, 0(x2) # load 0x5e0066ed23091138 from memory into f21
li x3, 0x176d4d35831fcd1c # load x3 with value 0x176d4d35831fcd1c
sw x3, 0(x2) # store 0x176d4d35831fcd1c in memory
flw f30, 0(x2) # load 0x176d4d35831fcd1c from memory into f30
fsub.s f21, f21, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x94471100a4a8188d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e3a6e95047c7bfe # load x3 with value 0x5e3a6e95047c7bfe
sw x3, 0(x2) # store 0x5e3a6e95047c7bfe in memory
flw f22, 0(x2) # load 0x5e3a6e95047c7bfe from memory into f22
li x3, 0x9c61d501459e4ccb # load x3 with value 0x9c61d501459e4ccb
sw x3, 0(x2) # store 0x9c61d501459e4ccb in memory
flw f10, 0(x2) # load 0x9c61d501459e4ccb from memory into f10
fsub.s f22, f22, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x81cf4ea7d49518a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3961f1a1dea4ee24 # load x3 with value 0x3961f1a1dea4ee24
sw x3, 0(x2) # store 0x3961f1a1dea4ee24 in memory
flw f23, 0(x2) # load 0x3961f1a1dea4ee24 from memory into f23
li x3, 0xc715d63050a4f4b8 # load x3 with value 0xc715d63050a4f4b8
sw x3, 0(x2) # store 0xc715d63050a4f4b8 in memory
flw f26, 0(x2) # load 0xc715d63050a4f4b8 from memory into f26
fsub.s f23, f23, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x1c5a63afe771388c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffb2a67d81992ad0 # load x3 with value 0xffb2a67d81992ad0
sw x3, 0(x2) # store 0xffb2a67d81992ad0 in memory
flw f24, 0(x2) # load 0xffb2a67d81992ad0 from memory into f24
li x3, 0x92ae6515f276fe30 # load x3 with value 0x92ae6515f276fe30
sw x3, 0(x2) # store 0x92ae6515f276fe30 in memory
flw f29, 0(x2) # load 0x92ae6515f276fe30 from memory into f29
fsub.s f24, f24, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xb21786530dcf28a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc93e5ef667f8587f # load x3 with value 0xc93e5ef667f8587f
sw x3, 0(x2) # store 0xc93e5ef667f8587f in memory
flw f25, 0(x2) # load 0xc93e5ef667f8587f from memory into f25
li x3, 0x259779b966d22305 # load x3 with value 0x259779b966d22305
sw x3, 0(x2) # store 0x259779b966d22305 in memory
flw f6, 0(x2) # load 0x259779b966d22305 from memory into f6
fsub.s f25, f25, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x56c703d580d9f9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe94b5455a04966e2 # load x3 with value 0xe94b5455a04966e2
sw x3, 0(x2) # store 0xe94b5455a04966e2 in memory
flw f26, 0(x2) # load 0xe94b5455a04966e2 from memory into f26
li x3, 0x440c423be44a1c2f # load x3 with value 0x440c423be44a1c2f
sw x3, 0(x2) # store 0x440c423be44a1c2f in memory
flw f11, 0(x2) # load 0x440c423be44a1c2f from memory into f11
fsub.s f26, f26, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x6687948a275550e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2a346194ddf48d6 # load x3 with value 0xb2a346194ddf48d6
sw x3, 0(x2) # store 0xb2a346194ddf48d6 in memory
flw f27, 0(x2) # load 0xb2a346194ddf48d6 from memory into f27
li x3, 0x7ec5c516c55bd5f9 # load x3 with value 0x7ec5c516c55bd5f9
sw x3, 0(x2) # store 0x7ec5c516c55bd5f9 in memory
flw f17, 0(x2) # load 0x7ec5c516c55bd5f9 from memory into f17
fsub.s f27, f27, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xe9319bcbfc7dcabe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe7ca118e0d663e0 # load x3 with value 0xfe7ca118e0d663e0
sw x3, 0(x2) # store 0xfe7ca118e0d663e0 in memory
flw f28, 0(x2) # load 0xfe7ca118e0d663e0 from memory into f28
li x3, 0x3152bce0890a30f0 # load x3 with value 0x3152bce0890a30f0
sw x3, 0(x2) # store 0x3152bce0890a30f0 in memory
flw f28, 0(x2) # load 0x3152bce0890a30f0 from memory into f28
fsub.s f28, f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xb32ba6eae63d7a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2faa6d8926a08186 # load x3 with value 0x2faa6d8926a08186
sw x3, 0(x2) # store 0x2faa6d8926a08186 in memory
flw f29, 0(x2) # load 0x2faa6d8926a08186 from memory into f29
li x3, 0xd8818b9402104e62 # load x3 with value 0xd8818b9402104e62
sw x3, 0(x2) # store 0xd8818b9402104e62 in memory
flw f5, 0(x2) # load 0xd8818b9402104e62 from memory into f5
fsub.s f29, f29, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x79682670f1f80227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x337e68ff7f0787c4 # load x3 with value 0x337e68ff7f0787c4
sw x3, 0(x2) # store 0x337e68ff7f0787c4 in memory
flw f30, 0(x2) # load 0x337e68ff7f0787c4 from memory into f30
li x3, 0xf6686d70dee8d9d3 # load x3 with value 0xf6686d70dee8d9d3
sw x3, 0(x2) # store 0xf6686d70dee8d9d3 in memory
flw f11, 0(x2) # load 0xf6686d70dee8d9d3 from memory into f11
fsub.s f30, f30, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x6df43c8263121476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3057e7c92d575e6 # load x3 with value 0x3057e7c92d575e6
sw x3, 0(x2) # store 0x3057e7c92d575e6 in memory
flw f31, 0(x2) # load 0x3057e7c92d575e6 from memory into f31
li x3, 0xa3f54539f7a86b1e # load x3 with value 0xa3f54539f7a86b1e
sw x3, 0(x2) # store 0xa3f54539f7a86b1e in memory
flw f29, 0(x2) # load 0xa3f54539f7a86b1e from memory into f29
fsub.s f31, f31, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xe41e848db133bd65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2abc0dbf37f30c7 # load x3 with value 0xc2abc0dbf37f30c7
sw x3, 0(x2) # store 0xc2abc0dbf37f30c7 in memory
flw f30, 0(x2) # load 0xc2abc0dbf37f30c7 from memory into f30
li x3, 0xbdf461787fef627f # load x3 with value 0xbdf461787fef627f
sw x3, 0(x2) # store 0xbdf461787fef627f in memory
flw f0, 0(x2) # load 0xbdf461787fef627f from memory into f0
fsub.s f0, f30, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x070d42ff16984f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc923bda179682834 # load x3 with value 0xc923bda179682834
sw x3, 0(x2) # store 0xc923bda179682834 in memory
flw f24, 0(x2) # load 0xc923bda179682834 from memory into f24
li x3, 0xf31605c2bb394240 # load x3 with value 0xf31605c2bb394240
sw x3, 0(x2) # store 0xf31605c2bb394240 in memory
flw f1, 0(x2) # load 0xf31605c2bb394240 from memory into f1
fsub.s f1, f24, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x958b3397ca0d72e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a0268d79cfb4dd4 # load x3 with value 0x2a0268d79cfb4dd4
sw x3, 0(x2) # store 0x2a0268d79cfb4dd4 in memory
flw f29, 0(x2) # load 0x2a0268d79cfb4dd4 from memory into f29
li x3, 0xafd58d0188a8eb85 # load x3 with value 0xafd58d0188a8eb85
sw x3, 0(x2) # store 0xafd58d0188a8eb85 in memory
flw f2, 0(x2) # load 0xafd58d0188a8eb85 from memory into f2
fsub.s f2, f29, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xa8d07a11455c558b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x173fbc86b7e6fb9c # load x3 with value 0x173fbc86b7e6fb9c
sw x3, 0(x2) # store 0x173fbc86b7e6fb9c in memory
flw f10, 0(x2) # load 0x173fbc86b7e6fb9c from memory into f10
li x3, 0x8b532e1828508a91 # load x3 with value 0x8b532e1828508a91
sw x3, 0(x2) # store 0x8b532e1828508a91 in memory
flw f3, 0(x2) # load 0x8b532e1828508a91 from memory into f3
fsub.s f3, f10, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x6e9151a4193d9c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe77cc192a368a174 # load x3 with value 0xe77cc192a368a174
sw x3, 0(x2) # store 0xe77cc192a368a174 in memory
flw f29, 0(x2) # load 0xe77cc192a368a174 from memory into f29
li x3, 0xbd30b0b1c35d9f74 # load x3 with value 0xbd30b0b1c35d9f74
sw x3, 0(x2) # store 0xbd30b0b1c35d9f74 in memory
flw f4, 0(x2) # load 0xbd30b0b1c35d9f74 from memory into f4
fsub.s f4, f29, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xf2a6fa56d2830c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75785f75af587fad # load x3 with value 0x75785f75af587fad
sw x3, 0(x2) # store 0x75785f75af587fad in memory
flw f30, 0(x2) # load 0x75785f75af587fad from memory into f30
li x3, 0x31c06574dc9a36ed # load x3 with value 0x31c06574dc9a36ed
sw x3, 0(x2) # store 0x31c06574dc9a36ed in memory
flw f5, 0(x2) # load 0x31c06574dc9a36ed from memory into f5
fsub.s f5, f30, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xd76ca1de232f13f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a59b5fc7188c452 # load x3 with value 0x8a59b5fc7188c452
sw x3, 0(x2) # store 0x8a59b5fc7188c452 in memory
flw f25, 0(x2) # load 0x8a59b5fc7188c452 from memory into f25
li x3, 0xc2f5ec1c07fcd6e8 # load x3 with value 0xc2f5ec1c07fcd6e8
sw x3, 0(x2) # store 0xc2f5ec1c07fcd6e8 in memory
flw f6, 0(x2) # load 0xc2f5ec1c07fcd6e8 from memory into f6
fsub.s f6, f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x135d9a28ee528a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa485b49bc9b7ce4f # load x3 with value 0xa485b49bc9b7ce4f
sw x3, 0(x2) # store 0xa485b49bc9b7ce4f in memory
flw f18, 0(x2) # load 0xa485b49bc9b7ce4f from memory into f18
li x3, 0x6a33305a6852d836 # load x3 with value 0x6a33305a6852d836
sw x3, 0(x2) # store 0x6a33305a6852d836 in memory
flw f7, 0(x2) # load 0x6a33305a6852d836 from memory into f7
fsub.s f7, f18, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xc2544de9f67dc7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d2cdeb529423656 # load x3 with value 0x7d2cdeb529423656
sw x3, 0(x2) # store 0x7d2cdeb529423656 in memory
flw f9, 0(x2) # load 0x7d2cdeb529423656 from memory into f9
li x3, 0xc92800ed17976a53 # load x3 with value 0xc92800ed17976a53
sw x3, 0(x2) # store 0xc92800ed17976a53 in memory
flw f8, 0(x2) # load 0xc92800ed17976a53 from memory into f8
fsub.s f8, f9, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x67455bda934f955b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b6da954b4f5b341 # load x3 with value 0x9b6da954b4f5b341
sw x3, 0(x2) # store 0x9b6da954b4f5b341 in memory
flw f8, 0(x2) # load 0x9b6da954b4f5b341 from memory into f8
li x3, 0xe70508bb48967f2a # load x3 with value 0xe70508bb48967f2a
sw x3, 0(x2) # store 0xe70508bb48967f2a in memory
flw f9, 0(x2) # load 0xe70508bb48967f2a from memory into f9
fsub.s f9, f8, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xfb1e0518b96ef9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb52ca1b525f3e7ac # load x3 with value 0xb52ca1b525f3e7ac
sw x3, 0(x2) # store 0xb52ca1b525f3e7ac in memory
flw f8, 0(x2) # load 0xb52ca1b525f3e7ac from memory into f8
li x3, 0xc2b38251ca6536e3 # load x3 with value 0xc2b38251ca6536e3
sw x3, 0(x2) # store 0xc2b38251ca6536e3 in memory
flw f10, 0(x2) # load 0xc2b38251ca6536e3 from memory into f10
fsub.s f10, f8, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xac9f892aa52c4e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8b5ef2d357c8d60 # load x3 with value 0xb8b5ef2d357c8d60
sw x3, 0(x2) # store 0xb8b5ef2d357c8d60 in memory
flw f21, 0(x2) # load 0xb8b5ef2d357c8d60 from memory into f21
li x3, 0x12d91b76538799f0 # load x3 with value 0x12d91b76538799f0
sw x3, 0(x2) # store 0x12d91b76538799f0 in memory
flw f11, 0(x2) # load 0x12d91b76538799f0 from memory into f11
fsub.s f11, f21, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xc1ed2d9c8add6fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6066584fdfc0201c # load x3 with value 0x6066584fdfc0201c
sw x3, 0(x2) # store 0x6066584fdfc0201c in memory
flw f7, 0(x2) # load 0x6066584fdfc0201c from memory into f7
li x3, 0x2bca6fb6fff4de86 # load x3 with value 0x2bca6fb6fff4de86
sw x3, 0(x2) # store 0x2bca6fb6fff4de86 in memory
flw f12, 0(x2) # load 0x2bca6fb6fff4de86 from memory into f12
fsub.s f12, f7, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x30c0c6e40adbed32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51eea6f0479a8aa6 # load x3 with value 0x51eea6f0479a8aa6
sw x3, 0(x2) # store 0x51eea6f0479a8aa6 in memory
flw f19, 0(x2) # load 0x51eea6f0479a8aa6 from memory into f19
li x3, 0x7b5b94f6db4b10a2 # load x3 with value 0x7b5b94f6db4b10a2
sw x3, 0(x2) # store 0x7b5b94f6db4b10a2 in memory
flw f13, 0(x2) # load 0x7b5b94f6db4b10a2 from memory into f13
fsub.s f13, f19, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xb3a3c48a20eafa45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf80a38173a884057 # load x3 with value 0xf80a38173a884057
sw x3, 0(x2) # store 0xf80a38173a884057 in memory
flw f8, 0(x2) # load 0xf80a38173a884057 from memory into f8
li x3, 0x25e211c1882e6636 # load x3 with value 0x25e211c1882e6636
sw x3, 0(x2) # store 0x25e211c1882e6636 in memory
flw f14, 0(x2) # load 0x25e211c1882e6636 from memory into f14
fsub.s f14, f8, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xe02dfb3a27483c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dc69cba7cd7aa3a # load x3 with value 0x3dc69cba7cd7aa3a
sw x3, 0(x2) # store 0x3dc69cba7cd7aa3a in memory
flw f6, 0(x2) # load 0x3dc69cba7cd7aa3a from memory into f6
li x3, 0xcc3d265df861285c # load x3 with value 0xcc3d265df861285c
sw x3, 0(x2) # store 0xcc3d265df861285c in memory
flw f15, 0(x2) # load 0xcc3d265df861285c from memory into f15
fsub.s f15, f6, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x52e66f9e3acd7a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf75e4d22a1536e05 # load x3 with value 0xf75e4d22a1536e05
sw x3, 0(x2) # store 0xf75e4d22a1536e05 in memory
flw f12, 0(x2) # load 0xf75e4d22a1536e05 from memory into f12
li x3, 0x813bb0180dfb6181 # load x3 with value 0x813bb0180dfb6181
sw x3, 0(x2) # store 0x813bb0180dfb6181 in memory
flw f16, 0(x2) # load 0x813bb0180dfb6181 from memory into f16
fsub.s f16, f12, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x994d2460d996c031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae5440c2035b801a # load x3 with value 0xae5440c2035b801a
sw x3, 0(x2) # store 0xae5440c2035b801a in memory
flw f9, 0(x2) # load 0xae5440c2035b801a from memory into f9
li x3, 0x7598400ddf5972b # load x3 with value 0x7598400ddf5972b
sw x3, 0(x2) # store 0x7598400ddf5972b in memory
flw f17, 0(x2) # load 0x7598400ddf5972b from memory into f17
fsub.s f17, f9, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x49e25ade98b6dff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53fa8d2b6efcd43d # load x3 with value 0x53fa8d2b6efcd43d
sw x3, 0(x2) # store 0x53fa8d2b6efcd43d in memory
flw f15, 0(x2) # load 0x53fa8d2b6efcd43d from memory into f15
li x3, 0x613244c2c52668b5 # load x3 with value 0x613244c2c52668b5
sw x3, 0(x2) # store 0x613244c2c52668b5 in memory
flw f18, 0(x2) # load 0x613244c2c52668b5 from memory into f18
fsub.s f18, f15, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x58af78739882e57b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc2348c6ce9d89d # load x3 with value 0xbfc2348c6ce9d89d
sw x3, 0(x2) # store 0xbfc2348c6ce9d89d in memory
flw f20, 0(x2) # load 0xbfc2348c6ce9d89d from memory into f20
li x3, 0x98289b18f85e1f57 # load x3 with value 0x98289b18f85e1f57
sw x3, 0(x2) # store 0x98289b18f85e1f57 in memory
flw f19, 0(x2) # load 0x98289b18f85e1f57 from memory into f19
fsub.s f19, f20, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xd15295285ce83bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef4d11360caecd50 # load x3 with value 0xef4d11360caecd50
sw x3, 0(x2) # store 0xef4d11360caecd50 in memory
flw f5, 0(x2) # load 0xef4d11360caecd50 from memory into f5
li x3, 0xde8eab4c01a6d1e3 # load x3 with value 0xde8eab4c01a6d1e3
sw x3, 0(x2) # store 0xde8eab4c01a6d1e3 in memory
flw f20, 0(x2) # load 0xde8eab4c01a6d1e3 from memory into f20
fsub.s f20, f5, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xf76c9ca601d1be39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef5e3d22010beaf # load x3 with value 0x2ef5e3d22010beaf
sw x3, 0(x2) # store 0x2ef5e3d22010beaf in memory
flw f10, 0(x2) # load 0x2ef5e3d22010beaf from memory into f10
li x3, 0x51e47dbfd9bd3fc5 # load x3 with value 0x51e47dbfd9bd3fc5
sw x3, 0(x2) # store 0x51e47dbfd9bd3fc5 in memory
flw f21, 0(x2) # load 0x51e47dbfd9bd3fc5 from memory into f21
fsub.s f21, f10, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xdfd1aebf2d3cede0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ebe2a2787482508 # load x3 with value 0x3ebe2a2787482508
sw x3, 0(x2) # store 0x3ebe2a2787482508 in memory
flw f4, 0(x2) # load 0x3ebe2a2787482508 from memory into f4
li x3, 0xf10b0820319c358c # load x3 with value 0xf10b0820319c358c
sw x3, 0(x2) # store 0xf10b0820319c358c in memory
flw f22, 0(x2) # load 0xf10b0820319c358c from memory into f22
fsub.s f22, f4, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x19bec25824a5eaca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5134c73d1128d2ff # load x3 with value 0x5134c73d1128d2ff
sw x3, 0(x2) # store 0x5134c73d1128d2ff in memory
flw f31, 0(x2) # load 0x5134c73d1128d2ff from memory into f31
li x3, 0xc6705c2e8cd5f8cf # load x3 with value 0xc6705c2e8cd5f8cf
sw x3, 0(x2) # store 0xc6705c2e8cd5f8cf in memory
flw f23, 0(x2) # load 0xc6705c2e8cd5f8cf from memory into f23
fsub.s f23, f31, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xd9f53080dd9818d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f5569818032df98 # load x3 with value 0x5f5569818032df98
sw x3, 0(x2) # store 0x5f5569818032df98 in memory
flw f27, 0(x2) # load 0x5f5569818032df98 from memory into f27
li x3, 0x470650f013ab7a0b # load x3 with value 0x470650f013ab7a0b
sw x3, 0(x2) # store 0x470650f013ab7a0b in memory
flw f24, 0(x2) # load 0x470650f013ab7a0b from memory into f24
fsub.s f24, f27, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x40f745857f37391e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0200b567ad8ed71 # load x3 with value 0xf0200b567ad8ed71
sw x3, 0(x2) # store 0xf0200b567ad8ed71 in memory
flw f7, 0(x2) # load 0xf0200b567ad8ed71 from memory into f7
li x3, 0x21bc2d2c8d044dfa # load x3 with value 0x21bc2d2c8d044dfa
sw x3, 0(x2) # store 0x21bc2d2c8d044dfa in memory
flw f25, 0(x2) # load 0x21bc2d2c8d044dfa from memory into f25
fsub.s f25, f7, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x8019317b7f0d4067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10c3524842d29357 # load x3 with value 0x10c3524842d29357
sw x3, 0(x2) # store 0x10c3524842d29357 in memory
flw f13, 0(x2) # load 0x10c3524842d29357 from memory into f13
li x3, 0xa1b063d8e4044840 # load x3 with value 0xa1b063d8e4044840
sw x3, 0(x2) # store 0xa1b063d8e4044840 in memory
flw f26, 0(x2) # load 0xa1b063d8e4044840 from memory into f26
fsub.s f26, f13, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x58ed0d5477a61d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dc40eeb573b63c0 # load x3 with value 0x4dc40eeb573b63c0
sw x3, 0(x2) # store 0x4dc40eeb573b63c0 in memory
flw f31, 0(x2) # load 0x4dc40eeb573b63c0 from memory into f31
li x3, 0x424f4037e188b4a6 # load x3 with value 0x424f4037e188b4a6
sw x3, 0(x2) # store 0x424f4037e188b4a6 in memory
flw f27, 0(x2) # load 0x424f4037e188b4a6 from memory into f27
fsub.s f27, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x6363737f2c57b0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3ce6588a57ac27f # load x3 with value 0xb3ce6588a57ac27f
sw x3, 0(x2) # store 0xb3ce6588a57ac27f in memory
flw f21, 0(x2) # load 0xb3ce6588a57ac27f from memory into f21
li x3, 0xc9ba30d6fa8dd48a # load x3 with value 0xc9ba30d6fa8dd48a
sw x3, 0(x2) # store 0xc9ba30d6fa8dd48a in memory
flw f28, 0(x2) # load 0xc9ba30d6fa8dd48a from memory into f28
fsub.s f28, f21, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xf01fe832148aeb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8745c432568c7f5 # load x3 with value 0xa8745c432568c7f5
sw x3, 0(x2) # store 0xa8745c432568c7f5 in memory
flw f9, 0(x2) # load 0xa8745c432568c7f5 from memory into f9
li x3, 0x650f5e174be19d70 # load x3 with value 0x650f5e174be19d70
sw x3, 0(x2) # store 0x650f5e174be19d70 in memory
flw f29, 0(x2) # load 0x650f5e174be19d70 from memory into f29
fsub.s f29, f9, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xc7fdc3c87b1571b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf72f63368119d15e # load x3 with value 0xf72f63368119d15e
sw x3, 0(x2) # store 0xf72f63368119d15e in memory
flw f27, 0(x2) # load 0xf72f63368119d15e from memory into f27
li x3, 0x205a809e737c3c58 # load x3 with value 0x205a809e737c3c58
sw x3, 0(x2) # store 0x205a809e737c3c58 in memory
flw f30, 0(x2) # load 0x205a809e737c3c58 from memory into f30
fsub.s f30, f27, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xb8c78d612bdd203c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d27cb55c606c4a3 # load x3 with value 0x7d27cb55c606c4a3
sw x3, 0(x2) # store 0x7d27cb55c606c4a3 in memory
flw f28, 0(x2) # load 0x7d27cb55c606c4a3 from memory into f28
li x3, 0xb46e01407a2613a2 # load x3 with value 0xb46e01407a2613a2
sw x3, 0(x2) # store 0xb46e01407a2613a2 in memory
flw f31, 0(x2) # load 0xb46e01407a2613a2 from memory into f31
fsub.s f31, f28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x19, 0xdc0f86cf8a4fd036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x81908cd0a3886360 # load x3 with value 0x81908cd0a3886360
sw x3, 0(x2) # store 0x81908cd0a3886360 in memory
flw f30, 0(x2) # load 0x81908cd0a3886360 from memory into f30
fsub.s f19, f11, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x18, 0x26cce49478cbd9c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x9b4c3d10efa48bf2 # load x3 with value 0x9b4c3d10efa48bf2
sw x3, 0(x2) # store 0x9b4c3d10efa48bf2 in memory
flw f4, 0(x2) # load 0x9b4c3d10efa48bf2 from memory into f4
fsub.s f18, f15, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x27, 0xeec2f71dfb9cfd84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0xb0beb71243ba36ea # load x3 with value 0xb0beb71243ba36ea
sw x3, 0(x2) # store 0xb0beb71243ba36ea in memory
flw f31, 0(x2) # load 0xb0beb71243ba36ea from memory into f31
fsub.s f27, f26, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x14, 0x7d34d8c6c17c37b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x15ebcb7694cad5e6 # load x3 with value 0x15ebcb7694cad5e6
sw x3, 0(x2) # store 0x15ebcb7694cad5e6 in memory
flw f3, 0(x2) # load 0x15ebcb7694cad5e6 from memory into f3
fsub.s f14, f27, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x14, 0x136d12710ce1974c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x52acaf76c133086 # load x3 with value 0x52acaf76c133086
sw x3, 0(x2) # store 0x52acaf76c133086 in memory
flw f20, 0(x2) # load 0x52acaf76c133086 from memory into f20
fsub.s f14, f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x15, 0x4119791ed484db25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0xf2a1ae3002c99655 # load x3 with value 0xf2a1ae3002c99655
sw x3, 0(x2) # store 0xf2a1ae3002c99655 in memory
flw f24, 0(x2) # load 0xf2a1ae3002c99655 from memory into f24
fsub.s f15, f30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x17, 0xcb6e86dfd513c11d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0x8710c9363c601d2f # load x3 with value 0x8710c9363c601d2f
sw x3, 0(x2) # store 0x8710c9363c601d2f in memory
flw f4, 0(x2) # load 0x8710c9363c601d2f from memory into f4
fsub.s f17, f22, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x14, 0x277b35b97b9960de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0xa5ab171f27dbbc87 # load x3 with value 0xa5ab171f27dbbc87
sw x3, 0(x2) # store 0xa5ab171f27dbbc87 in memory
flw f15, 0(x2) # load 0xa5ab171f27dbbc87 from memory into f15
fsub.s f14, f11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x13, 0xed7cda6f6e619a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0xab6fbcaa801cf513 # load x3 with value 0xab6fbcaa801cf513
sw x3, 0(x2) # store 0xab6fbcaa801cf513 in memory
flw f9, 0(x2) # load 0xab6fbcaa801cf513 from memory into f9
fsub.s f13, f18, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x31, 0x293bf170c2b3d48a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x43dd6cf289c206ea # load x3 with value 0x43dd6cf289c206ea
sw x3, 0(x2) # store 0x43dd6cf289c206ea in memory
flw f14, 0(x2) # load 0x43dd6cf289c206ea from memory into f14
fsub.s f31, f6, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x26, 0x9edb1d556067dad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0xfdacae141de87431 # load x3 with value 0xfdacae141de87431
sw x3, 0(x2) # store 0xfdacae141de87431 in memory
flw f11, 0(x2) # load 0xfdacae141de87431 from memory into f11
fsub.s f26, f14, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x18, 0x352d841541008862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x818afbdf93c5d55d # load x3 with value 0x818afbdf93c5d55d
sw x3, 0(x2) # store 0x818afbdf93c5d55d in memory
flw f19, 0(x2) # load 0x818afbdf93c5d55d from memory into f19
fsub.s f18, f21, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x12, 0x1399b4497c4b9ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0xbbdb84041542aae0 # load x3 with value 0xbbdb84041542aae0
sw x3, 0(x2) # store 0xbbdb84041542aae0 in memory
flw f16, 0(x2) # load 0xbbdb84041542aae0 from memory into f16
fsub.s f12, f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x22, 0x753e55daa6d37352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x9c379a77873b1e34 # load x3 with value 0x9c379a77873b1e34
sw x3, 0(x2) # store 0x9c379a77873b1e34 in memory
flw f20, 0(x2) # load 0x9c379a77873b1e34 from memory into f20
fsub.s f22, f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x18, 0xd36d6ca72a68a86f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x37cbe5c0f9174b8c # load x3 with value 0x37cbe5c0f9174b8c
sw x3, 0(x2) # store 0x37cbe5c0f9174b8c in memory
flw f9, 0(x2) # load 0x37cbe5c0f9174b8c from memory into f9
fsub.s f18, f23, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x26, 0xe9fa5deef90316a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x8421f0a6aaf00aff # load x3 with value 0x8421f0a6aaf00aff
sw x3, 0(x2) # store 0x8421f0a6aaf00aff in memory
flw f6, 0(x2) # load 0x8421f0a6aaf00aff from memory into f6
fsub.s f26, f15, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x25, 0x5f1a38003335b07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x143442f78e871b00 # load x3 with value 0x143442f78e871b00
sw x3, 0(x2) # store 0x143442f78e871b00 in memory
flw f5, 0(x2) # load 0x143442f78e871b00 from memory into f5
fsub.s f25, f1, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x28, 0xc3a28bf4909bba27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x4f4e60905db682b2 # load x3 with value 0x4f4e60905db682b2
sw x3, 0(x2) # store 0x4f4e60905db682b2 in memory
flw f27, 0(x2) # load 0x4f4e60905db682b2 from memory into f27
fsub.s f28, f23, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x10, 0xace212db66c9b24c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0xccce7d3dbbdef635 # load x3 with value 0xccce7d3dbbdef635
sw x3, 0(x2) # store 0xccce7d3dbbdef635 in memory
flw f1, 0(x2) # load 0xccce7d3dbbdef635 from memory into f1
fsub.s f10, f14, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x21, 0xf96a34ec1c83185a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x3edad646727778ad # load x3 with value 0x3edad646727778ad
sw x3, 0(x2) # store 0x3edad646727778ad in memory
flw f1, 0(x2) # load 0x3edad646727778ad from memory into f1
fsub.s f21, f24, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x2, 0x144b863be2c25489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0xe8f3800d8b8537f7 # load x3 with value 0xe8f3800d8b8537f7
sw x3, 0(x2) # store 0xe8f3800d8b8537f7 in memory
flw f17, 0(x2) # load 0xe8f3800d8b8537f7 from memory into f17
fsub.s f2, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x22, 0x417a6f52c58e74ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0xaac3b39c17f0ddb1 # load x3 with value 0xaac3b39c17f0ddb1
sw x3, 0(x2) # store 0xaac3b39c17f0ddb1 in memory
flw f13, 0(x2) # load 0xaac3b39c17f0ddb1 from memory into f13
fsub.s f22, f23, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x30, 0xfb506dbed689cc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x717fecea2fc048fd # load x3 with value 0x717fecea2fc048fd
sw x3, 0(x2) # store 0x717fecea2fc048fd in memory
flw f5, 0(x2) # load 0x717fecea2fc048fd from memory into f5
fsub.s f30, f31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x2, 0xc5db0a09053d30c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x9423abdb1ccbccbf # load x3 with value 0x9423abdb1ccbccbf
sw x3, 0(x2) # store 0x9423abdb1ccbccbf in memory
flw f25, 0(x2) # load 0x9423abdb1ccbccbf from memory into f25
fsub.s f2, f19, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x16, 0xbe69c4d1173db92f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x73ce9c51f8256d0b # load x3 with value 0x73ce9c51f8256d0b
sw x3, 0(x2) # store 0x73ce9c51f8256d0b in memory
flw f31, 0(x2) # load 0x73ce9c51f8256d0b from memory into f31
fsub.s f16, f27, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x15, 0xef4f38df686c2c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0xbeae7acbb549ffe0 # load x3 with value 0xbeae7acbb549ffe0
sw x3, 0(x2) # store 0xbeae7acbb549ffe0 in memory
flw f25, 0(x2) # load 0xbeae7acbb549ffe0 from memory into f25
fsub.s f15, f7, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x5, 0xa9052a80bf5ac912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e62f7235f9ffcd7 # load x3 with value 0x6e62f7235f9ffcd7
sw x3, 0(x2) # store 0x6e62f7235f9ffcd7 in memory
flw f30, 0(x2) # load 0x6e62f7235f9ffcd7 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fsub.s f5, f30, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x24, 0xaab2561d15ec40b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f4a7084f4ee5ca5 # load x3 with value 0x2f4a7084f4ee5ca5
sw x3, 0(x2) # store 0x2f4a7084f4ee5ca5 in memory
flw f9, 0(x2) # load 0x2f4a7084f4ee5ca5 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fsub.s f24, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x27, 0xf1d81a534aeb7bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2176d7a8554ae03f # load x3 with value 0x2176d7a8554ae03f
sw x3, 0(x2) # store 0x2176d7a8554ae03f in memory
flw f29, 0(x2) # load 0x2176d7a8554ae03f from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f27, f29, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x3, 0xa4e7bb890166daea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb10db5a9722e3ee3 # load x3 with value 0xb10db5a9722e3ee3
sw x3, 0(x2) # store 0xb10db5a9722e3ee3 in memory
flw f23, 0(x2) # load 0xb10db5a9722e3ee3 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fsub.s f3, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x15, 0xd84f09c060d0c7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe118828a62cec6e0 # load x3 with value 0xe118828a62cec6e0
sw x3, 0(x2) # store 0xe118828a62cec6e0 in memory
flw f12, 0(x2) # load 0xe118828a62cec6e0 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fsub.s f15, f12, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x7, 0xc32121fa270e27b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe71ca1136b06cc3e # load x3 with value 0xe71ca1136b06cc3e
sw x3, 0(x2) # store 0xe71ca1136b06cc3e in memory
flw f21, 0(x2) # load 0xe71ca1136b06cc3e from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsub.s f7, f21, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x9, 0x24d15e6cdb2d5036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb10a512c338ac030 # load x3 with value 0xb10a512c338ac030
sw x3, 0(x2) # store 0xb10a512c338ac030 in memory
flw f25, 0(x2) # load 0xb10a512c338ac030 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fsub.s f9, f25, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x1, 0x8a02f20d900203fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2848ccd93d5fe9b2 # load x3 with value 0x2848ccd93d5fe9b2
sw x3, 0(x2) # store 0x2848ccd93d5fe9b2 in memory
flw f22, 0(x2) # load 0x2848ccd93d5fe9b2 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fsub.s f1, f22, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x21, 0x85592291a2c8a354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8144fbdf23e65b5f # load x3 with value 0x8144fbdf23e65b5f
sw x3, 0(x2) # store 0x8144fbdf23e65b5f in memory
flw f5, 0(x2) # load 0x8144fbdf23e65b5f from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fsub.s f21, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x2, 0x40c0b4285c32607e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59b2b8085cc9b2c7 # load x3 with value 0x59b2b8085cc9b2c7
sw x3, 0(x2) # store 0x59b2b8085cc9b2c7 in memory
flw f16, 0(x2) # load 0x59b2b8085cc9b2c7 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f2, f16, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x10, 0x17d61716ed0388e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f4ff1dc99af026d # load x3 with value 0x1f4ff1dc99af026d
sw x3, 0(x2) # store 0x1f4ff1dc99af026d in memory
flw f18, 0(x2) # load 0x1f4ff1dc99af026d from memory into f18
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f10, f18, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x28, 0x1b258b9fb36ebdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6c86a9c383d37f6 # load x3 with value 0xf6c86a9c383d37f6
sw x3, 0(x2) # store 0xf6c86a9c383d37f6 in memory
flw f18, 0(x2) # load 0xf6c86a9c383d37f6 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fsub.s f28, f18, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x20, 0xec93666be47b8f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f57fe5e8f88506e # load x3 with value 0x9f57fe5e8f88506e
sw x3, 0(x2) # store 0x9f57fe5e8f88506e in memory
flw f17, 0(x2) # load 0x9f57fe5e8f88506e from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsub.s f20, f17, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x6, 0x6efa98c1e8896969 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cffb3762b1f41f0 # load x3 with value 0x3cffb3762b1f41f0
sw x3, 0(x2) # store 0x3cffb3762b1f41f0 in memory
flw f11, 0(x2) # load 0x3cffb3762b1f41f0 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fsub.s f6, f11, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x25, 0xb8745e4cc6c27e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfedb9c74b86e752f # load x3 with value 0xfedb9c74b86e752f
sw x3, 0(x2) # store 0xfedb9c74b86e752f in memory
flw f21, 0(x2) # load 0xfedb9c74b86e752f from memory into f21
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fsub.s f25, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x18, 0xc46afc449c96008b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bffb0ae99382f29 # load x3 with value 0x2bffb0ae99382f29
sw x3, 0(x2) # store 0x2bffb0ae99382f29 in memory
flw f22, 0(x2) # load 0x2bffb0ae99382f29 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fsub.s f18, f22, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x9, 0xc6759974d34ba390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54ab0c1c62948c53 # load x3 with value 0x54ab0c1c62948c53
sw x3, 0(x2) # store 0x54ab0c1c62948c53 in memory
flw f21, 0(x2) # load 0x54ab0c1c62948c53 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fsub.s f9, f21, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x28, 0xa8e5d8f09dc79622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a8ea7c3f095f078 # load x3 with value 0x8a8ea7c3f095f078
sw x3, 0(x2) # store 0x8a8ea7c3f095f078 in memory
flw f19, 0(x2) # load 0x8a8ea7c3f095f078 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f28, f19, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x16, 0x5811a7702a3e73b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb704357faed5cd07 # load x3 with value 0xb704357faed5cd07
sw x3, 0(x2) # store 0xb704357faed5cd07 in memory
flw f18, 0(x2) # load 0xb704357faed5cd07 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fsub.s f16, f18, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x20, 0x8b70a0c9871a342d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64fff3742f9c45ea # load x3 with value 0x64fff3742f9c45ea
sw x3, 0(x2) # store 0x64fff3742f9c45ea in memory
flw f9, 0(x2) # load 0x64fff3742f9c45ea from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fsub.s f20, f9, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x31, 0xce4cc3362edcaffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76c846184cdc9934 # load x3 with value 0x76c846184cdc9934
sw x3, 0(x2) # store 0x76c846184cdc9934 in memory
flw f12, 0(x2) # load 0x76c846184cdc9934 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f31, f12, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x14, 0x7ec9bb35e82e1230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dfe9faa77a3042f # load x3 with value 0x8dfe9faa77a3042f
sw x3, 0(x2) # store 0x8dfe9faa77a3042f in memory
flw f16, 0(x2) # load 0x8dfe9faa77a3042f from memory into f16
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fsub.s f14, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x23, 0x41f2052557ae5df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d7dffabfbda3f05 # load x3 with value 0x6d7dffabfbda3f05
sw x3, 0(x2) # store 0x6d7dffabfbda3f05 in memory
flw f25, 0(x2) # load 0x6d7dffabfbda3f05 from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fsub.s f23, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x3, 0x89588146535c6e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b98eb84ddd2a5fb # load x3 with value 0x8b98eb84ddd2a5fb
sw x3, 0(x2) # store 0x8b98eb84ddd2a5fb in memory
flw f28, 0(x2) # load 0x8b98eb84ddd2a5fb from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fsub.s f3, f28, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x1, 0xaadfd117dd0bff29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc77de90ef3a1eed1 # load x3 with value 0xc77de90ef3a1eed1
sw x3, 0(x2) # store 0xc77de90ef3a1eed1 in memory
flw f26, 0(x2) # load 0xc77de90ef3a1eed1 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f1, f26, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x9, 0x1ab4109fd8947615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94c07b07ac4aee13 # load x3 with value 0x94c07b07ac4aee13
sw x3, 0(x2) # store 0x94c07b07ac4aee13 in memory
flw f1, 0(x2) # load 0x94c07b07ac4aee13 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f9, f1, f12 # perform operation

# Testcase cp_frm
li x6, 0xe361e38e850980f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5babc63c10675901 # load x3 with value 0x5babc63c10675901
sw x3, 0(x2) # store 0x5babc63c10675901 in memory
flw f4, 0(x2) # load 0x5babc63c10675901 from memory into f4
li x3, 0x3fc8a347bf2d56d7 # load x3 with value 0x3fc8a347bf2d56d7
sw x3, 0(x2) # store 0x3fc8a347bf2d56d7 in memory
flw f1, 0(x2) # load 0x3fc8a347bf2d56d7 from memory into f1
fsub.s f6, f4, f1, dyn # perform operation
fsub.s f6, f4, f1, rdn # perform operation
fsub.s f6, f4, f1, rmm # perform operation
fsub.s f6, f4, f1, rne # perform operation
fsub.s f6, f4, f1, rtz # perform operation
fsub.s f6, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x15, 0x8e08ee2a638d89f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fsub.s f15, f12, f25, dyn # perform operation
fsub.s f15, f12, f25, rdn # perform operation
fsub.s f15, f12, f25, rmm # perform operation
fsub.s f15, f12, f25, rne # perform operation
fsub.s f15, f12, f25, rtz # perform operation
fsub.s f15, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x26, 0xfa8f914f45508f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fsub.s f26, f21, f4, dyn # perform operation
fsub.s f26, f21, f4, rdn # perform operation
fsub.s f26, f21, f4, rmm # perform operation
fsub.s f26, f21, f4, rne # perform operation
fsub.s f26, f21, f4, rtz # perform operation
fsub.s f26, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x2, 0x4a80982050223743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f2, f7, f24, dyn # perform operation
fsub.s f2, f7, f24, rdn # perform operation
fsub.s f2, f7, f24, rmm # perform operation
fsub.s f2, f7, f24, rne # perform operation
fsub.s f2, f7, f24, rtz # perform operation
fsub.s f2, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x24, 0x49fe8b9e5c3fcb98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f24, f7, f5, dyn # perform operation
fsub.s f24, f7, f5, rdn # perform operation
fsub.s f24, f7, f5, rmm # perform operation
fsub.s f24, f7, f5, rne # perform operation
fsub.s f24, f7, f5, rtz # perform operation
fsub.s f24, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x2, 0x3e1f9e9c89682172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f2, f21, f28, dyn # perform operation
fsub.s f2, f21, f28, rdn # perform operation
fsub.s f2, f21, f28, rmm # perform operation
fsub.s f2, f21, f28, rne # perform operation
fsub.s f2, f21, f28, rtz # perform operation
fsub.s f2, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x9, 0x4cc90a84a300009e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fsub.s f9, f13, f21, dyn # perform operation
fsub.s f9, f13, f21, rdn # perform operation
fsub.s f9, f13, f21, rmm # perform operation
fsub.s f9, f13, f21, rne # perform operation
fsub.s f9, f13, f21, rtz # perform operation
fsub.s f9, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x19, 0xb2ed8718bbeb6758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fsub.s f19, f7, f31, dyn # perform operation
fsub.s f19, f7, f31, rdn # perform operation
fsub.s f19, f7, f31, rmm # perform operation
fsub.s f19, f7, f31, rne # perform operation
fsub.s f19, f7, f31, rtz # perform operation
fsub.s f19, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x8, 0x53810f2af832fd54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f8, f26, f17, dyn # perform operation
fsub.s f8, f26, f17, rdn # perform operation
fsub.s f8, f26, f17, rmm # perform operation
fsub.s f8, f26, f17, rne # perform operation
fsub.s f8, f26, f17, rtz # perform operation
fsub.s f8, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x21, 0xa8cdef49e0c9972e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f21, f23, f31, dyn # perform operation
fsub.s f21, f23, f31, rdn # perform operation
fsub.s f21, f23, f31, rmm # perform operation
fsub.s f21, f23, f31, rne # perform operation
fsub.s f21, f23, f31, rtz # perform operation
fsub.s f21, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x14, 0xf6758b70af3da4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fsub.s f14, f19, f21, dyn # perform operation
fsub.s f14, f19, f21, rdn # perform operation
fsub.s f14, f19, f21, rmm # perform operation
fsub.s f14, f19, f21, rne # perform operation
fsub.s f14, f19, f21, rtz # perform operation
fsub.s f14, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x25, 0xa0cd2ae03b069c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fsub.s f25, f19, f29, dyn # perform operation
fsub.s f25, f19, f29, rdn # perform operation
fsub.s f25, f19, f29, rmm # perform operation
fsub.s f25, f19, f29, rne # perform operation
fsub.s f25, f19, f29, rtz # perform operation
fsub.s f25, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x14, 0x8d6107ec40c53541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fsub.s f14, f15, f27, dyn # perform operation
fsub.s f14, f15, f27, rdn # perform operation
fsub.s f14, f15, f27, rmm # perform operation
fsub.s f14, f15, f27, rne # perform operation
fsub.s f14, f15, f27, rtz # perform operation
fsub.s f14, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x22, 0x85a4dff4aeca290b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fsub.s f22, f13, f25, dyn # perform operation
fsub.s f22, f13, f25, rdn # perform operation
fsub.s f22, f13, f25, rmm # perform operation
fsub.s f22, f13, f25, rne # perform operation
fsub.s f22, f13, f25, rtz # perform operation
fsub.s f22, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x7, 0x949c95db6a8000e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fsub.s f7, f26, f6, dyn # perform operation
fsub.s f7, f26, f6, rdn # perform operation
fsub.s f7, f26, f6, rmm # perform operation
fsub.s f7, f26, f6, rne # perform operation
fsub.s f7, f26, f6, rtz # perform operation
fsub.s f7, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x28, 0xe5f4e0cfe4930dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fsub.s f28, f8, f4, dyn # perform operation
fsub.s f28, f8, f4, rdn # perform operation
fsub.s f28, f8, f4, rmm # perform operation
fsub.s f28, f8, f4, rne # perform operation
fsub.s f28, f8, f4, rtz # perform operation
fsub.s f28, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x5, 0x1c5a8335e1da02bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fsub.s f5, f21, f13, dyn # perform operation
fsub.s f5, f21, f13, rdn # perform operation
fsub.s f5, f21, f13, rmm # perform operation
fsub.s f5, f21, f13, rne # perform operation
fsub.s f5, f21, f13, rtz # perform operation
fsub.s f5, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x16, 0xb38bc5560d76da59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f16, f24, f20, dyn # perform operation
fsub.s f16, f24, f20, rdn # perform operation
fsub.s f16, f24, f20, rmm # perform operation
fsub.s f16, f24, f20, rne # perform operation
fsub.s f16, f24, f20, rtz # perform operation
fsub.s f16, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x15, 0x4b8b82b1b24cf722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fsub.s f15, f3, f11, dyn # perform operation
fsub.s f15, f3, f11, rdn # perform operation
fsub.s f15, f3, f11, rmm # perform operation
fsub.s f15, f3, f11, rne # perform operation
fsub.s f15, f3, f11, rtz # perform operation
fsub.s f15, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x7, 0x5da3425369fdde53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f7, f3, f13, dyn # perform operation
fsub.s f7, f3, f13, rdn # perform operation
fsub.s f7, f3, f13, rmm # perform operation
fsub.s f7, f3, f13, rne # perform operation
fsub.s f7, f3, f13, rtz # perform operation
fsub.s f7, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x5, 0x6d5b786fb2fa2103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f5, f10, f29, dyn # perform operation
fsub.s f5, f10, f29, rdn # perform operation
fsub.s f5, f10, f29, rmm # perform operation
fsub.s f5, f10, f29, rne # perform operation
fsub.s f5, f10, f29, rtz # perform operation
fsub.s f5, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x20, 0x8156ab4d61aca35b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fsub.s f20, f28, f13, dyn # perform operation
fsub.s f20, f28, f13, rdn # perform operation
fsub.s f20, f28, f13, rmm # perform operation
fsub.s f20, f28, f13, rne # perform operation
fsub.s f20, f28, f13, rtz # perform operation
fsub.s f20, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x14, 0x0cc0f2768f5485b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fsub.s f14, f31, f17, dyn # perform operation
fsub.s f14, f31, f17, rdn # perform operation
fsub.s f14, f31, f17, rmm # perform operation
fsub.s f14, f31, f17, rne # perform operation
fsub.s f14, f31, f17, rtz # perform operation
fsub.s f14, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x22, 0x2d1dfa26a7b6f9b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fsub.s f22, f5, f30, dyn # perform operation
fsub.s f22, f5, f30, rdn # perform operation
fsub.s f22, f5, f30, rmm # perform operation
fsub.s f22, f5, f30, rne # perform operation
fsub.s f22, f5, f30, rtz # perform operation
fsub.s f22, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x12, 0x90531b87e7c86811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fsub.s f12, f5, f7, dyn # perform operation
fsub.s f12, f5, f7, rdn # perform operation
fsub.s f12, f5, f7, rmm # perform operation
fsub.s f12, f5, f7, rne # perform operation
fsub.s f12, f5, f7, rtz # perform operation
fsub.s f12, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x4, 0x6f2fc17085c2bdc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f4, f29, f16, dyn # perform operation
fsub.s f4, f29, f16, rdn # perform operation
fsub.s f4, f29, f16, rmm # perform operation
fsub.s f4, f29, f16, rne # perform operation
fsub.s f4, f29, f16, rtz # perform operation
fsub.s f4, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x30, 0x54319e3e6a94f267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f30, f6, f13, dyn # perform operation
fsub.s f30, f6, f13, rdn # perform operation
fsub.s f30, f6, f13, rmm # perform operation
fsub.s f30, f6, f13, rne # perform operation
fsub.s f30, f6, f13, rtz # perform operation
fsub.s f30, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x31, 0x0a0c0c71d30939a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fsub.s f31, f8, f23, dyn # perform operation
fsub.s f31, f8, f23, rdn # perform operation
fsub.s f31, f8, f23, rmm # perform operation
fsub.s f31, f8, f23, rne # perform operation
fsub.s f31, f8, f23, rtz # perform operation
fsub.s f31, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x27, 0x92ddaf9494a32cda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fsub.s f27, f18, f4, dyn # perform operation
fsub.s f27, f18, f4, rdn # perform operation
fsub.s f27, f18, f4, rmm # perform operation
fsub.s f27, f18, f4, rne # perform operation
fsub.s f27, f18, f4, rtz # perform operation
fsub.s f27, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x1, 0xc872e57b0140ca8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fsub.s f1, f24, f18, dyn # perform operation
fsub.s f1, f24, f18, rdn # perform operation
fsub.s f1, f24, f18, rmm # perform operation
fsub.s f1, f24, f18, rne # perform operation
fsub.s f1, f24, f18, rtz # perform operation
fsub.s f1, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x26, 0xe0e4fe4cfb468f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f26, f23, f20, dyn # perform operation
fsub.s f26, f23, f20, rdn # perform operation
fsub.s f26, f23, f20, rmm # perform operation
fsub.s f26, f23, f20, rne # perform operation
fsub.s f26, f23, f20, rtz # perform operation
fsub.s f26, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x2, 0x34c21ff820257333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f2, f6, f10, dyn # perform operation
fsub.s f2, f6, f10, rdn # perform operation
fsub.s f2, f6, f10, rmm # perform operation
fsub.s f2, f6, f10, rne # perform operation
fsub.s f2, f6, f10, rtz # perform operation
fsub.s f2, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x22, 0xcc5ccf64b7f6eae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fsub.s f22, f10, f20, dyn # perform operation
fsub.s f22, f10, f20, rdn # perform operation
fsub.s f22, f10, f20, rmm # perform operation
fsub.s f22, f10, f20, rne # perform operation
fsub.s f22, f10, f20, rtz # perform operation
fsub.s f22, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x24, 0xe4edb8523b9415f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fsub.s f24, f3, f25, dyn # perform operation
fsub.s f24, f3, f25, rdn # perform operation
fsub.s f24, f3, f25, rmm # perform operation
fsub.s f24, f3, f25, rne # perform operation
fsub.s f24, f3, f25, rtz # perform operation
fsub.s f24, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x6, 0xa6cda08e01d23a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fsub.s f6, f5, f15, dyn # perform operation
fsub.s f6, f5, f15, rdn # perform operation
fsub.s f6, f5, f15, rmm # perform operation
fsub.s f6, f5, f15, rne # perform operation
fsub.s f6, f5, f15, rtz # perform operation
fsub.s f6, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x31, 0x8137dfa9c293027b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fsub.s f31, f8, f24, dyn # perform operation
fsub.s f31, f8, f24, rdn # perform operation
fsub.s f31, f8, f24, rmm # perform operation
fsub.s f31, f8, f24, rne # perform operation
fsub.s f31, f8, f24, rtz # perform operation
fsub.s f31, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x24, 0x5aaf7365ffc99d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f24, f14, f27, dyn # perform operation
fsub.s f24, f14, f27, rdn # perform operation
fsub.s f24, f14, f27, rmm # perform operation
fsub.s f24, f14, f27, rne # perform operation
fsub.s f24, f14, f27, rtz # perform operation
fsub.s f24, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x19, 0x53028a212c327a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fsub.s f19, f1, f2, dyn # perform operation
fsub.s f19, f1, f2, rdn # perform operation
fsub.s f19, f1, f2, rmm # perform operation
fsub.s f19, f1, f2, rne # perform operation
fsub.s f19, f1, f2, rtz # perform operation
fsub.s f19, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x26, 0x291e1e7b40a60bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f26, f31, f8, dyn # perform operation
fsub.s f26, f31, f8, rdn # perform operation
fsub.s f26, f31, f8, rmm # perform operation
fsub.s f26, f31, f8, rne # perform operation
fsub.s f26, f31, f8, rtz # perform operation
fsub.s f26, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x19, 0x9bfbddc8212ca540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f19, f12, f31, dyn # perform operation
fsub.s f19, f12, f31, rdn # perform operation
fsub.s f19, f12, f31, rmm # perform operation
fsub.s f19, f12, f31, rne # perform operation
fsub.s f19, f12, f31, rtz # perform operation
fsub.s f19, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x19, 0x2afba42bd6a97111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f19, f2, f29, dyn # perform operation
fsub.s f19, f2, f29, rdn # perform operation
fsub.s f19, f2, f29, rmm # perform operation
fsub.s f19, f2, f29, rne # perform operation
fsub.s f19, f2, f29, rtz # perform operation
fsub.s f19, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x30, 0xffcbd447cf7bb741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f30, f12, f26, dyn # perform operation
fsub.s f30, f12, f26, rdn # perform operation
fsub.s f30, f12, f26, rmm # perform operation
fsub.s f30, f12, f26, rne # perform operation
fsub.s f30, f12, f26, rtz # perform operation
fsub.s f30, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x19, 0x5f05086468a641eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fsub.s f19, f14, f17, dyn # perform operation
fsub.s f19, f14, f17, rdn # perform operation
fsub.s f19, f14, f17, rmm # perform operation
fsub.s f19, f14, f17, rne # perform operation
fsub.s f19, f14, f17, rtz # perform operation
fsub.s f19, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x26, 0xb917759d6d06aad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fsub.s f26, f12, f23, dyn # perform operation
fsub.s f26, f12, f23, rdn # perform operation
fsub.s f26, f12, f23, rmm # perform operation
fsub.s f26, f12, f23, rne # perform operation
fsub.s f26, f12, f23, rtz # perform operation
fsub.s f26, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x25, 0x3a3097db45109994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fsub.s f25, f19, f11, dyn # perform operation
fsub.s f25, f19, f11, rdn # perform operation
fsub.s f25, f19, f11, rmm # perform operation
fsub.s f25, f19, f11, rne # perform operation
fsub.s f25, f19, f11, rtz # perform operation
fsub.s f25, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x14, 0xeead6b24ed7d8077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f14, f30, f7, dyn # perform operation
fsub.s f14, f30, f7, rdn # perform operation
fsub.s f14, f30, f7, rmm # perform operation
fsub.s f14, f30, f7, rne # perform operation
fsub.s f14, f30, f7, rtz # perform operation
fsub.s f14, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x31, 0x49be1e643b695d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fsub.s f31, f26, f21, dyn # perform operation
fsub.s f31, f26, f21, rdn # perform operation
fsub.s f31, f26, f21, rmm # perform operation
fsub.s f31, f26, f21, rne # perform operation
fsub.s f31, f26, f21, rtz # perform operation
fsub.s f31, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x7, 0xd112c0020fe6711d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fsub.s f7, f21, f4, dyn # perform operation
fsub.s f7, f21, f4, rdn # perform operation
fsub.s f7, f21, f4, rmm # perform operation
fsub.s f7, f21, f4, rne # perform operation
fsub.s f7, f21, f4, rtz # perform operation
fsub.s f7, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x24, 0xb57f97fe827e20de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fsub.s f24, f26, f21, dyn # perform operation
fsub.s f24, f26, f21, rdn # perform operation
fsub.s f24, f26, f21, rmm # perform operation
fsub.s f24, f26, f21, rne # perform operation
fsub.s f24, f26, f21, rtz # perform operation
fsub.s f24, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x1, 0x832aa188c97507e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fsub.s f1, f31, f23, dyn # perform operation
fsub.s f1, f31, f23, rdn # perform operation
fsub.s f1, f31, f23, rmm # perform operation
fsub.s f1, f31, f23, rne # perform operation
fsub.s f1, f31, f23, rtz # perform operation
fsub.s f1, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x21, 0x7ff86cb4912e34e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fsub.s f21, f14, f24, dyn # perform operation
fsub.s f21, f14, f24, rdn # perform operation
fsub.s f21, f14, f24, rmm # perform operation
fsub.s f21, f14, f24, rne # perform operation
fsub.s f21, f14, f24, rtz # perform operation
fsub.s f21, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x6, 0xc03e9aa2564d5f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f6, f3, f16, dyn # perform operation
fsub.s f6, f3, f16, rdn # perform operation
fsub.s f6, f3, f16, rmm # perform operation
fsub.s f6, f3, f16, rne # perform operation
fsub.s f6, f3, f16, rtz # perform operation
fsub.s f6, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x23, 0x2092fbba6a6d0c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f23, f15, f16, dyn # perform operation
fsub.s f23, f15, f16, rdn # perform operation
fsub.s f23, f15, f16, rmm # perform operation
fsub.s f23, f15, f16, rne # perform operation
fsub.s f23, f15, f16, rtz # perform operation
fsub.s f23, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x28, 0x90243fe51d87fbc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fsub.s f28, f25, f15, dyn # perform operation
fsub.s f28, f25, f15, rdn # perform operation
fsub.s f28, f25, f15, rmm # perform operation
fsub.s f28, f25, f15, rne # perform operation
fsub.s f28, f25, f15, rtz # perform operation
fsub.s f28, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x28, 0xfb9417741adb4cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fsub.s f28, f24, f12, dyn # perform operation
fsub.s f28, f24, f12, rdn # perform operation
fsub.s f28, f24, f12, rmm # perform operation
fsub.s f28, f24, f12, rne # perform operation
fsub.s f28, f24, f12, rtz # perform operation
fsub.s f28, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x1, 0x243496f779e7fcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f1, f3, f31, dyn # perform operation
fsub.s f1, f3, f31, rdn # perform operation
fsub.s f1, f3, f31, rmm # perform operation
fsub.s f1, f3, f31, rne # perform operation
fsub.s f1, f3, f31, rtz # perform operation
fsub.s f1, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x20, 0x91926c019c97a508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fsub.s f20, f1, f11, dyn # perform operation
fsub.s f20, f1, f11, rdn # perform operation
fsub.s f20, f1, f11, rmm # perform operation
fsub.s f20, f1, f11, rne # perform operation
fsub.s f20, f1, f11, rtz # perform operation
fsub.s f20, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x25, 0x2d6d160ab1b7f691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f25, f29, f14, dyn # perform operation
fsub.s f25, f29, f14, rdn # perform operation
fsub.s f25, f29, f14, rmm # perform operation
fsub.s f25, f29, f14, rne # perform operation
fsub.s f25, f29, f14, rtz # perform operation
fsub.s f25, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x27, 0xec16997e718c62c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f27, f15, f18, dyn # perform operation
fsub.s f27, f15, f18, rdn # perform operation
fsub.s f27, f15, f18, rmm # perform operation
fsub.s f27, f15, f18, rne # perform operation
fsub.s f27, f15, f18, rtz # perform operation
fsub.s f27, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x24, 0xb5cf3a01b00f5bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fsub.s f24, f9, f21, dyn # perform operation
fsub.s f24, f9, f21, rdn # perform operation
fsub.s f24, f9, f21, rmm # perform operation
fsub.s f24, f9, f21, rne # perform operation
fsub.s f24, f9, f21, rtz # perform operation
fsub.s f24, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x6, 0xbeeea9b6b7e4074f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f6, f24, f17, dyn # perform operation
fsub.s f6, f24, f17, rdn # perform operation
fsub.s f6, f24, f17, rmm # perform operation
fsub.s f6, f24, f17, rne # perform operation
fsub.s f6, f24, f17, rtz # perform operation
fsub.s f6, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x20, 0x4e37e767351ec2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f20, f27, f12, dyn # perform operation
fsub.s f20, f27, f12, rdn # perform operation
fsub.s f20, f27, f12, rmm # perform operation
fsub.s f20, f27, f12, rne # perform operation
fsub.s f20, f27, f12, rtz # perform operation
fsub.s f20, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x29, 0xf7056cc15d6c99bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fsub.s f29, f1, f8, dyn # perform operation
fsub.s f29, f1, f8, rdn # perform operation
fsub.s f29, f1, f8, rmm # perform operation
fsub.s f29, f1, f8, rne # perform operation
fsub.s f29, f1, f8, rtz # perform operation
fsub.s f29, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x29, 0x06e6cb6e285a7b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f29, f27, f14, dyn # perform operation
fsub.s f29, f27, f14, rdn # perform operation
fsub.s f29, f27, f14, rmm # perform operation
fsub.s f29, f27, f14, rne # perform operation
fsub.s f29, f27, f14, rtz # perform operation
fsub.s f29, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x17, 0x26f3043fe381caaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f17, f19, f11, dyn # perform operation
fsub.s f17, f19, f11, rdn # perform operation
fsub.s f17, f19, f11, rmm # perform operation
fsub.s f17, f19, f11, rne # perform operation
fsub.s f17, f19, f11, rtz # perform operation
fsub.s f17, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x2, 0x2e1e9c26e21f8b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f2, f30, f29, dyn # perform operation
fsub.s f2, f30, f29, rdn # perform operation
fsub.s f2, f30, f29, rmm # perform operation
fsub.s f2, f30, f29, rne # perform operation
fsub.s f2, f30, f29, rtz # perform operation
fsub.s f2, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x17, 0x6db72dbdfb61a9c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fsub.s f17, f16, f8, dyn # perform operation
fsub.s f17, f16, f8, rdn # perform operation
fsub.s f17, f16, f8, rmm # perform operation
fsub.s f17, f16, f8, rne # perform operation
fsub.s f17, f16, f8, rtz # perform operation
fsub.s f17, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x1, 0x57d0ad63fc7e2e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fsub.s f1, f2, f13, dyn # perform operation
fsub.s f1, f2, f13, rdn # perform operation
fsub.s f1, f2, f13, rmm # perform operation
fsub.s f1, f2, f13, rne # perform operation
fsub.s f1, f2, f13, rtz # perform operation
fsub.s f1, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x26, 0xad6e02c2d1848a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f26, f29, f9, dyn # perform operation
fsub.s f26, f29, f9, rdn # perform operation
fsub.s f26, f29, f9, rmm # perform operation
fsub.s f26, f29, f9, rne # perform operation
fsub.s f26, f29, f9, rtz # perform operation
fsub.s f26, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x11, 0xe75e5795a8e747fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f11, f10, f22, dyn # perform operation
fsub.s f11, f10, f22, rdn # perform operation
fsub.s f11, f10, f22, rmm # perform operation
fsub.s f11, f10, f22, rne # perform operation
fsub.s f11, f10, f22, rtz # perform operation
fsub.s f11, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x12, 0x80bc6a4d4caabc9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fsub.s f12, f5, f23, dyn # perform operation
fsub.s f12, f5, f23, rdn # perform operation
fsub.s f12, f5, f23, rmm # perform operation
fsub.s f12, f5, f23, rne # perform operation
fsub.s f12, f5, f23, rtz # perform operation
fsub.s f12, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x22, 0xe81bc09bb4d25e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fsub.s f22, f6, f17, dyn # perform operation
fsub.s f22, f6, f17, rdn # perform operation
fsub.s f22, f6, f17, rmm # perform operation
fsub.s f22, f6, f17, rne # perform operation
fsub.s f22, f6, f17, rtz # perform operation
fsub.s f22, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x15, 0x7aa20c6be580ac34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fsub.s f15, f29, f13, dyn # perform operation
fsub.s f15, f29, f13, rdn # perform operation
fsub.s f15, f29, f13, rmm # perform operation
fsub.s f15, f29, f13, rne # perform operation
fsub.s f15, f29, f13, rtz # perform operation
fsub.s f15, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x22, 0x9dce203bd1122c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f22, f19, f2, dyn # perform operation
fsub.s f22, f19, f2, rdn # perform operation
fsub.s f22, f19, f2, rmm # perform operation
fsub.s f22, f19, f2, rne # perform operation
fsub.s f22, f19, f2, rtz # perform operation
fsub.s f22, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x17, 0xcc3bf62c9802464b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fsub.s f17, f21, f20, dyn # perform operation
fsub.s f17, f21, f20, rdn # perform operation
fsub.s f17, f21, f20, rmm # perform operation
fsub.s f17, f21, f20, rne # perform operation
fsub.s f17, f21, f20, rtz # perform operation
fsub.s f17, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x12, 0x9bcf4353a0295b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f12, f7, f17, dyn # perform operation
fsub.s f12, f7, f17, rdn # perform operation
fsub.s f12, f7, f17, rmm # perform operation
fsub.s f12, f7, f17, rne # perform operation
fsub.s f12, f7, f17, rtz # perform operation
fsub.s f12, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x10, 0x9e8e85c17bad5721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsub.s f10, f25, f31, dyn # perform operation
fsub.s f10, f25, f31, rdn # perform operation
fsub.s f10, f25, f31, rmm # perform operation
fsub.s f10, f25, f31, rne # perform operation
fsub.s f10, f25, f31, rtz # perform operation
fsub.s f10, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x10, 0x6bec202e670ffa40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fsub.s f10, f12, f14, dyn # perform operation
fsub.s f10, f12, f14, rdn # perform operation
fsub.s f10, f12, f14, rmm # perform operation
fsub.s f10, f12, f14, rne # perform operation
fsub.s f10, f12, f14, rtz # perform operation
fsub.s f10, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x5, 0x70a7d228e714bcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsub.s f5, f18, f22, dyn # perform operation
fsub.s f5, f18, f22, rdn # perform operation
fsub.s f5, f18, f22, rmm # perform operation
fsub.s f5, f18, f22, rne # perform operation
fsub.s f5, f18, f22, rtz # perform operation
fsub.s f5, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x30, 0x82b75e8e281cd468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f30, f11, f2, dyn # perform operation
fsub.s f30, f11, f2, rdn # perform operation
fsub.s f30, f11, f2, rmm # perform operation
fsub.s f30, f11, f2, rne # perform operation
fsub.s f30, f11, f2, rtz # perform operation
fsub.s f30, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x17, 0x7d9f4abc0e7bca88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fsub.s f17, f31, f30, dyn # perform operation
fsub.s f17, f31, f30, rdn # perform operation
fsub.s f17, f31, f30, rmm # perform operation
fsub.s f17, f31, f30, rne # perform operation
fsub.s f17, f31, f30, rtz # perform operation
fsub.s f17, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x20, 0x78ef947036b54a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fsub.s f20, f12, f18, dyn # perform operation
fsub.s f20, f12, f18, rdn # perform operation
fsub.s f20, f12, f18, rmm # perform operation
fsub.s f20, f12, f18, rne # perform operation
fsub.s f20, f12, f18, rtz # perform operation
fsub.s f20, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x25, 0x4f87905f9f7b916e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fsub.s f25, f18, f13, dyn # perform operation
fsub.s f25, f18, f13, rdn # perform operation
fsub.s f25, f18, f13, rmm # perform operation
fsub.s f25, f18, f13, rne # perform operation
fsub.s f25, f18, f13, rtz # perform operation
fsub.s f25, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x13, 0x4d4c1ea4528f5890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fsub.s f13, f5, f30, dyn # perform operation
fsub.s f13, f5, f30, rdn # perform operation
fsub.s f13, f5, f30, rmm # perform operation
fsub.s f13, f5, f30, rne # perform operation
fsub.s f13, f5, f30, rtz # perform operation
fsub.s f13, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x13, 0x5affeb197c859008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f13, f17, f9, dyn # perform operation
fsub.s f13, f17, f9, rdn # perform operation
fsub.s f13, f17, f9, rmm # perform operation
fsub.s f13, f17, f9, rne # perform operation
fsub.s f13, f17, f9, rtz # perform operation
fsub.s f13, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x19, 0x486f96ef30aa2ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fsub.s f19, f18, f29, dyn # perform operation
fsub.s f19, f18, f29, rdn # perform operation
fsub.s f19, f18, f29, rmm # perform operation
fsub.s f19, f18, f29, rne # perform operation
fsub.s f19, f18, f29, rtz # perform operation
fsub.s f19, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x2, 0xa4b7779c7ed0f723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f2, f23, f31, dyn # perform operation
fsub.s f2, f23, f31, rdn # perform operation
fsub.s f2, f23, f31, rmm # perform operation
fsub.s f2, f23, f31, rne # perform operation
fsub.s f2, f23, f31, rtz # perform operation
fsub.s f2, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x27, 0x05c29d8e166baaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f27, f26, f11, dyn # perform operation
fsub.s f27, f26, f11, rdn # perform operation
fsub.s f27, f26, f11, rmm # perform operation
fsub.s f27, f26, f11, rne # perform operation
fsub.s f27, f26, f11, rtz # perform operation
fsub.s f27, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x8, 0x8fba8639a7ee39ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fsub.s f8, f1, f25, dyn # perform operation
fsub.s f8, f1, f25, rdn # perform operation
fsub.s f8, f1, f25, rmm # perform operation
fsub.s f8, f1, f25, rne # perform operation
fsub.s f8, f1, f25, rtz # perform operation
fsub.s f8, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x15, 0x9a5f206483b9477c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f15, f31, f22, dyn # perform operation
fsub.s f15, f31, f22, rdn # perform operation
fsub.s f15, f31, f22, rmm # perform operation
fsub.s f15, f31, f22, rne # perform operation
fsub.s f15, f31, f22, rtz # perform operation
fsub.s f15, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x11, 0xeb5d30f0f7149e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsub.s f11, f27, f21, dyn # perform operation
fsub.s f11, f27, f21, rdn # perform operation
fsub.s f11, f27, f21, rmm # perform operation
fsub.s f11, f27, f21, rne # perform operation
fsub.s f11, f27, f21, rtz # perform operation
fsub.s f11, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x20, 0xf1d52425f5f16964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fsub.s f20, f7, f24, dyn # perform operation
fsub.s f20, f7, f24, rdn # perform operation
fsub.s f20, f7, f24, rmm # perform operation
fsub.s f20, f7, f24, rne # perform operation
fsub.s f20, f7, f24, rtz # perform operation
fsub.s f20, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x11, 0xaeb8e138002efae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fsub.s f11, f18, f19, dyn # perform operation
fsub.s f11, f18, f19, rdn # perform operation
fsub.s f11, f18, f19, rmm # perform operation
fsub.s f11, f18, f19, rne # perform operation
fsub.s f11, f18, f19, rtz # perform operation
fsub.s f11, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x13, 0x81ec1bae096faa1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fsub.s f13, f5, f23, dyn # perform operation
fsub.s f13, f5, f23, rdn # perform operation
fsub.s f13, f5, f23, rmm # perform operation
fsub.s f13, f5, f23, rne # perform operation
fsub.s f13, f5, f23, rtz # perform operation
fsub.s f13, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x20, 0x4c00e1961abe0e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fsub.s f20, f2, f11, dyn # perform operation
fsub.s f20, f2, f11, rdn # perform operation
fsub.s f20, f2, f11, rmm # perform operation
fsub.s f20, f2, f11, rne # perform operation
fsub.s f20, f2, f11, rtz # perform operation
fsub.s f20, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x19, 0x073333778204ea95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f19, f27, f25, dyn # perform operation
fsub.s f19, f27, f25, rdn # perform operation
fsub.s f19, f27, f25, rmm # perform operation
fsub.s f19, f27, f25, rne # perform operation
fsub.s f19, f27, f25, rtz # perform operation
fsub.s f19, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x29, 0x80b38d6068a8c61b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f29, f2, f13, dyn # perform operation
fsub.s f29, f2, f13, rdn # perform operation
fsub.s f29, f2, f13, rmm # perform operation
fsub.s f29, f2, f13, rne # perform operation
fsub.s f29, f2, f13, rtz # perform operation
fsub.s f29, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x16, 0x07d81fb98ce34ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fsub.s f16, f29, f21, dyn # perform operation
fsub.s f16, f29, f21, rdn # perform operation
fsub.s f16, f29, f21, rmm # perform operation
fsub.s f16, f29, f21, rne # perform operation
fsub.s f16, f29, f21, rtz # perform operation
fsub.s f16, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x12, 0x10225a5b6b2347b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fsub.s f12, f3, f1, dyn # perform operation
fsub.s f12, f3, f1, rdn # perform operation
fsub.s f12, f3, f1, rmm # perform operation
fsub.s f12, f3, f1, rne # perform operation
fsub.s f12, f3, f1, rtz # perform operation
fsub.s f12, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x31, 0xc4da34497d7e4c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsub.s f31, f1, f8, dyn # perform operation
fsub.s f31, f1, f8, rdn # perform operation
fsub.s f31, f1, f8, rmm # perform operation
fsub.s f31, f1, f8, rne # perform operation
fsub.s f31, f1, f8, rtz # perform operation
fsub.s f31, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x24, 0xb4e46b216780696b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fsub.s f24, f17, f31, dyn # perform operation
fsub.s f24, f17, f31, rdn # perform operation
fsub.s f24, f17, f31, rmm # perform operation
fsub.s f24, f17, f31, rne # perform operation
fsub.s f24, f17, f31, rtz # perform operation
fsub.s f24, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x30, 0xa4fe0fe5bedb5593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fsub.s f30, f24, f31, dyn # perform operation
fsub.s f30, f24, f31, rdn # perform operation
fsub.s f30, f24, f31, rmm # perform operation
fsub.s f30, f24, f31, rne # perform operation
fsub.s f30, f24, f31, rtz # perform operation
fsub.s f30, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x4, 0xf02a289a83b70335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fsub.s f4, f31, f6, dyn # perform operation
fsub.s f4, f31, f6, rdn # perform operation
fsub.s f4, f31, f6, rmm # perform operation
fsub.s f4, f31, f6, rne # perform operation
fsub.s f4, f31, f6, rtz # perform operation
fsub.s f4, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x18, 0xdd5dfbdc5ef8dc01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f18, f3, f21, dyn # perform operation
fsub.s f18, f3, f21, rdn # perform operation
fsub.s f18, f3, f21, rmm # perform operation
fsub.s f18, f3, f21, rne # perform operation
fsub.s f18, f3, f21, rtz # perform operation
fsub.s f18, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x26, 0x63dd1a692a7903cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fsub.s f26, f21, f5, dyn # perform operation
fsub.s f26, f21, f5, rdn # perform operation
fsub.s f26, f21, f5, rmm # perform operation
fsub.s f26, f21, f5, rne # perform operation
fsub.s f26, f21, f5, rtz # perform operation
fsub.s f26, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x5, 0x6251551c18e127ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f5, f6, f26, dyn # perform operation
fsub.s f5, f6, f26, rdn # perform operation
fsub.s f5, f6, f26, rmm # perform operation
fsub.s f5, f6, f26, rne # perform operation
fsub.s f5, f6, f26, rtz # perform operation
fsub.s f5, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x31, 0x1764b2cafb0aec67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fsub.s f31, f9, f12, dyn # perform operation
fsub.s f31, f9, f12, rdn # perform operation
fsub.s f31, f9, f12, rmm # perform operation
fsub.s f31, f9, f12, rne # perform operation
fsub.s f31, f9, f12, rtz # perform operation
fsub.s f31, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x31, 0x790d17559beb658f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f31, f19, f30, dyn # perform operation
fsub.s f31, f19, f30, rdn # perform operation
fsub.s f31, f19, f30, rmm # perform operation
fsub.s f31, f19, f30, rne # perform operation
fsub.s f31, f19, f30, rtz # perform operation
fsub.s f31, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x31, 0xbe72136fcf7fe1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fsub.s f31, f30, f4, dyn # perform operation
fsub.s f31, f30, f4, rdn # perform operation
fsub.s f31, f30, f4, rmm # perform operation
fsub.s f31, f30, f4, rne # perform operation
fsub.s f31, f30, f4, rtz # perform operation
fsub.s f31, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x19, 0x604d9bb7251f4a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fsub.s f19, f8, f20, dyn # perform operation
fsub.s f19, f8, f20, rdn # perform operation
fsub.s f19, f8, f20, rmm # perform operation
fsub.s f19, f8, f20, rne # perform operation
fsub.s f19, f8, f20, rtz # perform operation
fsub.s f19, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x11, 0xf65820ac741a3b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsub.s f11, f28, f29, dyn # perform operation
fsub.s f11, f28, f29, rdn # perform operation
fsub.s f11, f28, f29, rmm # perform operation
fsub.s f11, f28, f29, rne # perform operation
fsub.s f11, f28, f29, rtz # perform operation
fsub.s f11, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x18, 0x2d24d9c830c9965b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fsub.s f18, f14, f23, dyn # perform operation
fsub.s f18, f14, f23, rdn # perform operation
fsub.s f18, f14, f23, rmm # perform operation
fsub.s f18, f14, f23, rne # perform operation
fsub.s f18, f14, f23, rtz # perform operation
fsub.s f18, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x1, 0x9e55e4c10c6a2cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f1, f15, f17, dyn # perform operation
fsub.s f1, f15, f17, rdn # perform operation
fsub.s f1, f15, f17, rmm # perform operation
fsub.s f1, f15, f17, rne # perform operation
fsub.s f1, f15, f17, rtz # perform operation
fsub.s f1, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x13, 0xc044a8be93ae57a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f13, f15, f7, dyn # perform operation
fsub.s f13, f15, f7, rdn # perform operation
fsub.s f13, f15, f7, rmm # perform operation
fsub.s f13, f15, f7, rne # perform operation
fsub.s f13, f15, f7, rtz # perform operation
fsub.s f13, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x4, 0xc32b5df2b3f00750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f4, f8, f27, dyn # perform operation
fsub.s f4, f8, f27, rdn # perform operation
fsub.s f4, f8, f27, rmm # perform operation
fsub.s f4, f8, f27, rne # perform operation
fsub.s f4, f8, f27, rtz # perform operation
fsub.s f4, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x31, 0xbf4713fe4e63e3af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fsub.s f31, f22, f8, dyn # perform operation
fsub.s f31, f22, f8, rdn # perform operation
fsub.s f31, f22, f8, rmm # perform operation
fsub.s f31, f22, f8, rne # perform operation
fsub.s f31, f22, f8, rtz # perform operation
fsub.s f31, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x6, 0x6514fe1a42a2482a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f6, f7, f29, dyn # perform operation
fsub.s f6, f7, f29, rdn # perform operation
fsub.s f6, f7, f29, rmm # perform operation
fsub.s f6, f7, f29, rne # perform operation
fsub.s f6, f7, f29, rtz # perform operation
fsub.s f6, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x11, 0xd8dc9e18e52ff260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fsub.s f11, f19, f5, dyn # perform operation
fsub.s f11, f19, f5, rdn # perform operation
fsub.s f11, f19, f5, rmm # perform operation
fsub.s f11, f19, f5, rne # perform operation
fsub.s f11, f19, f5, rtz # perform operation
fsub.s f11, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x7, 0xb96fb302a255dc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fsub.s f7, f16, f17, dyn # perform operation
fsub.s f7, f16, f17, rdn # perform operation
fsub.s f7, f16, f17, rmm # perform operation
fsub.s f7, f16, f17, rne # perform operation
fsub.s f7, f16, f17, rtz # perform operation
fsub.s f7, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x19, 0x3acdfb753c0cc247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsub.s f19, f24, f12, dyn # perform operation
fsub.s f19, f24, f12, rdn # perform operation
fsub.s f19, f24, f12, rmm # perform operation
fsub.s f19, f24, f12, rne # perform operation
fsub.s f19, f24, f12, rtz # perform operation
fsub.s f19, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x22, 0x7341ca5cf328d8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f22, f21, f9, dyn # perform operation
fsub.s f22, f21, f9, rdn # perform operation
fsub.s f22, f21, f9, rmm # perform operation
fsub.s f22, f21, f9, rne # perform operation
fsub.s f22, f21, f9, rtz # perform operation
fsub.s f22, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x12, 0x7b9811ab72ac35b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fsub.s f12, f11, f19, dyn # perform operation
fsub.s f12, f11, f19, rdn # perform operation
fsub.s f12, f11, f19, rmm # perform operation
fsub.s f12, f11, f19, rne # perform operation
fsub.s f12, f11, f19, rtz # perform operation
fsub.s f12, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x31, 0x3ecfa54279c0b727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fsub.s f31, f26, f19, dyn # perform operation
fsub.s f31, f26, f19, rdn # perform operation
fsub.s f31, f26, f19, rmm # perform operation
fsub.s f31, f26, f19, rne # perform operation
fsub.s f31, f26, f19, rtz # perform operation
fsub.s f31, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x1, 0x2719fd5f07603034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fsub.s f1, f12, f15, dyn # perform operation
fsub.s f1, f12, f15, rdn # perform operation
fsub.s f1, f12, f15, rmm # perform operation
fsub.s f1, f12, f15, rne # perform operation
fsub.s f1, f12, f15, rtz # perform operation
fsub.s f1, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x4, 0x5577b048616ec73d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f4, f3, f9, dyn # perform operation
fsub.s f4, f3, f9, rdn # perform operation
fsub.s f4, f3, f9, rmm # perform operation
fsub.s f4, f3, f9, rne # perform operation
fsub.s f4, f3, f9, rtz # perform operation
fsub.s f4, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x13, 0x1505fd1688aea683 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsub.s f13, f9, f15, dyn # perform operation
fsub.s f13, f9, f15, rdn # perform operation
fsub.s f13, f9, f15, rmm # perform operation
fsub.s f13, f9, f15, rne # perform operation
fsub.s f13, f9, f15, rtz # perform operation
fsub.s f13, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x24, 0xec9df1f6fd6c6532 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fsub.s f24, f22, f27, dyn # perform operation
fsub.s f24, f22, f27, rdn # perform operation
fsub.s f24, f22, f27, rmm # perform operation
fsub.s f24, f22, f27, rne # perform operation
fsub.s f24, f22, f27, rtz # perform operation
fsub.s f24, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x13, 0xe7463e9d41443908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fsub.s f13, f21, f10, dyn # perform operation
fsub.s f13, f21, f10, rdn # perform operation
fsub.s f13, f21, f10, rmm # perform operation
fsub.s f13, f21, f10, rne # perform operation
fsub.s f13, f21, f10, rtz # perform operation
fsub.s f13, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x16, 0xc26a51e70b542e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f16, f14, f15, dyn # perform operation
fsub.s f16, f14, f15, rdn # perform operation
fsub.s f16, f14, f15, rmm # perform operation
fsub.s f16, f14, f15, rne # perform operation
fsub.s f16, f14, f15, rtz # perform operation
fsub.s f16, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x3, 0xb70e0422e6bfbd25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fsub.s f3, f26, f28, dyn # perform operation
fsub.s f3, f26, f28, rdn # perform operation
fsub.s f3, f26, f28, rmm # perform operation
fsub.s f3, f26, f28, rne # perform operation
fsub.s f3, f26, f28, rtz # perform operation
fsub.s f3, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x30, 0x0f34e0ff82f7a4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fsub.s f30, f16, f9, dyn # perform operation
fsub.s f30, f16, f9, rdn # perform operation
fsub.s f30, f16, f9, rmm # perform operation
fsub.s f30, f16, f9, rne # perform operation
fsub.s f30, f16, f9, rtz # perform operation
fsub.s f30, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x25, 0xe3e712cfb04d2bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f25, f4, f26, dyn # perform operation
fsub.s f25, f4, f26, rdn # perform operation
fsub.s f25, f4, f26, rmm # perform operation
fsub.s f25, f4, f26, rne # perform operation
fsub.s f25, f4, f26, rtz # perform operation
fsub.s f25, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x28, 0xb4dd4eee953728d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fsub.s f28, f13, f4, dyn # perform operation
fsub.s f28, f13, f4, rdn # perform operation
fsub.s f28, f13, f4, rmm # perform operation
fsub.s f28, f13, f4, rne # perform operation
fsub.s f28, f13, f4, rtz # perform operation
fsub.s f28, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x2, 0x5380d120e31a6bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fsub.s f2, f3, f14, dyn # perform operation
fsub.s f2, f3, f14, rdn # perform operation
fsub.s f2, f3, f14, rmm # perform operation
fsub.s f2, f3, f14, rne # perform operation
fsub.s f2, f3, f14, rtz # perform operation
fsub.s f2, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x1, 0xff3b007c97a46b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fsub.s f1, f13, f10, dyn # perform operation
fsub.s f1, f13, f10, rdn # perform operation
fsub.s f1, f13, f10, rmm # perform operation
fsub.s f1, f13, f10, rne # perform operation
fsub.s f1, f13, f10, rtz # perform operation
fsub.s f1, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x20, 0xa012a965e8eef650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fsub.s f20, f6, f9, dyn # perform operation
fsub.s f20, f6, f9, rdn # perform operation
fsub.s f20, f6, f9, rmm # perform operation
fsub.s f20, f6, f9, rne # perform operation
fsub.s f20, f6, f9, rtz # perform operation
fsub.s f20, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x22, 0x1a1ef31b561b45cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fsub.s f22, f21, f16, dyn # perform operation
fsub.s f22, f21, f16, rdn # perform operation
fsub.s f22, f21, f16, rmm # perform operation
fsub.s f22, f21, f16, rne # perform operation
fsub.s f22, f21, f16, rtz # perform operation
fsub.s f22, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x27, 0x3823cd7b7596306d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fsub.s f27, f31, f25, dyn # perform operation
fsub.s f27, f31, f25, rdn # perform operation
fsub.s f27, f31, f25, rmm # perform operation
fsub.s f27, f31, f25, rne # perform operation
fsub.s f27, f31, f25, rtz # perform operation
fsub.s f27, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x26, 0xcda5595fa94bcc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fsub.s f26, f21, f12, dyn # perform operation
fsub.s f26, f21, f12, rdn # perform operation
fsub.s f26, f21, f12, rmm # perform operation
fsub.s f26, f21, f12, rne # perform operation
fsub.s f26, f21, f12, rtz # perform operation
fsub.s f26, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x12, 0x94dc756f8d7ea40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f12, f30, f26, dyn # perform operation
fsub.s f12, f30, f26, rdn # perform operation
fsub.s f12, f30, f26, rmm # perform operation
fsub.s f12, f30, f26, rne # perform operation
fsub.s f12, f30, f26, rtz # perform operation
fsub.s f12, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x15, 0x49794a056b590545 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f15, f20, f27, dyn # perform operation
fsub.s f15, f20, f27, rdn # perform operation
fsub.s f15, f20, f27, rmm # perform operation
fsub.s f15, f20, f27, rne # perform operation
fsub.s f15, f20, f27, rtz # perform operation
fsub.s f15, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x5, 0x3e5c9fe920b45dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f5, f20, f26, dyn # perform operation
fsub.s f5, f20, f26, rdn # perform operation
fsub.s f5, f20, f26, rmm # perform operation
fsub.s f5, f20, f26, rne # perform operation
fsub.s f5, f20, f26, rtz # perform operation
fsub.s f5, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x10, 0x993260306388f033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fsub.s f10, f31, f27, dyn # perform operation
fsub.s f10, f31, f27, rdn # perform operation
fsub.s f10, f31, f27, rmm # perform operation
fsub.s f10, f31, f27, rne # perform operation
fsub.s f10, f31, f27, rtz # perform operation
fsub.s f10, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x24, 0x6debc26c2c3b97ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fsub.s f24, f22, f16, dyn # perform operation
fsub.s f24, f22, f16, rdn # perform operation
fsub.s f24, f22, f16, rmm # perform operation
fsub.s f24, f22, f16, rne # perform operation
fsub.s f24, f22, f16, rtz # perform operation
fsub.s f24, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x25, 0x3fae134049694ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f25, f2, f11, dyn # perform operation
fsub.s f25, f2, f11, rdn # perform operation
fsub.s f25, f2, f11, rmm # perform operation
fsub.s f25, f2, f11, rne # perform operation
fsub.s f25, f2, f11, rtz # perform operation
fsub.s f25, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x21, 0x65b0d54b7a1a7acd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fsub.s f21, f7, f9, dyn # perform operation
fsub.s f21, f7, f9, rdn # perform operation
fsub.s f21, f7, f9, rmm # perform operation
fsub.s f21, f7, f9, rne # perform operation
fsub.s f21, f7, f9, rtz # perform operation
fsub.s f21, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x8, 0x0add874a29403693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fsub.s f8, f7, f28, dyn # perform operation
fsub.s f8, f7, f28, rdn # perform operation
fsub.s f8, f7, f28, rmm # perform operation
fsub.s f8, f7, f28, rne # perform operation
fsub.s f8, f7, f28, rtz # perform operation
fsub.s f8, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x26, 0x036f953d97de7712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f26, f29, f20, dyn # perform operation
fsub.s f26, f29, f20, rdn # perform operation
fsub.s f26, f29, f20, rmm # perform operation
fsub.s f26, f29, f20, rne # perform operation
fsub.s f26, f29, f20, rtz # perform operation
fsub.s f26, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x18, 0x18bfc0b0721c9993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f18, f13, f25, dyn # perform operation
fsub.s f18, f13, f25, rdn # perform operation
fsub.s f18, f13, f25, rmm # perform operation
fsub.s f18, f13, f25, rne # perform operation
fsub.s f18, f13, f25, rtz # perform operation
fsub.s f18, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x9, 0x5240a89f4d44063b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fsub.s f9, f20, f8, dyn # perform operation
fsub.s f9, f20, f8, rdn # perform operation
fsub.s f9, f20, f8, rmm # perform operation
fsub.s f9, f20, f8, rne # perform operation
fsub.s f9, f20, f8, rtz # perform operation
fsub.s f9, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x3, 0xbd4e21bfea0ceac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fsub.s f3, f7, f24, dyn # perform operation
fsub.s f3, f7, f24, rdn # perform operation
fsub.s f3, f7, f24, rmm # perform operation
fsub.s f3, f7, f24, rne # perform operation
fsub.s f3, f7, f24, rtz # perform operation
fsub.s f3, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x22, 0x6e13eb5deca88683 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsub.s f22, f12, f8, dyn # perform operation
fsub.s f22, f12, f8, rdn # perform operation
fsub.s f22, f12, f8, rmm # perform operation
fsub.s f22, f12, f8, rne # perform operation
fsub.s f22, f12, f8, rtz # perform operation
fsub.s f22, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x27, 0x67f197df39b0dc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fsub.s f27, f3, f22, dyn # perform operation
fsub.s f27, f3, f22, rdn # perform operation
fsub.s f27, f3, f22, rmm # perform operation
fsub.s f27, f3, f22, rne # perform operation
fsub.s f27, f3, f22, rtz # perform operation
fsub.s f27, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x15, 0x745827679bf33408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fsub.s f15, f17, f8, dyn # perform operation
fsub.s f15, f17, f8, rdn # perform operation
fsub.s f15, f17, f8, rmm # perform operation
fsub.s f15, f17, f8, rne # perform operation
fsub.s f15, f17, f8, rtz # perform operation
fsub.s f15, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x10, 0x3eef4c3a26601896 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fsub.s f10, f29, f30, dyn # perform operation
fsub.s f10, f29, f30, rdn # perform operation
fsub.s f10, f29, f30, rmm # perform operation
fsub.s f10, f29, f30, rne # perform operation
fsub.s f10, f29, f30, rtz # perform operation
fsub.s f10, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x11, 0xc2a933d4ff67faee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f11, f8, f18, dyn # perform operation
fsub.s f11, f8, f18, rdn # perform operation
fsub.s f11, f8, f18, rmm # perform operation
fsub.s f11, f8, f18, rne # perform operation
fsub.s f11, f8, f18, rtz # perform operation
fsub.s f11, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x12, 0x915c1fbe87ce7b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fsub.s f12, f6, f5, dyn # perform operation
fsub.s f12, f6, f5, rdn # perform operation
fsub.s f12, f6, f5, rmm # perform operation
fsub.s f12, f6, f5, rne # perform operation
fsub.s f12, f6, f5, rtz # perform operation
fsub.s f12, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x23, 0x2d7923a717653940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fsub.s f23, f6, f19, dyn # perform operation
fsub.s f23, f6, f19, rdn # perform operation
fsub.s f23, f6, f19, rmm # perform operation
fsub.s f23, f6, f19, rne # perform operation
fsub.s f23, f6, f19, rtz # perform operation
fsub.s f23, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x31, 0x0752599a7f615533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f31, f26, f14, dyn # perform operation
fsub.s f31, f26, f14, rdn # perform operation
fsub.s f31, f26, f14, rmm # perform operation
fsub.s f31, f26, f14, rne # perform operation
fsub.s f31, f26, f14, rtz # perform operation
fsub.s f31, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x4, 0xe53a5785fc49fae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fsub.s f4, f1, f25, dyn # perform operation
fsub.s f4, f1, f25, rdn # perform operation
fsub.s f4, f1, f25, rmm # perform operation
fsub.s f4, f1, f25, rne # perform operation
fsub.s f4, f1, f25, rtz # perform operation
fsub.s f4, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x5, 0xf9f794c1bc64d8d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fsub.s f5, f31, f15, dyn # perform operation
fsub.s f5, f31, f15, rdn # perform operation
fsub.s f5, f31, f15, rmm # perform operation
fsub.s f5, f31, f15, rne # perform operation
fsub.s f5, f31, f15, rtz # perform operation
fsub.s f5, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x18, 0x3be08be5a623b0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fsub.s f18, f27, f8, dyn # perform operation
fsub.s f18, f27, f8, rdn # perform operation
fsub.s f18, f27, f8, rmm # perform operation
fsub.s f18, f27, f8, rne # perform operation
fsub.s f18, f27, f8, rtz # perform operation
fsub.s f18, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x3, 0xfd9da44c127f974c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f3, f20, f9, dyn # perform operation
fsub.s f3, f20, f9, rdn # perform operation
fsub.s f3, f20, f9, rmm # perform operation
fsub.s f3, f20, f9, rne # perform operation
fsub.s f3, f20, f9, rtz # perform operation
fsub.s f3, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x8, 0x2495dbf14a74c441 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f8, f21, f15, dyn # perform operation
fsub.s f8, f21, f15, rdn # perform operation
fsub.s f8, f21, f15, rmm # perform operation
fsub.s f8, f21, f15, rne # perform operation
fsub.s f8, f21, f15, rtz # perform operation
fsub.s f8, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x21, 0xd318555e58e40201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f21, f24, f17, dyn # perform operation
fsub.s f21, f24, f17, rdn # perform operation
fsub.s f21, f24, f17, rmm # perform operation
fsub.s f21, f24, f17, rne # perform operation
fsub.s f21, f24, f17, rtz # perform operation
fsub.s f21, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x26, 0x0a86e80a16959177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fsub.s f26, f8, f13, dyn # perform operation
fsub.s f26, f8, f13, rdn # perform operation
fsub.s f26, f8, f13, rmm # perform operation
fsub.s f26, f8, f13, rne # perform operation
fsub.s f26, f8, f13, rtz # perform operation
fsub.s f26, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x11, 0x8376e414f8bfae95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fsub.s f11, f13, f23, dyn # perform operation
fsub.s f11, f13, f23, rdn # perform operation
fsub.s f11, f13, f23, rmm # perform operation
fsub.s f11, f13, f23, rne # perform operation
fsub.s f11, f13, f23, rtz # perform operation
fsub.s f11, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x15, 0xfd2ceaf64d13b6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f15, f1, f14, dyn # perform operation
fsub.s f15, f1, f14, rdn # perform operation
fsub.s f15, f1, f14, rmm # perform operation
fsub.s f15, f1, f14, rne # perform operation
fsub.s f15, f1, f14, rtz # perform operation
fsub.s f15, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x1, 0xf7ab0d7206db57a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f1, f12, f8, dyn # perform operation
fsub.s f1, f12, f8, rdn # perform operation
fsub.s f1, f12, f8, rmm # perform operation
fsub.s f1, f12, f8, rne # perform operation
fsub.s f1, f12, f8, rtz # perform operation
fsub.s f1, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x26, 0xa84b3f758913461f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fsub.s f26, f2, f8, dyn # perform operation
fsub.s f26, f2, f8, rdn # perform operation
fsub.s f26, f2, f8, rmm # perform operation
fsub.s f26, f2, f8, rne # perform operation
fsub.s f26, f2, f8, rtz # perform operation
fsub.s f26, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x26, 0xd8ac893dc99a1b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f26, f1, f11, dyn # perform operation
fsub.s f26, f1, f11, rdn # perform operation
fsub.s f26, f1, f11, rmm # perform operation
fsub.s f26, f1, f11, rne # perform operation
fsub.s f26, f1, f11, rtz # perform operation
fsub.s f26, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x18, 0x502cc461440c7296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fsub.s f18, f10, f5, dyn # perform operation
fsub.s f18, f10, f5, rdn # perform operation
fsub.s f18, f10, f5, rmm # perform operation
fsub.s f18, f10, f5, rne # perform operation
fsub.s f18, f10, f5, rtz # perform operation
fsub.s f18, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x2, 0xa052eee5398ef314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fsub.s f2, f25, f6, dyn # perform operation
fsub.s f2, f25, f6, rdn # perform operation
fsub.s f2, f25, f6, rmm # perform operation
fsub.s f2, f25, f6, rne # perform operation
fsub.s f2, f25, f6, rtz # perform operation
fsub.s f2, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x8, 0xa60f2031583f6115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fsub.s f8, f20, f30, dyn # perform operation
fsub.s f8, f20, f30, rdn # perform operation
fsub.s f8, f20, f30, rmm # perform operation
fsub.s f8, f20, f30, rne # perform operation
fsub.s f8, f20, f30, rtz # perform operation
fsub.s f8, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x15, 0x360bebb03bf83672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fsub.s f15, f10, f16, dyn # perform operation
fsub.s f15, f10, f16, rdn # perform operation
fsub.s f15, f10, f16, rmm # perform operation
fsub.s f15, f10, f16, rne # perform operation
fsub.s f15, f10, f16, rtz # perform operation
fsub.s f15, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x16, 0x65dd7a7e5dbfeb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fsub.s f16, f1, f8, dyn # perform operation
fsub.s f16, f1, f8, rdn # perform operation
fsub.s f16, f1, f8, rmm # perform operation
fsub.s f16, f1, f8, rne # perform operation
fsub.s f16, f1, f8, rtz # perform operation
fsub.s f16, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x8, 0xd923d43d14903141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fsub.s f8, f6, f28, dyn # perform operation
fsub.s f8, f6, f28, rdn # perform operation
fsub.s f8, f6, f28, rmm # perform operation
fsub.s f8, f6, f28, rne # perform operation
fsub.s f8, f6, f28, rtz # perform operation
fsub.s f8, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x17, 0xa7073fe7a0fad9b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f17, f15, f2, dyn # perform operation
fsub.s f17, f15, f2, rdn # perform operation
fsub.s f17, f15, f2, rmm # perform operation
fsub.s f17, f15, f2, rne # perform operation
fsub.s f17, f15, f2, rtz # perform operation
fsub.s f17, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x27, 0x407e9d4c965a952c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fsub.s f27, f22, f10, dyn # perform operation
fsub.s f27, f22, f10, rdn # perform operation
fsub.s f27, f22, f10, rmm # perform operation
fsub.s f27, f22, f10, rne # perform operation
fsub.s f27, f22, f10, rtz # perform operation
fsub.s f27, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x12, 0xe9c646be4274eb2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fsub.s f12, f26, f10, dyn # perform operation
fsub.s f12, f26, f10, rdn # perform operation
fsub.s f12, f26, f10, rmm # perform operation
fsub.s f12, f26, f10, rne # perform operation
fsub.s f12, f26, f10, rtz # perform operation
fsub.s f12, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x15, 0x6ef0a7110d7398b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fsub.s f15, f7, f6, dyn # perform operation
fsub.s f15, f7, f6, rdn # perform operation
fsub.s f15, f7, f6, rmm # perform operation
fsub.s f15, f7, f6, rne # perform operation
fsub.s f15, f7, f6, rtz # perform operation
fsub.s f15, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x29, 0x07204818fd666c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fsub.s f29, f5, f23, dyn # perform operation
fsub.s f29, f5, f23, rdn # perform operation
fsub.s f29, f5, f23, rmm # perform operation
fsub.s f29, f5, f23, rne # perform operation
fsub.s f29, f5, f23, rtz # perform operation
fsub.s f29, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x27, 0x954ae240682f5d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f27, f24, f12, dyn # perform operation
fsub.s f27, f24, f12, rdn # perform operation
fsub.s f27, f24, f12, rmm # perform operation
fsub.s f27, f24, f12, rne # perform operation
fsub.s f27, f24, f12, rtz # perform operation
fsub.s f27, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x5, 0x165c74e4f32250ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fsub.s f5, f22, f1, dyn # perform operation
fsub.s f5, f22, f1, rdn # perform operation
fsub.s f5, f22, f1, rmm # perform operation
fsub.s f5, f22, f1, rne # perform operation
fsub.s f5, f22, f1, rtz # perform operation
fsub.s f5, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x15, 0x05f8b59f766a4981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f15, f20, f14, dyn # perform operation
fsub.s f15, f20, f14, rdn # perform operation
fsub.s f15, f20, f14, rmm # perform operation
fsub.s f15, f20, f14, rne # perform operation
fsub.s f15, f20, f14, rtz # perform operation
fsub.s f15, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x27, 0x9a8f4f279ff3a261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fsub.s f27, f30, f21, dyn # perform operation
fsub.s f27, f30, f21, rdn # perform operation
fsub.s f27, f30, f21, rmm # perform operation
fsub.s f27, f30, f21, rne # perform operation
fsub.s f27, f30, f21, rtz # perform operation
fsub.s f27, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x15, 0xf4bd575817a91eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fsub.s f15, f27, f13, dyn # perform operation
fsub.s f15, f27, f13, rdn # perform operation
fsub.s f15, f27, f13, rmm # perform operation
fsub.s f15, f27, f13, rne # perform operation
fsub.s f15, f27, f13, rtz # perform operation
fsub.s f15, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x4, 0x3c509952109438a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fsub.s f4, f10, f26, dyn # perform operation
fsub.s f4, f10, f26, rdn # perform operation
fsub.s f4, f10, f26, rmm # perform operation
fsub.s f4, f10, f26, rne # perform operation
fsub.s f4, f10, f26, rtz # perform operation
fsub.s f4, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x31, 0xc981bc4789da33ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f31, f15, f28, dyn # perform operation
fsub.s f31, f15, f28, rdn # perform operation
fsub.s f31, f15, f28, rmm # perform operation
fsub.s f31, f15, f28, rne # perform operation
fsub.s f31, f15, f28, rtz # perform operation
fsub.s f31, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x19, 0xd227b56f81012b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fsub.s f19, f26, f23, dyn # perform operation
fsub.s f19, f26, f23, rdn # perform operation
fsub.s f19, f26, f23, rmm # perform operation
fsub.s f19, f26, f23, rne # perform operation
fsub.s f19, f26, f23, rtz # perform operation
fsub.s f19, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x12, 0xef48947f1310b018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fsub.s f12, f11, f28, dyn # perform operation
fsub.s f12, f11, f28, rdn # perform operation
fsub.s f12, f11, f28, rmm # perform operation
fsub.s f12, f11, f28, rne # perform operation
fsub.s f12, f11, f28, rtz # perform operation
fsub.s f12, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x28, 0xee3ce6a0c59911a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fsub.s f28, f2, f17, dyn # perform operation
fsub.s f28, f2, f17, rdn # perform operation
fsub.s f28, f2, f17, rmm # perform operation
fsub.s f28, f2, f17, rne # perform operation
fsub.s f28, f2, f17, rtz # perform operation
fsub.s f28, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x28, 0xa44a07150c239133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fsub.s f28, f23, f29, dyn # perform operation
fsub.s f28, f23, f29, rdn # perform operation
fsub.s f28, f23, f29, rmm # perform operation
fsub.s f28, f23, f29, rne # perform operation
fsub.s f28, f23, f29, rtz # perform operation
fsub.s f28, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x2, 0xc64cefd9c708fb60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f2, f9, f5, dyn # perform operation
fsub.s f2, f9, f5, rdn # perform operation
fsub.s f2, f9, f5, rmm # perform operation
fsub.s f2, f9, f5, rne # perform operation
fsub.s f2, f9, f5, rtz # perform operation
fsub.s f2, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x14, 0xf36cab400e8781c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f14, f13, f8, dyn # perform operation
fsub.s f14, f13, f8, rdn # perform operation
fsub.s f14, f13, f8, rmm # perform operation
fsub.s f14, f13, f8, rne # perform operation
fsub.s f14, f13, f8, rtz # perform operation
fsub.s f14, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x2, 0x7ebb9f209cf3536c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fsub.s f2, f25, f26, dyn # perform operation
fsub.s f2, f25, f26, rdn # perform operation
fsub.s f2, f25, f26, rmm # perform operation
fsub.s f2, f25, f26, rne # perform operation
fsub.s f2, f25, f26, rtz # perform operation
fsub.s f2, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x3, 0xceafe0d9b52af173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fsub.s f3, f25, f26, dyn # perform operation
fsub.s f3, f25, f26, rdn # perform operation
fsub.s f3, f25, f26, rmm # perform operation
fsub.s f3, f25, f26, rne # perform operation
fsub.s f3, f25, f26, rtz # perform operation
fsub.s f3, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x23, 0x613d94fb275e10b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f23, f10, f3, dyn # perform operation
fsub.s f23, f10, f3, rdn # perform operation
fsub.s f23, f10, f3, rmm # perform operation
fsub.s f23, f10, f3, rne # perform operation
fsub.s f23, f10, f3, rtz # perform operation
fsub.s f23, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x15, 0xe3e90903abb64c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsub.s f15, f21, f18, dyn # perform operation
fsub.s f15, f21, f18, rdn # perform operation
fsub.s f15, f21, f18, rmm # perform operation
fsub.s f15, f21, f18, rne # perform operation
fsub.s f15, f21, f18, rtz # perform operation
fsub.s f15, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x12, 0x0734c1dafab035d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fsub.s f12, f13, f19, dyn # perform operation
fsub.s f12, f13, f19, rdn # perform operation
fsub.s f12, f13, f19, rmm # perform operation
fsub.s f12, f13, f19, rne # perform operation
fsub.s f12, f13, f19, rtz # perform operation
fsub.s f12, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x9, 0xb292bb5e31f3f888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fsub.s f9, f17, f4, dyn # perform operation
fsub.s f9, f17, f4, rdn # perform operation
fsub.s f9, f17, f4, rmm # perform operation
fsub.s f9, f17, f4, rne # perform operation
fsub.s f9, f17, f4, rtz # perform operation
fsub.s f9, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x19, 0x2042789de23065a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fsub.s f19, f25, f31, dyn # perform operation
fsub.s f19, f25, f31, rdn # perform operation
fsub.s f19, f25, f31, rmm # perform operation
fsub.s f19, f25, f31, rne # perform operation
fsub.s f19, f25, f31, rtz # perform operation
fsub.s f19, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x31, 0xbf30a78cce65ae4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fsub.s f31, f8, f19, dyn # perform operation
fsub.s f31, f8, f19, rdn # perform operation
fsub.s f31, f8, f19, rmm # perform operation
fsub.s f31, f8, f19, rne # perform operation
fsub.s f31, f8, f19, rtz # perform operation
fsub.s f31, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x6, 0x9d2aac9afd21b1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fsub.s f6, f21, f19, dyn # perform operation
fsub.s f6, f21, f19, rdn # perform operation
fsub.s f6, f21, f19, rmm # perform operation
fsub.s f6, f21, f19, rne # perform operation
fsub.s f6, f21, f19, rtz # perform operation
fsub.s f6, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x25, 0x43ac1e2c9c11c381 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fsub.s f25, f17, f7, dyn # perform operation
fsub.s f25, f17, f7, rdn # perform operation
fsub.s f25, f17, f7, rmm # perform operation
fsub.s f25, f17, f7, rne # perform operation
fsub.s f25, f17, f7, rtz # perform operation
fsub.s f25, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x29, 0xefdd9cf422f8628d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fsub.s f29, f31, f23, dyn # perform operation
fsub.s f29, f31, f23, rdn # perform operation
fsub.s f29, f31, f23, rmm # perform operation
fsub.s f29, f31, f23, rne # perform operation
fsub.s f29, f31, f23, rtz # perform operation
fsub.s f29, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x17, 0x6ec055131e0c4177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f17, f19, f10, dyn # perform operation
fsub.s f17, f19, f10, rdn # perform operation
fsub.s f17, f19, f10, rmm # perform operation
fsub.s f17, f19, f10, rne # perform operation
fsub.s f17, f19, f10, rtz # perform operation
fsub.s f17, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x24, 0xb26ae30fd373f3ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fsub.s f24, f20, f1, dyn # perform operation
fsub.s f24, f20, f1, rdn # perform operation
fsub.s f24, f20, f1, rmm # perform operation
fsub.s f24, f20, f1, rne # perform operation
fsub.s f24, f20, f1, rtz # perform operation
fsub.s f24, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x8, 0x73295320992f5ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f8, f3, f13, dyn # perform operation
fsub.s f8, f3, f13, rdn # perform operation
fsub.s f8, f3, f13, rmm # perform operation
fsub.s f8, f3, f13, rne # perform operation
fsub.s f8, f3, f13, rtz # perform operation
fsub.s f8, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x15, 0xec92a7ef7077e37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fsub.s f15, f3, f8, dyn # perform operation
fsub.s f15, f3, f8, rdn # perform operation
fsub.s f15, f3, f8, rmm # perform operation
fsub.s f15, f3, f8, rne # perform operation
fsub.s f15, f3, f8, rtz # perform operation
fsub.s f15, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x23, 0xc267cbe9f40bb4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fsub.s f23, f25, f5, dyn # perform operation
fsub.s f23, f25, f5, rdn # perform operation
fsub.s f23, f25, f5, rmm # perform operation
fsub.s f23, f25, f5, rne # perform operation
fsub.s f23, f25, f5, rtz # perform operation
fsub.s f23, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x31, 0xdda8bd86834e9066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fsub.s f31, f3, f5, dyn # perform operation
fsub.s f31, f3, f5, rdn # perform operation
fsub.s f31, f3, f5, rmm # perform operation
fsub.s f31, f3, f5, rne # perform operation
fsub.s f31, f3, f5, rtz # perform operation
fsub.s f31, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x15, 0x569d4dfa9eb564b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fsub.s f15, f18, f26, dyn # perform operation
fsub.s f15, f18, f26, rdn # perform operation
fsub.s f15, f18, f26, rmm # perform operation
fsub.s f15, f18, f26, rne # perform operation
fsub.s f15, f18, f26, rtz # perform operation
fsub.s f15, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x11, 0xd6a056f3f55625bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fsub.s f11, f1, f23, dyn # perform operation
fsub.s f11, f1, f23, rdn # perform operation
fsub.s f11, f1, f23, rmm # perform operation
fsub.s f11, f1, f23, rne # perform operation
fsub.s f11, f1, f23, rtz # perform operation
fsub.s f11, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x29, 0x2d622f00de72bc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f29, f14, f9, dyn # perform operation
fsub.s f29, f14, f9, rdn # perform operation
fsub.s f29, f14, f9, rmm # perform operation
fsub.s f29, f14, f9, rne # perform operation
fsub.s f29, f14, f9, rtz # perform operation
fsub.s f29, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x1, 0x38e45b729b231f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f1, f30, f15, dyn # perform operation
fsub.s f1, f30, f15, rdn # perform operation
fsub.s f1, f30, f15, rmm # perform operation
fsub.s f1, f30, f15, rne # perform operation
fsub.s f1, f30, f15, rtz # perform operation
fsub.s f1, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x25, 0x64458d33052b0a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fsub.s f25, f5, f29, dyn # perform operation
fsub.s f25, f5, f29, rdn # perform operation
fsub.s f25, f5, f29, rmm # perform operation
fsub.s f25, f5, f29, rne # perform operation
fsub.s f25, f5, f29, rtz # perform operation
fsub.s f25, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x25, 0x9f5a47db522e35b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fsub.s f25, f2, f1, dyn # perform operation
fsub.s f25, f2, f1, rdn # perform operation
fsub.s f25, f2, f1, rmm # perform operation
fsub.s f25, f2, f1, rne # perform operation
fsub.s f25, f2, f1, rtz # perform operation
fsub.s f25, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x12, 0xc7b8015c3ca45cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f12, f8, f2, dyn # perform operation
fsub.s f12, f8, f2, rdn # perform operation
fsub.s f12, f8, f2, rmm # perform operation
fsub.s f12, f8, f2, rne # perform operation
fsub.s f12, f8, f2, rtz # perform operation
fsub.s f12, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x31, 0x9af703efb306f6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f31, f13, f22, dyn # perform operation
fsub.s f31, f13, f22, rdn # perform operation
fsub.s f31, f13, f22, rmm # perform operation
fsub.s f31, f13, f22, rne # perform operation
fsub.s f31, f13, f22, rtz # perform operation
fsub.s f31, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x11, 0x3d9d73cff6368268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fsub.s f11, f2, f20, dyn # perform operation
fsub.s f11, f2, f20, rdn # perform operation
fsub.s f11, f2, f20, rmm # perform operation
fsub.s f11, f2, f20, rne # perform operation
fsub.s f11, f2, f20, rtz # perform operation
fsub.s f11, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x14, 0x4ef9d25ba6be8307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fsub.s f14, f16, f9, dyn # perform operation
fsub.s f14, f16, f9, rdn # perform operation
fsub.s f14, f16, f9, rmm # perform operation
fsub.s f14, f16, f9, rne # perform operation
fsub.s f14, f16, f9, rtz # perform operation
fsub.s f14, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x9, 0x13ce39b24ad2f201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fsub.s f9, f22, f31, dyn # perform operation
fsub.s f9, f22, f31, rdn # perform operation
fsub.s f9, f22, f31, rmm # perform operation
fsub.s f9, f22, f31, rne # perform operation
fsub.s f9, f22, f31, rtz # perform operation
fsub.s f9, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x9, 0x82f2ae409c3ea2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f9, f22, f3, dyn # perform operation
fsub.s f9, f22, f3, rdn # perform operation
fsub.s f9, f22, f3, rmm # perform operation
fsub.s f9, f22, f3, rne # perform operation
fsub.s f9, f22, f3, rtz # perform operation
fsub.s f9, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x28, 0x4e433bd6a06dd721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fsub.s f28, f25, f3, dyn # perform operation
fsub.s f28, f25, f3, rdn # perform operation
fsub.s f28, f25, f3, rmm # perform operation
fsub.s f28, f25, f3, rne # perform operation
fsub.s f28, f25, f3, rtz # perform operation
fsub.s f28, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x30, 0x432d45642053dc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fsub.s f30, f16, f6, dyn # perform operation
fsub.s f30, f16, f6, rdn # perform operation
fsub.s f30, f16, f6, rmm # perform operation
fsub.s f30, f16, f6, rne # perform operation
fsub.s f30, f16, f6, rtz # perform operation
fsub.s f30, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x5, 0xf0ef0ca95ea38021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fsub.s f5, f18, f27, dyn # perform operation
fsub.s f5, f18, f27, rdn # perform operation
fsub.s f5, f18, f27, rmm # perform operation
fsub.s f5, f18, f27, rne # perform operation
fsub.s f5, f18, f27, rtz # perform operation
fsub.s f5, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x17, 0xe7256b67c0179603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f17, f7, f13, dyn # perform operation
fsub.s f17, f7, f13, rdn # perform operation
fsub.s f17, f7, f13, rmm # perform operation
fsub.s f17, f7, f13, rne # perform operation
fsub.s f17, f7, f13, rtz # perform operation
fsub.s f17, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x29, 0xdc810d68fbbc031b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fsub.s f29, f26, f14, dyn # perform operation
fsub.s f29, f26, f14, rdn # perform operation
fsub.s f29, f26, f14, rmm # perform operation
fsub.s f29, f26, f14, rne # perform operation
fsub.s f29, f26, f14, rtz # perform operation
fsub.s f29, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x1, 0x6857133acb8e86aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fsub.s f1, f23, f14, dyn # perform operation
fsub.s f1, f23, f14, rdn # perform operation
fsub.s f1, f23, f14, rmm # perform operation
fsub.s f1, f23, f14, rne # perform operation
fsub.s f1, f23, f14, rtz # perform operation
fsub.s f1, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x3, 0x92160b3062459b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f3, f19, f9, dyn # perform operation
fsub.s f3, f19, f9, rdn # perform operation
fsub.s f3, f19, f9, rmm # perform operation
fsub.s f3, f19, f9, rne # perform operation
fsub.s f3, f19, f9, rtz # perform operation
fsub.s f3, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x22, 0xe6a35eee101aef9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fsub.s f22, f20, f4, dyn # perform operation
fsub.s f22, f20, f4, rdn # perform operation
fsub.s f22, f20, f4, rmm # perform operation
fsub.s f22, f20, f4, rne # perform operation
fsub.s f22, f20, f4, rtz # perform operation
fsub.s f22, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x7, 0xa29377f2b65da062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fsub.s f7, f1, f14, dyn # perform operation
fsub.s f7, f1, f14, rdn # perform operation
fsub.s f7, f1, f14, rmm # perform operation
fsub.s f7, f1, f14, rne # perform operation
fsub.s f7, f1, f14, rtz # perform operation
fsub.s f7, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x4, 0x559e9695fd3b6dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fsub.s f4, f29, f6, dyn # perform operation
fsub.s f4, f29, f6, rdn # perform operation
fsub.s f4, f29, f6, rmm # perform operation
fsub.s f4, f29, f6, rne # perform operation
fsub.s f4, f29, f6, rtz # perform operation
fsub.s f4, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x18, 0xe55443a5d11dd0c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f18, f19, f13, dyn # perform operation
fsub.s f18, f19, f13, rdn # perform operation
fsub.s f18, f19, f13, rmm # perform operation
fsub.s f18, f19, f13, rne # perform operation
fsub.s f18, f19, f13, rtz # perform operation
fsub.s f18, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x11, 0xf4857205fd2c3087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fsub.s f11, f17, f4, dyn # perform operation
fsub.s f11, f17, f4, rdn # perform operation
fsub.s f11, f17, f4, rmm # perform operation
fsub.s f11, f17, f4, rne # perform operation
fsub.s f11, f17, f4, rtz # perform operation
fsub.s f11, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x14, 0xe1e2908c16cad1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsub.s f14, f13, f11, dyn # perform operation
fsub.s f14, f13, f11, rdn # perform operation
fsub.s f14, f13, f11, rmm # perform operation
fsub.s f14, f13, f11, rne # perform operation
fsub.s f14, f13, f11, rtz # perform operation
fsub.s f14, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x16, 0x9b044b4b95845e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f16, f27, f24, dyn # perform operation
fsub.s f16, f27, f24, rdn # perform operation
fsub.s f16, f27, f24, rmm # perform operation
fsub.s f16, f27, f24, rne # perform operation
fsub.s f16, f27, f24, rtz # perform operation
fsub.s f16, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x29, 0xa9f3ff14660ede5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fsub.s f29, f7, f24, dyn # perform operation
fsub.s f29, f7, f24, rdn # perform operation
fsub.s f29, f7, f24, rmm # perform operation
fsub.s f29, f7, f24, rne # perform operation
fsub.s f29, f7, f24, rtz # perform operation
fsub.s f29, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x9, 0x52e360cb01af3d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f9, f23, f11, dyn # perform operation
fsub.s f9, f23, f11, rdn # perform operation
fsub.s f9, f23, f11, rmm # perform operation
fsub.s f9, f23, f11, rne # perform operation
fsub.s f9, f23, f11, rtz # perform operation
fsub.s f9, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x1, 0x6357a5e66e3ad2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f1, f15, f10, dyn # perform operation
fsub.s f1, f15, f10, rdn # perform operation
fsub.s f1, f15, f10, rmm # perform operation
fsub.s f1, f15, f10, rne # perform operation
fsub.s f1, f15, f10, rtz # perform operation
fsub.s f1, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x1, 0x3f673088aa5217d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fsub.s f1, f4, f19, dyn # perform operation
fsub.s f1, f4, f19, rdn # perform operation
fsub.s f1, f4, f19, rmm # perform operation
fsub.s f1, f4, f19, rne # perform operation
fsub.s f1, f4, f19, rtz # perform operation
fsub.s f1, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x28, 0x2b34b2c0d9fff4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fsub.s f28, f12, f13, dyn # perform operation
fsub.s f28, f12, f13, rdn # perform operation
fsub.s f28, f12, f13, rmm # perform operation
fsub.s f28, f12, f13, rne # perform operation
fsub.s f28, f12, f13, rtz # perform operation
fsub.s f28, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x11, 0x0b25ee698d680e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fsub.s f11, f21, f3, dyn # perform operation
fsub.s f11, f21, f3, rdn # perform operation
fsub.s f11, f21, f3, rmm # perform operation
fsub.s f11, f21, f3, rne # perform operation
fsub.s f11, f21, f3, rtz # perform operation
fsub.s f11, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x9, 0x667d688573cb77df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fsub.s f9, f23, f16, dyn # perform operation
fsub.s f9, f23, f16, rdn # perform operation
fsub.s f9, f23, f16, rmm # perform operation
fsub.s f9, f23, f16, rne # perform operation
fsub.s f9, f23, f16, rtz # perform operation
fsub.s f9, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x3, 0xa2d0bac2e8e24139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fsub.s f3, f22, f24, dyn # perform operation
fsub.s f3, f22, f24, rdn # perform operation
fsub.s f3, f22, f24, rmm # perform operation
fsub.s f3, f22, f24, rne # perform operation
fsub.s f3, f22, f24, rtz # perform operation
fsub.s f3, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x31, 0x3e25c0e7550dcc93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fsub.s f31, f14, f12, dyn # perform operation
fsub.s f31, f14, f12, rdn # perform operation
fsub.s f31, f14, f12, rmm # perform operation
fsub.s f31, f14, f12, rne # perform operation
fsub.s f31, f14, f12, rtz # perform operation
fsub.s f31, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x26, 0x3d030add0cfd0cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f26, f3, f27, dyn # perform operation
fsub.s f26, f3, f27, rdn # perform operation
fsub.s f26, f3, f27, rmm # perform operation
fsub.s f26, f3, f27, rne # perform operation
fsub.s f26, f3, f27, rtz # perform operation
fsub.s f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x17, 0x1cd896d67d33e70a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fsub.s f17, f23, f7, dyn # perform operation
fsub.s f17, f23, f7, rdn # perform operation
fsub.s f17, f23, f7, rmm # perform operation
fsub.s f17, f23, f7, rne # perform operation
fsub.s f17, f23, f7, rtz # perform operation
fsub.s f17, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x9, 0xa4256c37045f62c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fsub.s f9, f19, f28, dyn # perform operation
fsub.s f9, f19, f28, rdn # perform operation
fsub.s f9, f19, f28, rmm # perform operation
fsub.s f9, f19, f28, rne # perform operation
fsub.s f9, f19, f28, rtz # perform operation
fsub.s f9, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x3, 0x1b2a7467b224d42d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fsub.s f3, f16, f26, dyn # perform operation
fsub.s f3, f16, f26, rdn # perform operation
fsub.s f3, f16, f26, rmm # perform operation
fsub.s f3, f16, f26, rne # perform operation
fsub.s f3, f16, f26, rtz # perform operation
fsub.s f3, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x17, 0x1bf12e85daf22e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f17, f13, f22, dyn # perform operation
fsub.s f17, f13, f22, rdn # perform operation
fsub.s f17, f13, f22, rmm # perform operation
fsub.s f17, f13, f22, rne # perform operation
fsub.s f17, f13, f22, rtz # perform operation
fsub.s f17, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x27, 0xeef11f8aeb31e2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fsub.s f27, f25, f14, dyn # perform operation
fsub.s f27, f25, f14, rdn # perform operation
fsub.s f27, f25, f14, rmm # perform operation
fsub.s f27, f25, f14, rne # perform operation
fsub.s f27, f25, f14, rtz # perform operation
fsub.s f27, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x1, 0xa53276f8a64cc29b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f1, f23, f7, dyn # perform operation
fsub.s f1, f23, f7, rdn # perform operation
fsub.s f1, f23, f7, rmm # perform operation
fsub.s f1, f23, f7, rne # perform operation
fsub.s f1, f23, f7, rtz # perform operation
fsub.s f1, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x17, 0x733a40e92e7d0101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fsub.s f17, f24, f3, dyn # perform operation
fsub.s f17, f24, f3, rdn # perform operation
fsub.s f17, f24, f3, rmm # perform operation
fsub.s f17, f24, f3, rne # perform operation
fsub.s f17, f24, f3, rtz # perform operation
fsub.s f17, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x5, 0x6cae37ce7c38d8ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fsub.s f5, f21, f11, dyn # perform operation
fsub.s f5, f21, f11, rdn # perform operation
fsub.s f5, f21, f11, rmm # perform operation
fsub.s f5, f21, f11, rne # perform operation
fsub.s f5, f21, f11, rtz # perform operation
fsub.s f5, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x26, 0x6e2068ed83eae73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f26, f18, f9, dyn # perform operation
fsub.s f26, f18, f9, rdn # perform operation
fsub.s f26, f18, f9, rmm # perform operation
fsub.s f26, f18, f9, rne # perform operation
fsub.s f26, f18, f9, rtz # perform operation
fsub.s f26, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x3, 0xaa4498c4c37fb7a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fsub.s f3, f9, f5, dyn # perform operation
fsub.s f3, f9, f5, rdn # perform operation
fsub.s f3, f9, f5, rmm # perform operation
fsub.s f3, f9, f5, rne # perform operation
fsub.s f3, f9, f5, rtz # perform operation
fsub.s f3, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x11, 0x7291035a3a1a4739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsub.s f11, f4, f17, dyn # perform operation
fsub.s f11, f4, f17, rdn # perform operation
fsub.s f11, f4, f17, rmm # perform operation
fsub.s f11, f4, f17, rne # perform operation
fsub.s f11, f4, f17, rtz # perform operation
fsub.s f11, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x23, 0x8afca152f314ba20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fsub.s f23, f27, f24, dyn # perform operation
fsub.s f23, f27, f24, rdn # perform operation
fsub.s f23, f27, f24, rmm # perform operation
fsub.s f23, f27, f24, rne # perform operation
fsub.s f23, f27, f24, rtz # perform operation
fsub.s f23, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x2, 0xd91f7bdc8e122b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f2, f15, f16, dyn # perform operation
fsub.s f2, f15, f16, rdn # perform operation
fsub.s f2, f15, f16, rmm # perform operation
fsub.s f2, f15, f16, rne # perform operation
fsub.s f2, f15, f16, rtz # perform operation
fsub.s f2, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x29, 0xaa2adb2631db0857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fsub.s f29, f4, f18, dyn # perform operation
fsub.s f29, f4, f18, rdn # perform operation
fsub.s f29, f4, f18, rmm # perform operation
fsub.s f29, f4, f18, rne # perform operation
fsub.s f29, f4, f18, rtz # perform operation
fsub.s f29, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x27, 0x2b84fd0593bcd36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fsub.s f27, f20, f3, dyn # perform operation
fsub.s f27, f20, f3, rdn # perform operation
fsub.s f27, f20, f3, rmm # perform operation
fsub.s f27, f20, f3, rne # perform operation
fsub.s f27, f20, f3, rtz # perform operation
fsub.s f27, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x14, 0x96af0bb66c4574e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f14, f17, f1, dyn # perform operation
fsub.s f14, f17, f1, rdn # perform operation
fsub.s f14, f17, f1, rmm # perform operation
fsub.s f14, f17, f1, rne # perform operation
fsub.s f14, f17, f1, rtz # perform operation
fsub.s f14, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x30, 0x25c082b288069348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f30, f10, f20, dyn # perform operation
fsub.s f30, f10, f20, rdn # perform operation
fsub.s f30, f10, f20, rmm # perform operation
fsub.s f30, f10, f20, rne # perform operation
fsub.s f30, f10, f20, rtz # perform operation
fsub.s f30, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x10, 0xd84ddca370b6da44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f10, f8, f29, dyn # perform operation
fsub.s f10, f8, f29, rdn # perform operation
fsub.s f10, f8, f29, rmm # perform operation
fsub.s f10, f8, f29, rne # perform operation
fsub.s f10, f8, f29, rtz # perform operation
fsub.s f10, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x20, 0xeda429161d7951da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f20, f2, f18, dyn # perform operation
fsub.s f20, f2, f18, rdn # perform operation
fsub.s f20, f2, f18, rmm # perform operation
fsub.s f20, f2, f18, rne # perform operation
fsub.s f20, f2, f18, rtz # perform operation
fsub.s f20, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x27, 0xa05af29a66ce5fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fsub.s f27, f9, f7, dyn # perform operation
fsub.s f27, f9, f7, rdn # perform operation
fsub.s f27, f9, f7, rmm # perform operation
fsub.s f27, f9, f7, rne # perform operation
fsub.s f27, f9, f7, rtz # perform operation
fsub.s f27, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x21, 0x8cf6e201a7b6d622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fsub.s f21, f15, f1, dyn # perform operation
fsub.s f21, f15, f1, rdn # perform operation
fsub.s f21, f15, f1, rmm # perform operation
fsub.s f21, f15, f1, rne # perform operation
fsub.s f21, f15, f1, rtz # perform operation
fsub.s f21, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x15, 0xf37de6ba0a472867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f15, f11, f26, dyn # perform operation
fsub.s f15, f11, f26, rdn # perform operation
fsub.s f15, f11, f26, rmm # perform operation
fsub.s f15, f11, f26, rne # perform operation
fsub.s f15, f11, f26, rtz # perform operation
fsub.s f15, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x31, 0x9a07493d4e3a8d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f31, f16, f13, dyn # perform operation
fsub.s f31, f16, f13, rdn # perform operation
fsub.s f31, f16, f13, rmm # perform operation
fsub.s f31, f16, f13, rne # perform operation
fsub.s f31, f16, f13, rtz # perform operation
fsub.s f31, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x25, 0x0591001edf965818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fsub.s f25, f1, f28, dyn # perform operation
fsub.s f25, f1, f28, rdn # perform operation
fsub.s f25, f1, f28, rmm # perform operation
fsub.s f25, f1, f28, rne # perform operation
fsub.s f25, f1, f28, rtz # perform operation
fsub.s f25, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x23, 0x2141af34274807db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fsub.s f23, f2, f26, dyn # perform operation
fsub.s f23, f2, f26, rdn # perform operation
fsub.s f23, f2, f26, rmm # perform operation
fsub.s f23, f2, f26, rne # perform operation
fsub.s f23, f2, f26, rtz # perform operation
fsub.s f23, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x15, 0xd45ef3f4b6b3bee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fsub.s f15, f3, f19, dyn # perform operation
fsub.s f15, f3, f19, rdn # perform operation
fsub.s f15, f3, f19, rmm # perform operation
fsub.s f15, f3, f19, rne # perform operation
fsub.s f15, f3, f19, rtz # perform operation
fsub.s f15, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x29, 0x5f0ef7423d9632c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fsub.s f29, f30, f18, dyn # perform operation
fsub.s f29, f30, f18, rdn # perform operation
fsub.s f29, f30, f18, rmm # perform operation
fsub.s f29, f30, f18, rne # perform operation
fsub.s f29, f30, f18, rtz # perform operation
fsub.s f29, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x4, 0x750f37ae6565883f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fsub.s f4, f25, f6, dyn # perform operation
fsub.s f4, f25, f6, rdn # perform operation
fsub.s f4, f25, f6, rmm # perform operation
fsub.s f4, f25, f6, rne # perform operation
fsub.s f4, f25, f6, rtz # perform operation
fsub.s f4, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x10, 0x5059348837be975e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fsub.s f10, f2, f30, dyn # perform operation
fsub.s f10, f2, f30, rdn # perform operation
fsub.s f10, f2, f30, rmm # perform operation
fsub.s f10, f2, f30, rne # perform operation
fsub.s f10, f2, f30, rtz # perform operation
fsub.s f10, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x14, 0x3e4d15c4722625b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fsub.s f14, f18, f12, dyn # perform operation
fsub.s f14, f18, f12, rdn # perform operation
fsub.s f14, f18, f12, rmm # perform operation
fsub.s f14, f18, f12, rne # perform operation
fsub.s f14, f18, f12, rtz # perform operation
fsub.s f14, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x7, 0xb56041930d14b81e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fsub.s f7, f31, f21, dyn # perform operation
fsub.s f7, f31, f21, rdn # perform operation
fsub.s f7, f31, f21, rmm # perform operation
fsub.s f7, f31, f21, rne # perform operation
fsub.s f7, f31, f21, rtz # perform operation
fsub.s f7, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x11, 0xf7996199c69b9bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fsub.s f11, f27, f21, dyn # perform operation
fsub.s f11, f27, f21, rdn # perform operation
fsub.s f11, f27, f21, rmm # perform operation
fsub.s f11, f27, f21, rne # perform operation
fsub.s f11, f27, f21, rtz # perform operation
fsub.s f11, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x29, 0x7e805f29339a7f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fsub.s f29, f14, f2, dyn # perform operation
fsub.s f29, f14, f2, rdn # perform operation
fsub.s f29, f14, f2, rmm # perform operation
fsub.s f29, f14, f2, rne # perform operation
fsub.s f29, f14, f2, rtz # perform operation
fsub.s f29, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x5, 0x307aec252b2b2548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f5, f13, f23, dyn # perform operation
fsub.s f5, f13, f23, rdn # perform operation
fsub.s f5, f13, f23, rmm # perform operation
fsub.s f5, f13, f23, rne # perform operation
fsub.s f5, f13, f23, rtz # perform operation
fsub.s f5, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x11, 0xe6761a27f53b091d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fsub.s f11, f9, f28, dyn # perform operation
fsub.s f11, f9, f28, rdn # perform operation
fsub.s f11, f9, f28, rmm # perform operation
fsub.s f11, f9, f28, rne # perform operation
fsub.s f11, f9, f28, rtz # perform operation
fsub.s f11, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x18, 0x4025ade3e38811fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fsub.s f18, f6, f3, dyn # perform operation
fsub.s f18, f6, f3, rdn # perform operation
fsub.s f18, f6, f3, rmm # perform operation
fsub.s f18, f6, f3, rne # perform operation
fsub.s f18, f6, f3, rtz # perform operation
fsub.s f18, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x18, 0x6a15da0e6f225f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fsub.s f18, f13, f20, dyn # perform operation
fsub.s f18, f13, f20, rdn # perform operation
fsub.s f18, f13, f20, rmm # perform operation
fsub.s f18, f13, f20, rne # perform operation
fsub.s f18, f13, f20, rtz # perform operation
fsub.s f18, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x24, 0xd5181d173844005a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fsub.s f24, f10, f14, dyn # perform operation
fsub.s f24, f10, f14, rdn # perform operation
fsub.s f24, f10, f14, rmm # perform operation
fsub.s f24, f10, f14, rne # perform operation
fsub.s f24, f10, f14, rtz # perform operation
fsub.s f24, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x24, 0x309a6c5c40502525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fsub.s f24, f31, f28, dyn # perform operation
fsub.s f24, f31, f28, rdn # perform operation
fsub.s f24, f31, f28, rmm # perform operation
fsub.s f24, f31, f28, rne # perform operation
fsub.s f24, f31, f28, rtz # perform operation
fsub.s f24, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x5, 0x402c276b9539784f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f5, f14, f16, dyn # perform operation
fsub.s f5, f14, f16, rdn # perform operation
fsub.s f5, f14, f16, rmm # perform operation
fsub.s f5, f14, f16, rne # perform operation
fsub.s f5, f14, f16, rtz # perform operation
fsub.s f5, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x1, 0xb7c354b134612e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fsub.s f1, f2, f8, dyn # perform operation
fsub.s f1, f2, f8, rdn # perform operation
fsub.s f1, f2, f8, rmm # perform operation
fsub.s f1, f2, f8, rne # perform operation
fsub.s f1, f2, f8, rtz # perform operation
fsub.s f1, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x26, 0xb6acfc92b91d21f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fsub.s f26, f18, f28, dyn # perform operation
fsub.s f26, f18, f28, rdn # perform operation
fsub.s f26, f18, f28, rmm # perform operation
fsub.s f26, f18, f28, rne # perform operation
fsub.s f26, f18, f28, rtz # perform operation
fsub.s f26, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x5, 0x7933bbc09265a5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fsub.s f5, f6, f26, dyn # perform operation
fsub.s f5, f6, f26, rdn # perform operation
fsub.s f5, f6, f26, rmm # perform operation
fsub.s f5, f6, f26, rne # perform operation
fsub.s f5, f6, f26, rtz # perform operation
fsub.s f5, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x9, 0xd7191d106d6df126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f9, f19, f10, dyn # perform operation
fsub.s f9, f19, f10, rdn # perform operation
fsub.s f9, f19, f10, rmm # perform operation
fsub.s f9, f19, f10, rne # perform operation
fsub.s f9, f19, f10, rtz # perform operation
fsub.s f9, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x6, 0x604fcf2045daafb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fsub.s f6, f20, f2, dyn # perform operation
fsub.s f6, f20, f2, rdn # perform operation
fsub.s f6, f20, f2, rmm # perform operation
fsub.s f6, f20, f2, rne # perform operation
fsub.s f6, f20, f2, rtz # perform operation
fsub.s f6, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x20, 0x208ad54a34d87426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fsub.s f20, f11, f16, dyn # perform operation
fsub.s f20, f11, f16, rdn # perform operation
fsub.s f20, f11, f16, rmm # perform operation
fsub.s f20, f11, f16, rne # perform operation
fsub.s f20, f11, f16, rtz # perform operation
fsub.s f20, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x8, 0xf1c4aad342d2597c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fsub.s f8, f21, f5, dyn # perform operation
fsub.s f8, f21, f5, rdn # perform operation
fsub.s f8, f21, f5, rmm # perform operation
fsub.s f8, f21, f5, rne # perform operation
fsub.s f8, f21, f5, rtz # perform operation
fsub.s f8, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x28, 0x93b8eb37ccd5906b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f28, f26, f10, dyn # perform operation
fsub.s f28, f26, f10, rdn # perform operation
fsub.s f28, f26, f10, rmm # perform operation
fsub.s f28, f26, f10, rne # perform operation
fsub.s f28, f26, f10, rtz # perform operation
fsub.s f28, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x30, 0x5051cbce17bfa637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsub.s f30, f21, f5, dyn # perform operation
fsub.s f30, f21, f5, rdn # perform operation
fsub.s f30, f21, f5, rmm # perform operation
fsub.s f30, f21, f5, rne # perform operation
fsub.s f30, f21, f5, rtz # perform operation
fsub.s f30, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x21, 0xc42e4713151e8d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fsub.s f21, f1, f2, dyn # perform operation
fsub.s f21, f1, f2, rdn # perform operation
fsub.s f21, f1, f2, rmm # perform operation
fsub.s f21, f1, f2, rne # perform operation
fsub.s f21, f1, f2, rtz # perform operation
fsub.s f21, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x1, 0xc4797dfa2a9f6ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fsub.s f1, f15, f31, dyn # perform operation
fsub.s f1, f15, f31, rdn # perform operation
fsub.s f1, f15, f31, rmm # perform operation
fsub.s f1, f15, f31, rne # perform operation
fsub.s f1, f15, f31, rtz # perform operation
fsub.s f1, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x18, 0x6736428a1ac073df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fsub.s f18, f31, f2, dyn # perform operation
fsub.s f18, f31, f2, rdn # perform operation
fsub.s f18, f31, f2, rmm # perform operation
fsub.s f18, f31, f2, rne # perform operation
fsub.s f18, f31, f2, rtz # perform operation
fsub.s f18, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x20, 0x63e36107cc29c7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fsub.s f20, f16, f6, dyn # perform operation
fsub.s f20, f16, f6, rdn # perform operation
fsub.s f20, f16, f6, rmm # perform operation
fsub.s f20, f16, f6, rne # perform operation
fsub.s f20, f16, f6, rtz # perform operation
fsub.s f20, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x25, 0xd24f93b1dea36202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fsub.s f25, f26, f10, dyn # perform operation
fsub.s f25, f26, f10, rdn # perform operation
fsub.s f25, f26, f10, rmm # perform operation
fsub.s f25, f26, f10, rne # perform operation
fsub.s f25, f26, f10, rtz # perform operation
fsub.s f25, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x7, 0x83601e5b155835e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fsub.s f7, f15, f6, dyn # perform operation
fsub.s f7, f15, f6, rdn # perform operation
fsub.s f7, f15, f6, rmm # perform operation
fsub.s f7, f15, f6, rne # perform operation
fsub.s f7, f15, f6, rtz # perform operation
fsub.s f7, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x18, 0xae806d57f15b2103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fsub.s f18, f28, f21, dyn # perform operation
fsub.s f18, f28, f21, rdn # perform operation
fsub.s f18, f28, f21, rmm # perform operation
fsub.s f18, f28, f21, rne # perform operation
fsub.s f18, f28, f21, rtz # perform operation
fsub.s f18, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x30, 0xdf7b5a31f8983f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f30, f4, f7, dyn # perform operation
fsub.s f30, f4, f7, rdn # perform operation
fsub.s f30, f4, f7, rmm # perform operation
fsub.s f30, f4, f7, rne # perform operation
fsub.s f30, f4, f7, rtz # perform operation
fsub.s f30, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x9, 0x90c96457acfa9fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsub.s f9, f5, f12, dyn # perform operation
fsub.s f9, f5, f12, rdn # perform operation
fsub.s f9, f5, f12, rmm # perform operation
fsub.s f9, f5, f12, rne # perform operation
fsub.s f9, f5, f12, rtz # perform operation
fsub.s f9, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x5, 0x56c16bd97e36adf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f5, f24, f9, dyn # perform operation
fsub.s f5, f24, f9, rdn # perform operation
fsub.s f5, f24, f9, rmm # perform operation
fsub.s f5, f24, f9, rne # perform operation
fsub.s f5, f24, f9, rtz # perform operation
fsub.s f5, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x29, 0x369aa75232f08eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f29, f27, f9, dyn # perform operation
fsub.s f29, f27, f9, rdn # perform operation
fsub.s f29, f27, f9, rmm # perform operation
fsub.s f29, f27, f9, rne # perform operation
fsub.s f29, f27, f9, rtz # perform operation
fsub.s f29, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x21, 0x67fc3bc7252deef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fsub.s f21, f22, f8, dyn # perform operation
fsub.s f21, f22, f8, rdn # perform operation
fsub.s f21, f22, f8, rmm # perform operation
fsub.s f21, f22, f8, rne # perform operation
fsub.s f21, f22, f8, rtz # perform operation
fsub.s f21, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x21, 0xc99afe5c18007e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fsub.s f21, f4, f14, dyn # perform operation
fsub.s f21, f4, f14, rdn # perform operation
fsub.s f21, f4, f14, rmm # perform operation
fsub.s f21, f4, f14, rne # perform operation
fsub.s f21, f4, f14, rtz # perform operation
fsub.s f21, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x26, 0xc9bf6fb286864408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f26, f12, f22, dyn # perform operation
fsub.s f26, f12, f22, rdn # perform operation
fsub.s f26, f12, f22, rmm # perform operation
fsub.s f26, f12, f22, rne # perform operation
fsub.s f26, f12, f22, rtz # perform operation
fsub.s f26, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x3, 0xcaf802a59c5a0048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f3, f26, f21, dyn # perform operation
fsub.s f3, f26, f21, rdn # perform operation
fsub.s f3, f26, f21, rmm # perform operation
fsub.s f3, f26, f21, rne # perform operation
fsub.s f3, f26, f21, rtz # perform operation
fsub.s f3, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x14, 0x30e8227bfc756b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fsub.s f14, f7, f26, dyn # perform operation
fsub.s f14, f7, f26, rdn # perform operation
fsub.s f14, f7, f26, rmm # perform operation
fsub.s f14, f7, f26, rne # perform operation
fsub.s f14, f7, f26, rtz # perform operation
fsub.s f14, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x14, 0x49a6be37a241b7df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f14, f8, f2, dyn # perform operation
fsub.s f14, f8, f2, rdn # perform operation
fsub.s f14, f8, f2, rmm # perform operation
fsub.s f14, f8, f2, rne # perform operation
fsub.s f14, f8, f2, rtz # perform operation
fsub.s f14, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x30, 0xf3ee0e5f8ceb34f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fsub.s f30, f2, f24, dyn # perform operation
fsub.s f30, f2, f24, rdn # perform operation
fsub.s f30, f2, f24, rmm # perform operation
fsub.s f30, f2, f24, rne # perform operation
fsub.s f30, f2, f24, rtz # perform operation
fsub.s f30, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x21, 0x0040ccdc8041eb11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fsub.s f21, f17, f2, dyn # perform operation
fsub.s f21, f17, f2, rdn # perform operation
fsub.s f21, f17, f2, rmm # perform operation
fsub.s f21, f17, f2, rne # perform operation
fsub.s f21, f17, f2, rtz # perform operation
fsub.s f21, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x12, 0xb0bd359a4a903354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fsub.s f12, f31, f3, dyn # perform operation
fsub.s f12, f31, f3, rdn # perform operation
fsub.s f12, f31, f3, rmm # perform operation
fsub.s f12, f31, f3, rne # perform operation
fsub.s f12, f31, f3, rtz # perform operation
fsub.s f12, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x12, 0x6286ed0326965dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f12, f11, f17, dyn # perform operation
fsub.s f12, f11, f17, rdn # perform operation
fsub.s f12, f11, f17, rmm # perform operation
fsub.s f12, f11, f17, rne # perform operation
fsub.s f12, f11, f17, rtz # perform operation
fsub.s f12, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x18, 0x11e7b4a37a349331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f18, f3, f10, dyn # perform operation
fsub.s f18, f3, f10, rdn # perform operation
fsub.s f18, f3, f10, rmm # perform operation
fsub.s f18, f3, f10, rne # perform operation
fsub.s f18, f3, f10, rtz # perform operation
fsub.s f18, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x8, 0xcc4ac2756f61b45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fsub.s f8, f17, f4, dyn # perform operation
fsub.s f8, f17, f4, rdn # perform operation
fsub.s f8, f17, f4, rmm # perform operation
fsub.s f8, f17, f4, rne # perform operation
fsub.s f8, f17, f4, rtz # perform operation
fsub.s f8, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x5, 0x1b7562e6f606b21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fsub.s f5, f20, f25, dyn # perform operation
fsub.s f5, f20, f25, rdn # perform operation
fsub.s f5, f20, f25, rmm # perform operation
fsub.s f5, f20, f25, rne # perform operation
fsub.s f5, f20, f25, rtz # perform operation
fsub.s f5, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x8, 0x57116860610c1bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fsub.s f8, f21, f17, dyn # perform operation
fsub.s f8, f21, f17, rdn # perform operation
fsub.s f8, f21, f17, rmm # perform operation
fsub.s f8, f21, f17, rne # perform operation
fsub.s f8, f21, f17, rtz # perform operation
fsub.s f8, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x17, 0x2f333dd873fab289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fsub.s f17, f5, f30, dyn # perform operation
fsub.s f17, f5, f30, rdn # perform operation
fsub.s f17, f5, f30, rmm # perform operation
fsub.s f17, f5, f30, rne # perform operation
fsub.s f17, f5, f30, rtz # perform operation
fsub.s f17, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x14, 0x3f978da5e75b57d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f14, f22, f5, dyn # perform operation
fsub.s f14, f22, f5, rdn # perform operation
fsub.s f14, f22, f5, rmm # perform operation
fsub.s f14, f22, f5, rne # perform operation
fsub.s f14, f22, f5, rtz # perform operation
fsub.s f14, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x6, 0xe67d78b3a51a8122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fsub.s f6, f18, f22, dyn # perform operation
fsub.s f6, f18, f22, rdn # perform operation
fsub.s f6, f18, f22, rmm # perform operation
fsub.s f6, f18, f22, rne # perform operation
fsub.s f6, f18, f22, rtz # perform operation
fsub.s f6, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x8, 0xd73ca4f0ade361fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f8, f19, f3, dyn # perform operation
fsub.s f8, f19, f3, rdn # perform operation
fsub.s f8, f19, f3, rmm # perform operation
fsub.s f8, f19, f3, rne # perform operation
fsub.s f8, f19, f3, rtz # perform operation
fsub.s f8, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x23, 0xf9af6d0c891adeec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f23, f21, f11, dyn # perform operation
fsub.s f23, f21, f11, rdn # perform operation
fsub.s f23, f21, f11, rmm # perform operation
fsub.s f23, f21, f11, rne # perform operation
fsub.s f23, f21, f11, rtz # perform operation
fsub.s f23, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x12, 0x979bf60b1c60b75d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsub.s f12, f24, f15, dyn # perform operation
fsub.s f12, f24, f15, rdn # perform operation
fsub.s f12, f24, f15, rmm # perform operation
fsub.s f12, f24, f15, rne # perform operation
fsub.s f12, f24, f15, rtz # perform operation
fsub.s f12, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x8, 0xae2080604947d162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f8, f20, f16, dyn # perform operation
fsub.s f8, f20, f16, rdn # perform operation
fsub.s f8, f20, f16, rmm # perform operation
fsub.s f8, f20, f16, rne # perform operation
fsub.s f8, f20, f16, rtz # perform operation
fsub.s f8, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x21, 0x45199ab24938d9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f21, f30, f25, dyn # perform operation
fsub.s f21, f30, f25, rdn # perform operation
fsub.s f21, f30, f25, rmm # perform operation
fsub.s f21, f30, f25, rne # perform operation
fsub.s f21, f30, f25, rtz # perform operation
fsub.s f21, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x14, 0x219c9c7853261642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fsub.s f14, f28, f1, dyn # perform operation
fsub.s f14, f28, f1, rdn # perform operation
fsub.s f14, f28, f1, rmm # perform operation
fsub.s f14, f28, f1, rne # perform operation
fsub.s f14, f28, f1, rtz # perform operation
fsub.s f14, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x4, 0x0949d9d99e45a9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f4, f14, f16, dyn # perform operation
fsub.s f4, f14, f16, rdn # perform operation
fsub.s f4, f14, f16, rmm # perform operation
fsub.s f4, f14, f16, rne # perform operation
fsub.s f4, f14, f16, rtz # perform operation
fsub.s f4, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x7, 0xf245ada537806919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fsub.s f7, f22, f18, dyn # perform operation
fsub.s f7, f22, f18, rdn # perform operation
fsub.s f7, f22, f18, rmm # perform operation
fsub.s f7, f22, f18, rne # perform operation
fsub.s f7, f22, f18, rtz # perform operation
fsub.s f7, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x3, 0x40226b0c769b2035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fsub.s f3, f24, f28, dyn # perform operation
fsub.s f3, f24, f28, rdn # perform operation
fsub.s f3, f24, f28, rmm # perform operation
fsub.s f3, f24, f28, rne # perform operation
fsub.s f3, f24, f28, rtz # perform operation
fsub.s f3, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x28, 0x7174f7783c394f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fsub.s f28, f18, f6, dyn # perform operation
fsub.s f28, f18, f6, rdn # perform operation
fsub.s f28, f18, f6, rmm # perform operation
fsub.s f28, f18, f6, rne # perform operation
fsub.s f28, f18, f6, rtz # perform operation
fsub.s f28, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x23, 0x19ca046dca730725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fsub.s f23, f1, f11, dyn # perform operation
fsub.s f23, f1, f11, rdn # perform operation
fsub.s f23, f1, f11, rmm # perform operation
fsub.s f23, f1, f11, rne # perform operation
fsub.s f23, f1, f11, rtz # perform operation
fsub.s f23, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x31, 0x01e71a663b01bfb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fsub.s f31, f1, f23, dyn # perform operation
fsub.s f31, f1, f23, rdn # perform operation
fsub.s f31, f1, f23, rmm # perform operation
fsub.s f31, f1, f23, rne # perform operation
fsub.s f31, f1, f23, rtz # perform operation
fsub.s f31, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x28, 0x8fac077a73ad6570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fsub.s f28, f10, f17, dyn # perform operation
fsub.s f28, f10, f17, rdn # perform operation
fsub.s f28, f10, f17, rmm # perform operation
fsub.s f28, f10, f17, rne # perform operation
fsub.s f28, f10, f17, rtz # perform operation
fsub.s f28, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x4, 0x4942f0fdae166ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f4, f21, f19, dyn # perform operation
fsub.s f4, f21, f19, rdn # perform operation
fsub.s f4, f21, f19, rmm # perform operation
fsub.s f4, f21, f19, rne # perform operation
fsub.s f4, f21, f19, rtz # perform operation
fsub.s f4, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x27, 0xf509c192e423d10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f27, f13, f12, dyn # perform operation
fsub.s f27, f13, f12, rdn # perform operation
fsub.s f27, f13, f12, rmm # perform operation
fsub.s f27, f13, f12, rne # perform operation
fsub.s f27, f13, f12, rtz # perform operation
fsub.s f27, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x22, 0x275cf5c878e74076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fsub.s f22, f6, f7, dyn # perform operation
fsub.s f22, f6, f7, rdn # perform operation
fsub.s f22, f6, f7, rmm # perform operation
fsub.s f22, f6, f7, rne # perform operation
fsub.s f22, f6, f7, rtz # perform operation
fsub.s f22, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x14, 0x9eda5fc2a99ee33b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f14, f26, f30, dyn # perform operation
fsub.s f14, f26, f30, rdn # perform operation
fsub.s f14, f26, f30, rmm # perform operation
fsub.s f14, f26, f30, rne # perform operation
fsub.s f14, f26, f30, rtz # perform operation
fsub.s f14, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x21, 0x4c49eb361055e9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fsub.s f21, f30, f16, dyn # perform operation
fsub.s f21, f30, f16, rdn # perform operation
fsub.s f21, f30, f16, rmm # perform operation
fsub.s f21, f30, f16, rne # perform operation
fsub.s f21, f30, f16, rtz # perform operation
fsub.s f21, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x22, 0x92ca4b8c88697a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f22, f12, f28, dyn # perform operation
fsub.s f22, f12, f28, rdn # perform operation
fsub.s f22, f12, f28, rmm # perform operation
fsub.s f22, f12, f28, rne # perform operation
fsub.s f22, f12, f28, rtz # perform operation
fsub.s f22, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x17, 0x2e98e05548bab5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fsub.s f17, f19, f12, dyn # perform operation
fsub.s f17, f19, f12, rdn # perform operation
fsub.s f17, f19, f12, rmm # perform operation
fsub.s f17, f19, f12, rne # perform operation
fsub.s f17, f19, f12, rtz # perform operation
fsub.s f17, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x17, 0x9b1d36e6fc443469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fsub.s f17, f15, f11, dyn # perform operation
fsub.s f17, f15, f11, rdn # perform operation
fsub.s f17, f15, f11, rmm # perform operation
fsub.s f17, f15, f11, rne # perform operation
fsub.s f17, f15, f11, rtz # perform operation
fsub.s f17, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x10, 0x285166a667266042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fsub.s f10, f22, f5, dyn # perform operation
fsub.s f10, f22, f5, rdn # perform operation
fsub.s f10, f22, f5, rmm # perform operation
fsub.s f10, f22, f5, rne # perform operation
fsub.s f10, f22, f5, rtz # perform operation
fsub.s f10, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x29, 0xf4fdb5a6c6bbb694 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f29, f15, f27, dyn # perform operation
fsub.s f29, f15, f27, rdn # perform operation
fsub.s f29, f15, f27, rmm # perform operation
fsub.s f29, f15, f27, rne # perform operation
fsub.s f29, f15, f27, rtz # perform operation
fsub.s f29, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x11, 0x71d9d788428bf9a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f11, f25, f13, dyn # perform operation
fsub.s f11, f25, f13, rdn # perform operation
fsub.s f11, f25, f13, rmm # perform operation
fsub.s f11, f25, f13, rne # perform operation
fsub.s f11, f25, f13, rtz # perform operation
fsub.s f11, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x20, 0x859f951592bcfd0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fsub.s f20, f23, f28, dyn # perform operation
fsub.s f20, f23, f28, rdn # perform operation
fsub.s f20, f23, f28, rmm # perform operation
fsub.s f20, f23, f28, rne # perform operation
fsub.s f20, f23, f28, rtz # perform operation
fsub.s f20, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x19, 0xd70e2cd454a4f19a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f19, f18, f10, dyn # perform operation
fsub.s f19, f18, f10, rdn # perform operation
fsub.s f19, f18, f10, rmm # perform operation
fsub.s f19, f18, f10, rne # perform operation
fsub.s f19, f18, f10, rtz # perform operation
fsub.s f19, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x3, 0x9654f95a7d78d653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fsub.s f3, f29, f24, dyn # perform operation
fsub.s f3, f29, f24, rdn # perform operation
fsub.s f3, f29, f24, rmm # perform operation
fsub.s f3, f29, f24, rne # perform operation
fsub.s f3, f29, f24, rtz # perform operation
fsub.s f3, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x21, 0x78bb244444ac85ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsub.s f21, f8, f2, dyn # perform operation
fsub.s f21, f8, f2, rdn # perform operation
fsub.s f21, f8, f2, rmm # perform operation
fsub.s f21, f8, f2, rne # perform operation
fsub.s f21, f8, f2, rtz # perform operation
fsub.s f21, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x15, 0x606b19d3ae8cab34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fsub.s f15, f23, f27, dyn # perform operation
fsub.s f15, f23, f27, rdn # perform operation
fsub.s f15, f23, f27, rmm # perform operation
fsub.s f15, f23, f27, rne # perform operation
fsub.s f15, f23, f27, rtz # perform operation
fsub.s f15, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x11, 0x5803449ff4610df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fsub.s f11, f3, f21, dyn # perform operation
fsub.s f11, f3, f21, rdn # perform operation
fsub.s f11, f3, f21, rmm # perform operation
fsub.s f11, f3, f21, rne # perform operation
fsub.s f11, f3, f21, rtz # perform operation
fsub.s f11, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x13, 0xd9536a3650d585d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fsub.s f13, f14, f12, dyn # perform operation
fsub.s f13, f14, f12, rdn # perform operation
fsub.s f13, f14, f12, rmm # perform operation
fsub.s f13, f14, f12, rne # perform operation
fsub.s f13, f14, f12, rtz # perform operation
fsub.s f13, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x25, 0x3187abbb80c37176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fsub.s f25, f15, f21, dyn # perform operation
fsub.s f25, f15, f21, rdn # perform operation
fsub.s f25, f15, f21, rmm # perform operation
fsub.s f25, f15, f21, rne # perform operation
fsub.s f25, f15, f21, rtz # perform operation
fsub.s f25, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x15, 0xbd3bc6db1b026127 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fsub.s f15, f31, f17, dyn # perform operation
fsub.s f15, f31, f17, rdn # perform operation
fsub.s f15, f31, f17, rmm # perform operation
fsub.s f15, f31, f17, rne # perform operation
fsub.s f15, f31, f17, rtz # perform operation
fsub.s f15, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x8, 0x3149671c9095cd0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fsub.s f8, f31, f12, dyn # perform operation
fsub.s f8, f31, f12, rdn # perform operation
fsub.s f8, f31, f12, rmm # perform operation
fsub.s f8, f31, f12, rne # perform operation
fsub.s f8, f31, f12, rtz # perform operation
fsub.s f8, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x23, 0xcf07c177f976a559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f23, f20, f2, dyn # perform operation
fsub.s f23, f20, f2, rdn # perform operation
fsub.s f23, f20, f2, rmm # perform operation
fsub.s f23, f20, f2, rne # perform operation
fsub.s f23, f20, f2, rtz # perform operation
fsub.s f23, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x28, 0x6e19d188d65f4d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f28, f10, f26, dyn # perform operation
fsub.s f28, f10, f26, rdn # perform operation
fsub.s f28, f10, f26, rmm # perform operation
fsub.s f28, f10, f26, rne # perform operation
fsub.s f28, f10, f26, rtz # perform operation
fsub.s f28, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x17, 0xcd66b21f909787ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fsub.s f17, f15, f5, dyn # perform operation
fsub.s f17, f15, f5, rdn # perform operation
fsub.s f17, f15, f5, rmm # perform operation
fsub.s f17, f15, f5, rne # perform operation
fsub.s f17, f15, f5, rtz # perform operation
fsub.s f17, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x11, 0x3b320dcd1c0f83fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fsub.s f11, f24, f8, dyn # perform operation
fsub.s f11, f24, f8, rdn # perform operation
fsub.s f11, f24, f8, rmm # perform operation
fsub.s f11, f24, f8, rne # perform operation
fsub.s f11, f24, f8, rtz # perform operation
fsub.s f11, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x24, 0xaee8caa272fd885b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fsub.s f24, f27, f15, dyn # perform operation
fsub.s f24, f27, f15, rdn # perform operation
fsub.s f24, f27, f15, rmm # perform operation
fsub.s f24, f27, f15, rne # perform operation
fsub.s f24, f27, f15, rtz # perform operation
fsub.s f24, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x25, 0xe2612fc23b684b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f25, f2, f16, dyn # perform operation
fsub.s f25, f2, f16, rdn # perform operation
fsub.s f25, f2, f16, rmm # perform operation
fsub.s f25, f2, f16, rne # perform operation
fsub.s f25, f2, f16, rtz # perform operation
fsub.s f25, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x17, 0x6f0d5f14ce2dadeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fsub.s f17, f10, f5, dyn # perform operation
fsub.s f17, f10, f5, rdn # perform operation
fsub.s f17, f10, f5, rmm # perform operation
fsub.s f17, f10, f5, rne # perform operation
fsub.s f17, f10, f5, rtz # perform operation
fsub.s f17, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x18, 0xc272e3d336255910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fsub.s f18, f9, f25, dyn # perform operation
fsub.s f18, f9, f25, rdn # perform operation
fsub.s f18, f9, f25, rmm # perform operation
fsub.s f18, f9, f25, rne # perform operation
fsub.s f18, f9, f25, rtz # perform operation
fsub.s f18, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x29, 0xbf585b559b5b7dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f29, f24, f1, dyn # perform operation
fsub.s f29, f24, f1, rdn # perform operation
fsub.s f29, f24, f1, rmm # perform operation
fsub.s f29, f24, f1, rne # perform operation
fsub.s f29, f24, f1, rtz # perform operation
fsub.s f29, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x18, 0xf36774eaa66175e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f18, f15, f5, dyn # perform operation
fsub.s f18, f15, f5, rdn # perform operation
fsub.s f18, f15, f5, rmm # perform operation
fsub.s f18, f15, f5, rne # perform operation
fsub.s f18, f15, f5, rtz # perform operation
fsub.s f18, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x31, 0x06566c73105f3ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fsub.s f31, f13, f25, dyn # perform operation
fsub.s f31, f13, f25, rdn # perform operation
fsub.s f31, f13, f25, rmm # perform operation
fsub.s f31, f13, f25, rne # perform operation
fsub.s f31, f13, f25, rtz # perform operation
fsub.s f31, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x25, 0x2ce2d53b21aa8966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fsub.s f25, f18, f11, dyn # perform operation
fsub.s f25, f18, f11, rdn # perform operation
fsub.s f25, f18, f11, rmm # perform operation
fsub.s f25, f18, f11, rne # perform operation
fsub.s f25, f18, f11, rtz # perform operation
fsub.s f25, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x24, 0xf7fe16badebdd9ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fsub.s f24, f4, f26, dyn # perform operation
fsub.s f24, f4, f26, rdn # perform operation
fsub.s f24, f4, f26, rmm # perform operation
fsub.s f24, f4, f26, rne # perform operation
fsub.s f24, f4, f26, rtz # perform operation
fsub.s f24, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x3, 0x148e859db25c9a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsub.s f3, f26, f6, dyn # perform operation
fsub.s f3, f26, f6, rdn # perform operation
fsub.s f3, f26, f6, rmm # perform operation
fsub.s f3, f26, f6, rne # perform operation
fsub.s f3, f26, f6, rtz # perform operation
fsub.s f3, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x30, 0x7d2061b2574ebbfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f30, f21, f31, dyn # perform operation
fsub.s f30, f21, f31, rdn # perform operation
fsub.s f30, f21, f31, rmm # perform operation
fsub.s f30, f21, f31, rne # perform operation
fsub.s f30, f21, f31, rtz # perform operation
fsub.s f30, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x18, 0x5425490c552ac46e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsub.s f18, f29, f5, dyn # perform operation
fsub.s f18, f29, f5, rdn # perform operation
fsub.s f18, f29, f5, rmm # perform operation
fsub.s f18, f29, f5, rne # perform operation
fsub.s f18, f29, f5, rtz # perform operation
fsub.s f18, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x10, 0x1e7163252f4f08f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fsub.s f10, f2, f28, dyn # perform operation
fsub.s f10, f2, f28, rdn # perform operation
fsub.s f10, f2, f28, rmm # perform operation
fsub.s f10, f2, f28, rne # perform operation
fsub.s f10, f2, f28, rtz # perform operation
fsub.s f10, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x5, 0xc71be32eadb9dace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fsub.s f5, f16, f20, dyn # perform operation
fsub.s f5, f16, f20, rdn # perform operation
fsub.s f5, f16, f20, rmm # perform operation
fsub.s f5, f16, f20, rne # perform operation
fsub.s f5, f16, f20, rtz # perform operation
fsub.s f5, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x25, 0xb9d609e2f83c78d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f25, f9, f29, dyn # perform operation
fsub.s f25, f9, f29, rdn # perform operation
fsub.s f25, f9, f29, rmm # perform operation
fsub.s f25, f9, f29, rne # perform operation
fsub.s f25, f9, f29, rtz # perform operation
fsub.s f25, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x9, 0xcc6d2e8fe8f880d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fsub.s f9, f29, f15, dyn # perform operation
fsub.s f9, f29, f15, rdn # perform operation
fsub.s f9, f29, f15, rmm # perform operation
fsub.s f9, f29, f15, rne # perform operation
fsub.s f9, f29, f15, rtz # perform operation
fsub.s f9, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x24, 0x2babc0653d8b037c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fsub.s f24, f29, f4, dyn # perform operation
fsub.s f24, f29, f4, rdn # perform operation
fsub.s f24, f29, f4, rmm # perform operation
fsub.s f24, f29, f4, rne # perform operation
fsub.s f24, f29, f4, rtz # perform operation
fsub.s f24, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x10, 0xeb09cd69097d4256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fsub.s f10, f19, f15, dyn # perform operation
fsub.s f10, f19, f15, rdn # perform operation
fsub.s f10, f19, f15, rmm # perform operation
fsub.s f10, f19, f15, rne # perform operation
fsub.s f10, f19, f15, rtz # perform operation
fsub.s f10, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x9, 0xae58082b9632b976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsub.s f9, f4, f31, dyn # perform operation
fsub.s f9, f4, f31, rdn # perform operation
fsub.s f9, f4, f31, rmm # perform operation
fsub.s f9, f4, f31, rne # perform operation
fsub.s f9, f4, f31, rtz # perform operation
fsub.s f9, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x30, 0x6a780cdaed82c399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f30, f26, f25, dyn # perform operation
fsub.s f30, f26, f25, rdn # perform operation
fsub.s f30, f26, f25, rmm # perform operation
fsub.s f30, f26, f25, rne # perform operation
fsub.s f30, f26, f25, rtz # perform operation
fsub.s f30, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x14, 0x42fac4b541ee9da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f14, f5, f20, dyn # perform operation
fsub.s f14, f5, f20, rdn # perform operation
fsub.s f14, f5, f20, rmm # perform operation
fsub.s f14, f5, f20, rne # perform operation
fsub.s f14, f5, f20, rtz # perform operation
fsub.s f14, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x2, 0x7426dcbd329a8dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fsub.s f2, f21, f25, dyn # perform operation
fsub.s f2, f21, f25, rdn # perform operation
fsub.s f2, f21, f25, rmm # perform operation
fsub.s f2, f21, f25, rne # perform operation
fsub.s f2, f21, f25, rtz # perform operation
fsub.s f2, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x31, 0x0fad5324fdb43028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fsub.s f31, f18, f30, dyn # perform operation
fsub.s f31, f18, f30, rdn # perform operation
fsub.s f31, f18, f30, rmm # perform operation
fsub.s f31, f18, f30, rne # perform operation
fsub.s f31, f18, f30, rtz # perform operation
fsub.s f31, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x27, 0x2b00910df1771b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fsub.s f27, f26, f24, dyn # perform operation
fsub.s f27, f26, f24, rdn # perform operation
fsub.s f27, f26, f24, rmm # perform operation
fsub.s f27, f26, f24, rne # perform operation
fsub.s f27, f26, f24, rtz # perform operation
fsub.s f27, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x10, 0x43d43bd5c0dbd46f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fsub.s f10, f21, f13, dyn # perform operation
fsub.s f10, f21, f13, rdn # perform operation
fsub.s f10, f21, f13, rmm # perform operation
fsub.s f10, f21, f13, rne # perform operation
fsub.s f10, f21, f13, rtz # perform operation
fsub.s f10, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x28, 0x968a142a690a7ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fsub.s f28, f1, f18, dyn # perform operation
fsub.s f28, f1, f18, rdn # perform operation
fsub.s f28, f1, f18, rmm # perform operation
fsub.s f28, f1, f18, rne # perform operation
fsub.s f28, f1, f18, rtz # perform operation
fsub.s f28, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x3, 0x9a76b442c66556bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fsub.s f3, f15, f22, dyn # perform operation
fsub.s f3, f15, f22, rdn # perform operation
fsub.s f3, f15, f22, rmm # perform operation
fsub.s f3, f15, f22, rne # perform operation
fsub.s f3, f15, f22, rtz # perform operation
fsub.s f3, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x15, 0xbc69bc4e5b01be77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fsub.s f15, f6, f4, dyn # perform operation
fsub.s f15, f6, f4, rdn # perform operation
fsub.s f15, f6, f4, rmm # perform operation
fsub.s f15, f6, f4, rne # perform operation
fsub.s f15, f6, f4, rtz # perform operation
fsub.s f15, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x18, 0xbc705b5febd7f61b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fsub.s f18, f15, f23, dyn # perform operation
fsub.s f18, f15, f23, rdn # perform operation
fsub.s f18, f15, f23, rmm # perform operation
fsub.s f18, f15, f23, rne # perform operation
fsub.s f18, f15, f23, rtz # perform operation
fsub.s f18, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x9, 0xdbfe0e3da40fc5a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f9, f18, f14, dyn # perform operation
fsub.s f9, f18, f14, rdn # perform operation
fsub.s f9, f18, f14, rmm # perform operation
fsub.s f9, f18, f14, rne # perform operation
fsub.s f9, f18, f14, rtz # perform operation
fsub.s f9, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x29, 0x67fc8c232bcf761d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fsub.s f29, f12, f14, dyn # perform operation
fsub.s f29, f12, f14, rdn # perform operation
fsub.s f29, f12, f14, rmm # perform operation
fsub.s f29, f12, f14, rne # perform operation
fsub.s f29, f12, f14, rtz # perform operation
fsub.s f29, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x28, 0xf3c1aebdf7898499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fsub.s f28, f8, f27, dyn # perform operation
fsub.s f28, f8, f27, rdn # perform operation
fsub.s f28, f8, f27, rmm # perform operation
fsub.s f28, f8, f27, rne # perform operation
fsub.s f28, f8, f27, rtz # perform operation
fsub.s f28, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x19, 0xb60fa5d2dfdaeb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f19, f9, f13, dyn # perform operation
fsub.s f19, f9, f13, rdn # perform operation
fsub.s f19, f9, f13, rmm # perform operation
fsub.s f19, f9, f13, rne # perform operation
fsub.s f19, f9, f13, rtz # perform operation
fsub.s f19, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x5, 0xda7de0a02b99ecf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsub.s f5, f22, f14, dyn # perform operation
fsub.s f5, f22, f14, rdn # perform operation
fsub.s f5, f22, f14, rmm # perform operation
fsub.s f5, f22, f14, rne # perform operation
fsub.s f5, f22, f14, rtz # perform operation
fsub.s f5, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x12, 0xb3d1bb9374068344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fsub.s f12, f19, f11, dyn # perform operation
fsub.s f12, f19, f11, rdn # perform operation
fsub.s f12, f19, f11, rmm # perform operation
fsub.s f12, f19, f11, rne # perform operation
fsub.s f12, f19, f11, rtz # perform operation
fsub.s f12, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x6, 0xa019b8dc863bd9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsub.s f6, f13, f8, dyn # perform operation
fsub.s f6, f13, f8, rdn # perform operation
fsub.s f6, f13, f8, rmm # perform operation
fsub.s f6, f13, f8, rne # perform operation
fsub.s f6, f13, f8, rtz # perform operation
fsub.s f6, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x15, 0xf2455b9e9c91610f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f15, f19, f12, dyn # perform operation
fsub.s f15, f19, f12, rdn # perform operation
fsub.s f15, f19, f12, rmm # perform operation
fsub.s f15, f19, f12, rne # perform operation
fsub.s f15, f19, f12, rtz # perform operation
fsub.s f15, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x4, 0x9d7e97e37070a986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fsub.s f4, f12, f16, dyn # perform operation
fsub.s f4, f12, f16, rdn # perform operation
fsub.s f4, f12, f16, rmm # perform operation
fsub.s f4, f12, f16, rne # perform operation
fsub.s f4, f12, f16, rtz # perform operation
fsub.s f4, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x30, 0x7d46f8de7760b141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fsub.s f30, f14, f19, dyn # perform operation
fsub.s f30, f14, f19, rdn # perform operation
fsub.s f30, f14, f19, rmm # perform operation
fsub.s f30, f14, f19, rne # perform operation
fsub.s f30, f14, f19, rtz # perform operation
fsub.s f30, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x31, 0x6fcdf5812538096e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fsub.s f31, f8, f19, dyn # perform operation
fsub.s f31, f8, f19, rdn # perform operation
fsub.s f31, f8, f19, rmm # perform operation
fsub.s f31, f8, f19, rne # perform operation
fsub.s f31, f8, f19, rtz # perform operation
fsub.s f31, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x29, 0x21b8b6aafcd4afdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fsub.s f29, f22, f11, dyn # perform operation
fsub.s f29, f22, f11, rdn # perform operation
fsub.s f29, f22, f11, rmm # perform operation
fsub.s f29, f22, f11, rne # perform operation
fsub.s f29, f22, f11, rtz # perform operation
fsub.s f29, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x31, 0x8c9338b986eaae4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fsub.s f31, f8, f1, dyn # perform operation
fsub.s f31, f8, f1, rdn # perform operation
fsub.s f31, f8, f1, rmm # perform operation
fsub.s f31, f8, f1, rne # perform operation
fsub.s f31, f8, f1, rtz # perform operation
fsub.s f31, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x28, 0x4497f8aa2af70928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fsub.s f28, f20, f24, dyn # perform operation
fsub.s f28, f20, f24, rdn # perform operation
fsub.s f28, f20, f24, rmm # perform operation
fsub.s f28, f20, f24, rne # perform operation
fsub.s f28, f20, f24, rtz # perform operation
fsub.s f28, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x25, 0xcffb4adcd9f6a2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fsub.s f25, f7, f14, dyn # perform operation
fsub.s f25, f7, f14, rdn # perform operation
fsub.s f25, f7, f14, rmm # perform operation
fsub.s f25, f7, f14, rne # perform operation
fsub.s f25, f7, f14, rtz # perform operation
fsub.s f25, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x13, 0x5f9c41a17a9d1624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f13, f30, f3, dyn # perform operation
fsub.s f13, f30, f3, rdn # perform operation
fsub.s f13, f30, f3, rmm # perform operation
fsub.s f13, f30, f3, rne # perform operation
fsub.s f13, f30, f3, rtz # perform operation
fsub.s f13, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x25, 0x7fd8cf8fd6768c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fsub.s f25, f7, f16, dyn # perform operation
fsub.s f25, f7, f16, rdn # perform operation
fsub.s f25, f7, f16, rmm # perform operation
fsub.s f25, f7, f16, rne # perform operation
fsub.s f25, f7, f16, rtz # perform operation
fsub.s f25, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x1, 0xc8d33755a601c5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fsub.s f1, f25, f31, dyn # perform operation
fsub.s f1, f25, f31, rdn # perform operation
fsub.s f1, f25, f31, rmm # perform operation
fsub.s f1, f25, f31, rne # perform operation
fsub.s f1, f25, f31, rtz # perform operation
fsub.s f1, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x5, 0x1e8e81d2f6a70aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fsub.s f5, f27, f4, dyn # perform operation
fsub.s f5, f27, f4, rdn # perform operation
fsub.s f5, f27, f4, rmm # perform operation
fsub.s f5, f27, f4, rne # perform operation
fsub.s f5, f27, f4, rtz # perform operation
fsub.s f5, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x11, 0xba0fb4e32b294619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fsub.s f11, f8, f21, dyn # perform operation
fsub.s f11, f8, f21, rdn # perform operation
fsub.s f11, f8, f21, rmm # perform operation
fsub.s f11, f8, f21, rne # perform operation
fsub.s f11, f8, f21, rtz # perform operation
fsub.s f11, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x31, 0xffd2f96ac40ae105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fsub.s f31, f14, f30, dyn # perform operation
fsub.s f31, f14, f30, rdn # perform operation
fsub.s f31, f14, f30, rmm # perform operation
fsub.s f31, f14, f30, rne # perform operation
fsub.s f31, f14, f30, rtz # perform operation
fsub.s f31, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x20, 0xfacfc35e20af85b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fsub.s f20, f27, f19, dyn # perform operation
fsub.s f20, f27, f19, rdn # perform operation
fsub.s f20, f27, f19, rmm # perform operation
fsub.s f20, f27, f19, rne # perform operation
fsub.s f20, f27, f19, rtz # perform operation
fsub.s f20, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x15, 0xa0bb0518435574ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f15, f5, f22, dyn # perform operation
fsub.s f15, f5, f22, rdn # perform operation
fsub.s f15, f5, f22, rmm # perform operation
fsub.s f15, f5, f22, rne # perform operation
fsub.s f15, f5, f22, rtz # perform operation
fsub.s f15, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x3, 0x656819df5464a837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fsub.s f3, f14, f15, dyn # perform operation
fsub.s f3, f14, f15, rdn # perform operation
fsub.s f3, f14, f15, rmm # perform operation
fsub.s f3, f14, f15, rne # perform operation
fsub.s f3, f14, f15, rtz # perform operation
fsub.s f3, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x30, 0x155d6c8e57c536ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fsub.s f30, f28, f7, dyn # perform operation
fsub.s f30, f28, f7, rdn # perform operation
fsub.s f30, f28, f7, rmm # perform operation
fsub.s f30, f28, f7, rne # perform operation
fsub.s f30, f28, f7, rtz # perform operation
fsub.s f30, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x12, 0xceebcec77ec427e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f12, f26, f16, dyn # perform operation
fsub.s f12, f26, f16, rdn # perform operation
fsub.s f12, f26, f16, rmm # perform operation
fsub.s f12, f26, f16, rne # perform operation
fsub.s f12, f26, f16, rtz # perform operation
fsub.s f12, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x9, 0xc662fc2401fb983e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fsub.s f9, f11, f7, dyn # perform operation
fsub.s f9, f11, f7, rdn # perform operation
fsub.s f9, f11, f7, rmm # perform operation
fsub.s f9, f11, f7, rne # perform operation
fsub.s f9, f11, f7, rtz # perform operation
fsub.s f9, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x27, 0x508b76d134e1e1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f27, f11, f23, dyn # perform operation
fsub.s f27, f11, f23, rdn # perform operation
fsub.s f27, f11, f23, rmm # perform operation
fsub.s f27, f11, f23, rne # perform operation
fsub.s f27, f11, f23, rtz # perform operation
fsub.s f27, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x26, 0xbb65d71b49711fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f26, f17, f6, dyn # perform operation
fsub.s f26, f17, f6, rdn # perform operation
fsub.s f26, f17, f6, rmm # perform operation
fsub.s f26, f17, f6, rne # perform operation
fsub.s f26, f17, f6, rtz # perform operation
fsub.s f26, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x10, 0xf10d87de6e4e5446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fsub.s f10, f1, f16, dyn # perform operation
fsub.s f10, f1, f16, rdn # perform operation
fsub.s f10, f1, f16, rmm # perform operation
fsub.s f10, f1, f16, rne # perform operation
fsub.s f10, f1, f16, rtz # perform operation
fsub.s f10, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x23, 0x1ea574b3687603d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fsub.s f23, f5, f30, dyn # perform operation
fsub.s f23, f5, f30, rdn # perform operation
fsub.s f23, f5, f30, rmm # perform operation
fsub.s f23, f5, f30, rne # perform operation
fsub.s f23, f5, f30, rtz # perform operation
fsub.s f23, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x2, 0xb46b75cf341d3774 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fsub.s f2, f9, f29, dyn # perform operation
fsub.s f2, f9, f29, rdn # perform operation
fsub.s f2, f9, f29, rmm # perform operation
fsub.s f2, f9, f29, rne # perform operation
fsub.s f2, f9, f29, rtz # perform operation
fsub.s f2, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x28, 0x55ed28b74dadfc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fsub.s f28, f9, f30, dyn # perform operation
fsub.s f28, f9, f30, rdn # perform operation
fsub.s f28, f9, f30, rmm # perform operation
fsub.s f28, f9, f30, rne # perform operation
fsub.s f28, f9, f30, rtz # perform operation
fsub.s f28, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x29, 0x6165860ef9a09283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fsub.s f29, f13, f18, dyn # perform operation
fsub.s f29, f13, f18, rdn # perform operation
fsub.s f29, f13, f18, rmm # perform operation
fsub.s f29, f13, f18, rne # perform operation
fsub.s f29, f13, f18, rtz # perform operation
fsub.s f29, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x2, 0x422fd9637e924e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fsub.s f2, f4, f3, dyn # perform operation
fsub.s f2, f4, f3, rdn # perform operation
fsub.s f2, f4, f3, rmm # perform operation
fsub.s f2, f4, f3, rne # perform operation
fsub.s f2, f4, f3, rtz # perform operation
fsub.s f2, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x16, 0xf1d20adb0c7930fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f16, f22, f13, dyn # perform operation
fsub.s f16, f22, f13, rdn # perform operation
fsub.s f16, f22, f13, rmm # perform operation
fsub.s f16, f22, f13, rne # perform operation
fsub.s f16, f22, f13, rtz # perform operation
fsub.s f16, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x18, 0x0de83d7bba377938 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f18, f6, f29, dyn # perform operation
fsub.s f18, f6, f29, rdn # perform operation
fsub.s f18, f6, f29, rmm # perform operation
fsub.s f18, f6, f29, rne # perform operation
fsub.s f18, f6, f29, rtz # perform operation
fsub.s f18, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x10, 0xc68a6fe917a50ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f10, f9, f31, dyn # perform operation
fsub.s f10, f9, f31, rdn # perform operation
fsub.s f10, f9, f31, rmm # perform operation
fsub.s f10, f9, f31, rne # perform operation
fsub.s f10, f9, f31, rtz # perform operation
fsub.s f10, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x18, 0x86d36e7befe796e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f18, f27, f9, dyn # perform operation
fsub.s f18, f27, f9, rdn # perform operation
fsub.s f18, f27, f9, rmm # perform operation
fsub.s f18, f27, f9, rne # perform operation
fsub.s f18, f27, f9, rtz # perform operation
fsub.s f18, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x30, 0xb236fd8fc064b1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsub.s f30, f17, f15, dyn # perform operation
fsub.s f30, f17, f15, rdn # perform operation
fsub.s f30, f17, f15, rmm # perform operation
fsub.s f30, f17, f15, rne # perform operation
fsub.s f30, f17, f15, rtz # perform operation
fsub.s f30, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x17, 0xd69ae04eef13c9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fsub.s f17, f3, f22, dyn # perform operation
fsub.s f17, f3, f22, rdn # perform operation
fsub.s f17, f3, f22, rmm # perform operation
fsub.s f17, f3, f22, rne # perform operation
fsub.s f17, f3, f22, rtz # perform operation
fsub.s f17, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x16, 0x978f65697e03b049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f16, f29, f25, dyn # perform operation
fsub.s f16, f29, f25, rdn # perform operation
fsub.s f16, f29, f25, rmm # perform operation
fsub.s f16, f29, f25, rne # perform operation
fsub.s f16, f29, f25, rtz # perform operation
fsub.s f16, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x23, 0x8a8d9abd22eccad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f23, f27, f7, dyn # perform operation
fsub.s f23, f27, f7, rdn # perform operation
fsub.s f23, f27, f7, rmm # perform operation
fsub.s f23, f27, f7, rne # perform operation
fsub.s f23, f27, f7, rtz # perform operation
fsub.s f23, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x12, 0x50f0921a3ba87323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fsub.s f12, f4, f15, dyn # perform operation
fsub.s f12, f4, f15, rdn # perform operation
fsub.s f12, f4, f15, rmm # perform operation
fsub.s f12, f4, f15, rne # perform operation
fsub.s f12, f4, f15, rtz # perform operation
fsub.s f12, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x30, 0x47cbb22d13e9af6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fsub.s f30, f8, f24, dyn # perform operation
fsub.s f30, f8, f24, rdn # perform operation
fsub.s f30, f8, f24, rmm # perform operation
fsub.s f30, f8, f24, rne # perform operation
fsub.s f30, f8, f24, rtz # perform operation
fsub.s f30, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x7, 0x7979d6a92958e25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f7, f4, f18, dyn # perform operation
fsub.s f7, f4, f18, rdn # perform operation
fsub.s f7, f4, f18, rmm # perform operation
fsub.s f7, f4, f18, rne # perform operation
fsub.s f7, f4, f18, rtz # perform operation
fsub.s f7, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x21, 0x33dc5c4c0071ea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fsub.s f21, f6, f18, dyn # perform operation
fsub.s f21, f6, f18, rdn # perform operation
fsub.s f21, f6, f18, rmm # perform operation
fsub.s f21, f6, f18, rne # perform operation
fsub.s f21, f6, f18, rtz # perform operation
fsub.s f21, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x5, 0x32d83ae82b29e9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsub.s f5, f24, f7, dyn # perform operation
fsub.s f5, f24, f7, rdn # perform operation
fsub.s f5, f24, f7, rmm # perform operation
fsub.s f5, f24, f7, rne # perform operation
fsub.s f5, f24, f7, rtz # perform operation
fsub.s f5, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x25, 0xe50a4a4fcd434572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fsub.s f25, f22, f30, dyn # perform operation
fsub.s f25, f22, f30, rdn # perform operation
fsub.s f25, f22, f30, rmm # perform operation
fsub.s f25, f22, f30, rne # perform operation
fsub.s f25, f22, f30, rtz # perform operation
fsub.s f25, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x9, 0xc7455c71be167b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fsub.s f9, f16, f28, dyn # perform operation
fsub.s f9, f16, f28, rdn # perform operation
fsub.s f9, f16, f28, rmm # perform operation
fsub.s f9, f16, f28, rne # perform operation
fsub.s f9, f16, f28, rtz # perform operation
fsub.s f9, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x8, 0xa75579ab938d44b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fsub.s f8, f11, f29, dyn # perform operation
fsub.s f8, f11, f29, rdn # perform operation
fsub.s f8, f11, f29, rmm # perform operation
fsub.s f8, f11, f29, rne # perform operation
fsub.s f8, f11, f29, rtz # perform operation
fsub.s f8, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x9, 0x455774e0476444cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.s f9, f30, f27, dyn # perform operation
fsub.s f9, f30, f27, rdn # perform operation
fsub.s f9, f30, f27, rmm # perform operation
fsub.s f9, f30, f27, rne # perform operation
fsub.s f9, f30, f27, rtz # perform operation
fsub.s f9, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x17, 0xb26186dc6c089900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fsub.s f17, f7, f9, dyn # perform operation
fsub.s f17, f7, f9, rdn # perform operation
fsub.s f17, f7, f9, rmm # perform operation
fsub.s f17, f7, f9, rne # perform operation
fsub.s f17, f7, f9, rtz # perform operation
fsub.s f17, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x26, 0xa53f7fa7af00db33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fsub.s f26, f8, f29, dyn # perform operation
fsub.s f26, f8, f29, rdn # perform operation
fsub.s f26, f8, f29, rmm # perform operation
fsub.s f26, f8, f29, rne # perform operation
fsub.s f26, f8, f29, rtz # perform operation
fsub.s f26, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x30, 0xd0aa8bee0e0e84a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fsub.s f30, f4, f25, dyn # perform operation
fsub.s f30, f4, f25, rdn # perform operation
fsub.s f30, f4, f25, rmm # perform operation
fsub.s f30, f4, f25, rne # perform operation
fsub.s f30, f4, f25, rtz # perform operation
fsub.s f30, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x1, 0x6898f0ed03e5b6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f1, f13, f29, dyn # perform operation
fsub.s f1, f13, f29, rdn # perform operation
fsub.s f1, f13, f29, rmm # perform operation
fsub.s f1, f13, f29, rne # perform operation
fsub.s f1, f13, f29, rtz # perform operation
fsub.s f1, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x4, 0x3f6e979b9d130536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fsub.s f4, f22, f27, dyn # perform operation
fsub.s f4, f22, f27, rdn # perform operation
fsub.s f4, f22, f27, rmm # perform operation
fsub.s f4, f22, f27, rne # perform operation
fsub.s f4, f22, f27, rtz # perform operation
fsub.s f4, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x19, 0xa70a0b31e6998b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f19, f14, f9, dyn # perform operation
fsub.s f19, f14, f9, rdn # perform operation
fsub.s f19, f14, f9, rmm # perform operation
fsub.s f19, f14, f9, rne # perform operation
fsub.s f19, f14, f9, rtz # perform operation
fsub.s f19, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x19, 0xa34124b3830cbde7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fsub.s f19, f23, f29, dyn # perform operation
fsub.s f19, f23, f29, rdn # perform operation
fsub.s f19, f23, f29, rmm # perform operation
fsub.s f19, f23, f29, rne # perform operation
fsub.s f19, f23, f29, rtz # perform operation
fsub.s f19, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x13, 0x4dc853fb9357c440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fsub.s f13, f15, f1, dyn # perform operation
fsub.s f13, f15, f1, rdn # perform operation
fsub.s f13, f15, f1, rmm # perform operation
fsub.s f13, f15, f1, rne # perform operation
fsub.s f13, f15, f1, rtz # perform operation
fsub.s f13, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x29, 0xd83ef21e94904eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fsub.s f29, f22, f19, dyn # perform operation
fsub.s f29, f22, f19, rdn # perform operation
fsub.s f29, f22, f19, rmm # perform operation
fsub.s f29, f22, f19, rne # perform operation
fsub.s f29, f22, f19, rtz # perform operation
fsub.s f29, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x24, 0x0e4c815f3cb47a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fsub.s f24, f28, f18, dyn # perform operation
fsub.s f24, f28, f18, rdn # perform operation
fsub.s f24, f28, f18, rmm # perform operation
fsub.s f24, f28, f18, rne # perform operation
fsub.s f24, f28, f18, rtz # perform operation
fsub.s f24, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x28, 0xc506881c85e30fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fsub.s f28, f21, f25, dyn # perform operation
fsub.s f28, f21, f25, rdn # perform operation
fsub.s f28, f21, f25, rmm # perform operation
fsub.s f28, f21, f25, rne # perform operation
fsub.s f28, f21, f25, rtz # perform operation
fsub.s f28, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x2, 0x7b1abc75cd659500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fsub.s f2, f21, f1, dyn # perform operation
fsub.s f2, f21, f1, rdn # perform operation
fsub.s f2, f21, f1, rmm # perform operation
fsub.s f2, f21, f1, rne # perform operation
fsub.s f2, f21, f1, rtz # perform operation
fsub.s f2, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x3, 0xcb6a10ce37fa889e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fsub.s f3, f24, f31, dyn # perform operation
fsub.s f3, f24, f31, rdn # perform operation
fsub.s f3, f24, f31, rmm # perform operation
fsub.s f3, f24, f31, rne # perform operation
fsub.s f3, f24, f31, rtz # perform operation
fsub.s f3, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x20, 0x0b5c9f36f4288414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fsub.s f20, f28, f4, dyn # perform operation
fsub.s f20, f28, f4, rdn # perform operation
fsub.s f20, f28, f4, rmm # perform operation
fsub.s f20, f28, f4, rne # perform operation
fsub.s f20, f28, f4, rtz # perform operation
fsub.s f20, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x3, 0xead9a7f36c71095e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fsub.s f3, f11, f23, dyn # perform operation
fsub.s f3, f11, f23, rdn # perform operation
fsub.s f3, f11, f23, rmm # perform operation
fsub.s f3, f11, f23, rne # perform operation
fsub.s f3, f11, f23, rtz # perform operation
fsub.s f3, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x23, 0xc343e38e30475130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fsub.s f23, f4, f6, dyn # perform operation
fsub.s f23, f4, f6, rdn # perform operation
fsub.s f23, f4, f6, rmm # perform operation
fsub.s f23, f4, f6, rne # perform operation
fsub.s f23, f4, f6, rtz # perform operation
fsub.s f23, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x7, 0xa881cf2322ccb1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fsub.s f7, f23, f19, dyn # perform operation
fsub.s f7, f23, f19, rdn # perform operation
fsub.s f7, f23, f19, rmm # perform operation
fsub.s f7, f23, f19, rne # perform operation
fsub.s f7, f23, f19, rtz # perform operation
fsub.s f7, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x20, 0x54498b4e1e7d8bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fsub.s f20, f25, f27, dyn # perform operation
fsub.s f20, f25, f27, rdn # perform operation
fsub.s f20, f25, f27, rmm # perform operation
fsub.s f20, f25, f27, rne # perform operation
fsub.s f20, f25, f27, rtz # perform operation
fsub.s f20, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x19, 0x25ef5a2f8487df82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f19, f12, f27, dyn # perform operation
fsub.s f19, f12, f27, rdn # perform operation
fsub.s f19, f12, f27, rmm # perform operation
fsub.s f19, f12, f27, rne # perform operation
fsub.s f19, f12, f27, rtz # perform operation
fsub.s f19, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x22, 0x00e12d7fedaeb788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsub.s f22, f27, f15, dyn # perform operation
fsub.s f22, f27, f15, rdn # perform operation
fsub.s f22, f27, f15, rmm # perform operation
fsub.s f22, f27, f15, rne # perform operation
fsub.s f22, f27, f15, rtz # perform operation
fsub.s f22, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x15, 0x3dc3b2b90b22708d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f15, f7, f4, dyn # perform operation
fsub.s f15, f7, f4, rdn # perform operation
fsub.s f15, f7, f4, rmm # perform operation
fsub.s f15, f7, f4, rne # perform operation
fsub.s f15, f7, f4, rtz # perform operation
fsub.s f15, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x20, 0xed183588f3684e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsub.s f20, f16, f7, dyn # perform operation
fsub.s f20, f16, f7, rdn # perform operation
fsub.s f20, f16, f7, rmm # perform operation
fsub.s f20, f16, f7, rne # perform operation
fsub.s f20, f16, f7, rtz # perform operation
fsub.s f20, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x17, 0x1f0fc307459c7bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fsub.s f17, f8, f24, dyn # perform operation
fsub.s f17, f8, f24, rdn # perform operation
fsub.s f17, f8, f24, rmm # perform operation
fsub.s f17, f8, f24, rne # perform operation
fsub.s f17, f8, f24, rtz # perform operation
fsub.s f17, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x13, 0x3e25508559d7549d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fsub.s f13, f25, f3, dyn # perform operation
fsub.s f13, f25, f3, rdn # perform operation
fsub.s f13, f25, f3, rmm # perform operation
fsub.s f13, f25, f3, rne # perform operation
fsub.s f13, f25, f3, rtz # perform operation
fsub.s f13, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x21, 0x39e9b535cf217d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fsub.s f21, f9, f18, dyn # perform operation
fsub.s f21, f9, f18, rdn # perform operation
fsub.s f21, f9, f18, rmm # perform operation
fsub.s f21, f9, f18, rne # perform operation
fsub.s f21, f9, f18, rtz # perform operation
fsub.s f21, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x29, 0x6f379b7914ef10d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fsub.s f29, f1, f21, dyn # perform operation
fsub.s f29, f1, f21, rdn # perform operation
fsub.s f29, f1, f21, rmm # perform operation
fsub.s f29, f1, f21, rne # perform operation
fsub.s f29, f1, f21, rtz # perform operation
fsub.s f29, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x12, 0x93d8ceda6e35b461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsub.s f12, f29, f11, dyn # perform operation
fsub.s f12, f29, f11, rdn # perform operation
fsub.s f12, f29, f11, rmm # perform operation
fsub.s f12, f29, f11, rne # perform operation
fsub.s f12, f29, f11, rtz # perform operation
fsub.s f12, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x27, 0xa9099411219cc3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fsub.s f27, f14, f16, dyn # perform operation
fsub.s f27, f14, f16, rdn # perform operation
fsub.s f27, f14, f16, rmm # perform operation
fsub.s f27, f14, f16, rne # perform operation
fsub.s f27, f14, f16, rtz # perform operation
fsub.s f27, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x21, 0xf90f81f1a5f1a72c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f21, f6, f22, dyn # perform operation
fsub.s f21, f6, f22, rdn # perform operation
fsub.s f21, f6, f22, rmm # perform operation
fsub.s f21, f6, f22, rne # perform operation
fsub.s f21, f6, f22, rtz # perform operation
fsub.s f21, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x26, 0xbeb6ae153adc997e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fsub.s f26, f4, f3, dyn # perform operation
fsub.s f26, f4, f3, rdn # perform operation
fsub.s f26, f4, f3, rmm # perform operation
fsub.s f26, f4, f3, rne # perform operation
fsub.s f26, f4, f3, rtz # perform operation
fsub.s f26, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x16, 0xd0b6c8bf30d66e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f16, f11, f10, dyn # perform operation
fsub.s f16, f11, f10, rdn # perform operation
fsub.s f16, f11, f10, rmm # perform operation
fsub.s f16, f11, f10, rne # perform operation
fsub.s f16, f11, f10, rtz # perform operation
fsub.s f16, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x15, 0xc8125a5744e9ff53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fsub.s f15, f20, f31, dyn # perform operation
fsub.s f15, f20, f31, rdn # perform operation
fsub.s f15, f20, f31, rmm # perform operation
fsub.s f15, f20, f31, rne # perform operation
fsub.s f15, f20, f31, rtz # perform operation
fsub.s f15, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x20, 0xbb7d97165e195046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f20, f6, f31, dyn # perform operation
fsub.s f20, f6, f31, rdn # perform operation
fsub.s f20, f6, f31, rmm # perform operation
fsub.s f20, f6, f31, rne # perform operation
fsub.s f20, f6, f31, rtz # perform operation
fsub.s f20, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x31, 0x6482cdd958751f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f31, f21, f10, dyn # perform operation
fsub.s f31, f21, f10, rdn # perform operation
fsub.s f31, f21, f10, rmm # perform operation
fsub.s f31, f21, f10, rne # perform operation
fsub.s f31, f21, f10, rtz # perform operation
fsub.s f31, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x23, 0x0e354b6a61db2053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f23, f17, f2, dyn # perform operation
fsub.s f23, f17, f2, rdn # perform operation
fsub.s f23, f17, f2, rmm # perform operation
fsub.s f23, f17, f2, rne # perform operation
fsub.s f23, f17, f2, rtz # perform operation
fsub.s f23, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x10, 0xa63603f830912c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fsub.s f10, f21, f18, dyn # perform operation
fsub.s f10, f21, f18, rdn # perform operation
fsub.s f10, f21, f18, rmm # perform operation
fsub.s f10, f21, f18, rne # perform operation
fsub.s f10, f21, f18, rtz # perform operation
fsub.s f10, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x16, 0xbc2f0964054e4b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f16, f14, f10, dyn # perform operation
fsub.s f16, f14, f10, rdn # perform operation
fsub.s f16, f14, f10, rmm # perform operation
fsub.s f16, f14, f10, rne # perform operation
fsub.s f16, f14, f10, rtz # perform operation
fsub.s f16, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x5, 0x5f6ee6b3906e462c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f5, f7, f3, dyn # perform operation
fsub.s f5, f7, f3, rdn # perform operation
fsub.s f5, f7, f3, rmm # perform operation
fsub.s f5, f7, f3, rne # perform operation
fsub.s f5, f7, f3, rtz # perform operation
fsub.s f5, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x6, 0x7693fabc1aac283e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f6, f14, f11, dyn # perform operation
fsub.s f6, f14, f11, rdn # perform operation
fsub.s f6, f14, f11, rmm # perform operation
fsub.s f6, f14, f11, rne # perform operation
fsub.s f6, f14, f11, rtz # perform operation
fsub.s f6, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x3, 0xf1e0907e506b8cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f3, f10, f26, dyn # perform operation
fsub.s f3, f10, f26, rdn # perform operation
fsub.s f3, f10, f26, rmm # perform operation
fsub.s f3, f10, f26, rne # perform operation
fsub.s f3, f10, f26, rtz # perform operation
fsub.s f3, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x23, 0xeecdf7dfd949dc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fsub.s f23, f24, f21, dyn # perform operation
fsub.s f23, f24, f21, rdn # perform operation
fsub.s f23, f24, f21, rmm # perform operation
fsub.s f23, f24, f21, rne # perform operation
fsub.s f23, f24, f21, rtz # perform operation
fsub.s f23, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x18, 0x2fcb82d258a9bfb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fsub.s f18, f1, f17, dyn # perform operation
fsub.s f18, f1, f17, rdn # perform operation
fsub.s f18, f1, f17, rmm # perform operation
fsub.s f18, f1, f17, rne # perform operation
fsub.s f18, f1, f17, rtz # perform operation
fsub.s f18, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x5, 0x29d0976f3a00d4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fsub.s f5, f9, f27, dyn # perform operation
fsub.s f5, f9, f27, rdn # perform operation
fsub.s f5, f9, f27, rmm # perform operation
fsub.s f5, f9, f27, rne # perform operation
fsub.s f5, f9, f27, rtz # perform operation
fsub.s f5, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x1, 0x0404844192e103a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f1, f8, f16, dyn # perform operation
fsub.s f1, f8, f16, rdn # perform operation
fsub.s f1, f8, f16, rmm # perform operation
fsub.s f1, f8, f16, rne # perform operation
fsub.s f1, f8, f16, rtz # perform operation
fsub.s f1, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x23, 0x373df5f34fa61308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fsub.s f23, f19, f28, dyn # perform operation
fsub.s f23, f19, f28, rdn # perform operation
fsub.s f23, f19, f28, rmm # perform operation
fsub.s f23, f19, f28, rne # perform operation
fsub.s f23, f19, f28, rtz # perform operation
fsub.s f23, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x31, 0x722c00915db3fd21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fsub.s f31, f27, f14, dyn # perform operation
fsub.s f31, f27, f14, rdn # perform operation
fsub.s f31, f27, f14, rmm # perform operation
fsub.s f31, f27, f14, rne # perform operation
fsub.s f31, f27, f14, rtz # perform operation
fsub.s f31, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x8, 0xc30143d89c46cae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fsub.s f8, f3, f19, dyn # perform operation
fsub.s f8, f3, f19, rdn # perform operation
fsub.s f8, f3, f19, rmm # perform operation
fsub.s f8, f3, f19, rne # perform operation
fsub.s f8, f3, f19, rtz # perform operation
fsub.s f8, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x31, 0x92f35d49c798b6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fsub.s f31, f11, f10, dyn # perform operation
fsub.s f31, f11, f10, rdn # perform operation
fsub.s f31, f11, f10, rmm # perform operation
fsub.s f31, f11, f10, rne # perform operation
fsub.s f31, f11, f10, rtz # perform operation
fsub.s f31, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x19, 0xa9ea85f01944b66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fsub.s f19, f10, f12, dyn # perform operation
fsub.s f19, f10, f12, rdn # perform operation
fsub.s f19, f10, f12, rmm # perform operation
fsub.s f19, f10, f12, rne # perform operation
fsub.s f19, f10, f12, rtz # perform operation
fsub.s f19, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x17, 0x7117cf054711fb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f17, f13, f21, dyn # perform operation
fsub.s f17, f13, f21, rdn # perform operation
fsub.s f17, f13, f21, rmm # perform operation
fsub.s f17, f13, f21, rne # perform operation
fsub.s f17, f13, f21, rtz # perform operation
fsub.s f17, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x17, 0xe893fca9cafd7c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fsub.s f17, f29, f18, dyn # perform operation
fsub.s f17, f29, f18, rdn # perform operation
fsub.s f17, f29, f18, rmm # perform operation
fsub.s f17, f29, f18, rne # perform operation
fsub.s f17, f29, f18, rtz # perform operation
fsub.s f17, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x1, 0x79c10a37ed1a22bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f1, f31, f14, dyn # perform operation
fsub.s f1, f31, f14, rdn # perform operation
fsub.s f1, f31, f14, rmm # perform operation
fsub.s f1, f31, f14, rne # perform operation
fsub.s f1, f31, f14, rtz # perform operation
fsub.s f1, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x16, 0xdb55a813fb58482a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fsub.s f16, f6, f21, dyn # perform operation
fsub.s f16, f6, f21, rdn # perform operation
fsub.s f16, f6, f21, rmm # perform operation
fsub.s f16, f6, f21, rne # perform operation
fsub.s f16, f6, f21, rtz # perform operation
fsub.s f16, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x1, 0x6863a7f6d21999b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fsub.s f1, f15, f16, dyn # perform operation
fsub.s f1, f15, f16, rdn # perform operation
fsub.s f1, f15, f16, rmm # perform operation
fsub.s f1, f15, f16, rne # perform operation
fsub.s f1, f15, f16, rtz # perform operation
fsub.s f1, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x25, 0x49561bc709310717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fsub.s f25, f31, f7, dyn # perform operation
fsub.s f25, f31, f7, rdn # perform operation
fsub.s f25, f31, f7, rmm # perform operation
fsub.s f25, f31, f7, rne # perform operation
fsub.s f25, f31, f7, rtz # perform operation
fsub.s f25, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x24, 0x177854b9917001cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fsub.s f24, f1, f2, dyn # perform operation
fsub.s f24, f1, f2, rdn # perform operation
fsub.s f24, f1, f2, rmm # perform operation
fsub.s f24, f1, f2, rne # perform operation
fsub.s f24, f1, f2, rtz # perform operation
fsub.s f24, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x23, 0x265555c08a361634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f23, f6, f28, dyn # perform operation
fsub.s f23, f6, f28, rdn # perform operation
fsub.s f23, f6, f28, rmm # perform operation
fsub.s f23, f6, f28, rne # perform operation
fsub.s f23, f6, f28, rtz # perform operation
fsub.s f23, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x5, 0xbe5712ada53a05d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fsub.s f5, f17, f7, dyn # perform operation
fsub.s f5, f17, f7, rdn # perform operation
fsub.s f5, f17, f7, rmm # perform operation
fsub.s f5, f17, f7, rne # perform operation
fsub.s f5, f17, f7, rtz # perform operation
fsub.s f5, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x15, 0x8dbb7c977c2b3ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fsub.s f15, f9, f16, dyn # perform operation
fsub.s f15, f9, f16, rdn # perform operation
fsub.s f15, f9, f16, rmm # perform operation
fsub.s f15, f9, f16, rne # perform operation
fsub.s f15, f9, f16, rtz # perform operation
fsub.s f15, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x19, 0xfe6497770cf6fe14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fsub.s f19, f25, f29, dyn # perform operation
fsub.s f19, f25, f29, rdn # perform operation
fsub.s f19, f25, f29, rmm # perform operation
fsub.s f19, f25, f29, rne # perform operation
fsub.s f19, f25, f29, rtz # perform operation
fsub.s f19, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x20, 0x2d80281539293ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fsub.s f20, f24, f10, dyn # perform operation
fsub.s f20, f24, f10, rdn # perform operation
fsub.s f20, f24, f10, rmm # perform operation
fsub.s f20, f24, f10, rne # perform operation
fsub.s f20, f24, f10, rtz # perform operation
fsub.s f20, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x9, 0x5690a73039cd8859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fsub.s f9, f28, f29, dyn # perform operation
fsub.s f9, f28, f29, rdn # perform operation
fsub.s f9, f28, f29, rmm # perform operation
fsub.s f9, f28, f29, rne # perform operation
fsub.s f9, f28, f29, rtz # perform operation
fsub.s f9, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x7, 0x7f481985ad612c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fsub.s f7, f24, f6, dyn # perform operation
fsub.s f7, f24, f6, rdn # perform operation
fsub.s f7, f24, f6, rmm # perform operation
fsub.s f7, f24, f6, rne # perform operation
fsub.s f7, f24, f6, rtz # perform operation
fsub.s f7, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x15, 0xe0d736911458ba20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fsub.s f15, f24, f25, dyn # perform operation
fsub.s f15, f24, f25, rdn # perform operation
fsub.s f15, f24, f25, rmm # perform operation
fsub.s f15, f24, f25, rne # perform operation
fsub.s f15, f24, f25, rtz # perform operation
fsub.s f15, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x26, 0x0a651f2936ee6c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fsub.s f26, f20, f14, dyn # perform operation
fsub.s f26, f20, f14, rdn # perform operation
fsub.s f26, f20, f14, rmm # perform operation
fsub.s f26, f20, f14, rne # perform operation
fsub.s f26, f20, f14, rtz # perform operation
fsub.s f26, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x14, 0x7d4711900998bdc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fsub.s f14, f9, f4, dyn # perform operation
fsub.s f14, f9, f4, rdn # perform operation
fsub.s f14, f9, f4, rmm # perform operation
fsub.s f14, f9, f4, rne # perform operation
fsub.s f14, f9, f4, rtz # perform operation
fsub.s f14, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x31, 0xe8d6f6631e3de21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fsub.s f31, f13, f19, dyn # perform operation
fsub.s f31, f13, f19, rdn # perform operation
fsub.s f31, f13, f19, rmm # perform operation
fsub.s f31, f13, f19, rne # perform operation
fsub.s f31, f13, f19, rtz # perform operation
fsub.s f31, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x29, 0x0063c929fdfc0eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fsub.s f29, f31, f23, dyn # perform operation
fsub.s f29, f31, f23, rdn # perform operation
fsub.s f29, f31, f23, rmm # perform operation
fsub.s f29, f31, f23, rne # perform operation
fsub.s f29, f31, f23, rtz # perform operation
fsub.s f29, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x6, 0x61ad14a5e1a88453 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fsub.s f6, f3, f8, dyn # perform operation
fsub.s f6, f3, f8, rdn # perform operation
fsub.s f6, f3, f8, rmm # perform operation
fsub.s f6, f3, f8, rne # perform operation
fsub.s f6, f3, f8, rtz # perform operation
fsub.s f6, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x6, 0x1bd812674695d262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fsub.s f6, f29, f10, dyn # perform operation
fsub.s f6, f29, f10, rdn # perform operation
fsub.s f6, f29, f10, rmm # perform operation
fsub.s f6, f29, f10, rne # perform operation
fsub.s f6, f29, f10, rtz # perform operation
fsub.s f6, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x12, 0xe3f0d698c992b39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f12, f14, f29, dyn # perform operation
fsub.s f12, f14, f29, rdn # perform operation
fsub.s f12, f14, f29, rmm # perform operation
fsub.s f12, f14, f29, rne # perform operation
fsub.s f12, f14, f29, rtz # perform operation
fsub.s f12, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x4, 0xc8a7e80f61a7fe1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fsub.s f4, f14, f31, dyn # perform operation
fsub.s f4, f14, f31, rdn # perform operation
fsub.s f4, f14, f31, rmm # perform operation
fsub.s f4, f14, f31, rne # perform operation
fsub.s f4, f14, f31, rtz # perform operation
fsub.s f4, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x23, 0x9aadb641d0042aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fsub.s f23, f22, f30, dyn # perform operation
fsub.s f23, f22, f30, rdn # perform operation
fsub.s f23, f22, f30, rmm # perform operation
fsub.s f23, f22, f30, rne # perform operation
fsub.s f23, f22, f30, rtz # perform operation
fsub.s f23, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x24, 0xa0427ab848842267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fsub.s f24, f18, f4, dyn # perform operation
fsub.s f24, f18, f4, rdn # perform operation
fsub.s f24, f18, f4, rmm # perform operation
fsub.s f24, f18, f4, rne # perform operation
fsub.s f24, f18, f4, rtz # perform operation
fsub.s f24, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x5, 0xdc6ba37a03bf4cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f5, f28, f15, dyn # perform operation
fsub.s f5, f28, f15, rdn # perform operation
fsub.s f5, f28, f15, rmm # perform operation
fsub.s f5, f28, f15, rne # perform operation
fsub.s f5, f28, f15, rtz # perform operation
fsub.s f5, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x7, 0x8755d7c7191ca5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fsub.s f7, f14, f26, dyn # perform operation
fsub.s f7, f14, f26, rdn # perform operation
fsub.s f7, f14, f26, rmm # perform operation
fsub.s f7, f14, f26, rne # perform operation
fsub.s f7, f14, f26, rtz # perform operation
fsub.s f7, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x9, 0x839cb6cf71c2bcc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f9, f24, f19, dyn # perform operation
fsub.s f9, f24, f19, rdn # perform operation
fsub.s f9, f24, f19, rmm # perform operation
fsub.s f9, f24, f19, rne # perform operation
fsub.s f9, f24, f19, rtz # perform operation
fsub.s f9, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x16, 0xea47760109ea362a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fsub.s f16, f15, f1, dyn # perform operation
fsub.s f16, f15, f1, rdn # perform operation
fsub.s f16, f15, f1, rmm # perform operation
fsub.s f16, f15, f1, rne # perform operation
fsub.s f16, f15, f1, rtz # perform operation
fsub.s f16, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x29, 0x6febb2083650ca36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsub.s f29, f8, f26, dyn # perform operation
fsub.s f29, f8, f26, rdn # perform operation
fsub.s f29, f8, f26, rmm # perform operation
fsub.s f29, f8, f26, rne # perform operation
fsub.s f29, f8, f26, rtz # perform operation
fsub.s f29, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x29, 0xec5a48fd09d946a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f29, f30, f24, dyn # perform operation
fsub.s f29, f30, f24, rdn # perform operation
fsub.s f29, f30, f24, rmm # perform operation
fsub.s f29, f30, f24, rne # perform operation
fsub.s f29, f30, f24, rtz # perform operation
fsub.s f29, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x31, 0xb7192fd7a6d731ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f31, f22, f6, dyn # perform operation
fsub.s f31, f22, f6, rdn # perform operation
fsub.s f31, f22, f6, rmm # perform operation
fsub.s f31, f22, f6, rne # perform operation
fsub.s f31, f22, f6, rtz # perform operation
fsub.s f31, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x25, 0x584aa4b0ef2d4300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fsub.s f25, f20, f31, dyn # perform operation
fsub.s f25, f20, f31, rdn # perform operation
fsub.s f25, f20, f31, rmm # perform operation
fsub.s f25, f20, f31, rne # perform operation
fsub.s f25, f20, f31, rtz # perform operation
fsub.s f25, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x13, 0x20c71647b58fd771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsub.s f13, f25, f29, dyn # perform operation
fsub.s f13, f25, f29, rdn # perform operation
fsub.s f13, f25, f29, rmm # perform operation
fsub.s f13, f25, f29, rne # perform operation
fsub.s f13, f25, f29, rtz # perform operation
fsub.s f13, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x2, 0x22407ad97e451158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fsub.s f2, f26, f25, dyn # perform operation
fsub.s f2, f26, f25, rdn # perform operation
fsub.s f2, f26, f25, rmm # perform operation
fsub.s f2, f26, f25, rne # perform operation
fsub.s f2, f26, f25, rtz # perform operation
fsub.s f2, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x19, 0x28c4d381a6ee6b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fsub.s f19, f29, f20, dyn # perform operation
fsub.s f19, f29, f20, rdn # perform operation
fsub.s f19, f29, f20, rmm # perform operation
fsub.s f19, f29, f20, rne # perform operation
fsub.s f19, f29, f20, rtz # perform operation
fsub.s f19, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x30, 0x61e1ca04f0a48128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fsub.s f30, f25, f5, dyn # perform operation
fsub.s f30, f25, f5, rdn # perform operation
fsub.s f30, f25, f5, rmm # perform operation
fsub.s f30, f25, f5, rne # perform operation
fsub.s f30, f25, f5, rtz # perform operation
fsub.s f30, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x8, 0x20dc6c08c52f9fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f8, f5, f2, dyn # perform operation
fsub.s f8, f5, f2, rdn # perform operation
fsub.s f8, f5, f2, rmm # perform operation
fsub.s f8, f5, f2, rne # perform operation
fsub.s f8, f5, f2, rtz # perform operation
fsub.s f8, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x15, 0xfea7b50698bc1f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fsub.s f15, f4, f30, dyn # perform operation
fsub.s f15, f4, f30, rdn # perform operation
fsub.s f15, f4, f30, rmm # perform operation
fsub.s f15, f4, f30, rne # perform operation
fsub.s f15, f4, f30, rtz # perform operation
fsub.s f15, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x6, 0xe3471d2fae564374 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f6, f10, f8, dyn # perform operation
fsub.s f6, f10, f8, rdn # perform operation
fsub.s f6, f10, f8, rmm # perform operation
fsub.s f6, f10, f8, rne # perform operation
fsub.s f6, f10, f8, rtz # perform operation
fsub.s f6, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x31, 0x9f6b96f40e22efeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fsub.s f31, f15, f9, dyn # perform operation
fsub.s f31, f15, f9, rdn # perform operation
fsub.s f31, f15, f9, rmm # perform operation
fsub.s f31, f15, f9, rne # perform operation
fsub.s f31, f15, f9, rtz # perform operation
fsub.s f31, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x8, 0x75fcc07a0b7a65cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f8, f6, f9, dyn # perform operation
fsub.s f8, f6, f9, rdn # perform operation
fsub.s f8, f6, f9, rmm # perform operation
fsub.s f8, f6, f9, rne # perform operation
fsub.s f8, f6, f9, rtz # perform operation
fsub.s f8, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x23, 0x0bf655bcd9924232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f23, f6, f3, dyn # perform operation
fsub.s f23, f6, f3, rdn # perform operation
fsub.s f23, f6, f3, rmm # perform operation
fsub.s f23, f6, f3, rne # perform operation
fsub.s f23, f6, f3, rtz # perform operation
fsub.s f23, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x6, 0xc1cb65698551b6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fsub.s f6, f7, f30, dyn # perform operation
fsub.s f6, f7, f30, rdn # perform operation
fsub.s f6, f7, f30, rmm # perform operation
fsub.s f6, f7, f30, rne # perform operation
fsub.s f6, f7, f30, rtz # perform operation
fsub.s f6, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x6, 0x77238315a2d8b975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f6, f12, f20, dyn # perform operation
fsub.s f6, f12, f20, rdn # perform operation
fsub.s f6, f12, f20, rmm # perform operation
fsub.s f6, f12, f20, rne # perform operation
fsub.s f6, f12, f20, rtz # perform operation
fsub.s f6, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x7, 0x856789ee6ebb5886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f7, f3, f6, dyn # perform operation
fsub.s f7, f3, f6, rdn # perform operation
fsub.s f7, f3, f6, rmm # perform operation
fsub.s f7, f3, f6, rne # perform operation
fsub.s f7, f3, f6, rtz # perform operation
fsub.s f7, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x17, 0xb25433c627927122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fsub.s f17, f11, f6, dyn # perform operation
fsub.s f17, f11, f6, rdn # perform operation
fsub.s f17, f11, f6, rmm # perform operation
fsub.s f17, f11, f6, rne # perform operation
fsub.s f17, f11, f6, rtz # perform operation
fsub.s f17, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x5, 0x4d0a093e99d8b9db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fsub.s f5, f14, f17, dyn # perform operation
fsub.s f5, f14, f17, rdn # perform operation
fsub.s f5, f14, f17, rmm # perform operation
fsub.s f5, f14, f17, rne # perform operation
fsub.s f5, f14, f17, rtz # perform operation
fsub.s f5, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x23, 0x892f56952857a713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fsub.s f23, f22, f30, dyn # perform operation
fsub.s f23, f22, f30, rdn # perform operation
fsub.s f23, f22, f30, rmm # perform operation
fsub.s f23, f22, f30, rne # perform operation
fsub.s f23, f22, f30, rtz # perform operation
fsub.s f23, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x11, 0x4ead0218b210d01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f11, f19, f4, dyn # perform operation
fsub.s f11, f19, f4, rdn # perform operation
fsub.s f11, f19, f4, rmm # perform operation
fsub.s f11, f19, f4, rne # perform operation
fsub.s f11, f19, f4, rtz # perform operation
fsub.s f11, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x1, 0x946b10f753ba6849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fsub.s f1, f4, f18, dyn # perform operation
fsub.s f1, f4, f18, rdn # perform operation
fsub.s f1, f4, f18, rmm # perform operation
fsub.s f1, f4, f18, rne # perform operation
fsub.s f1, f4, f18, rtz # perform operation
fsub.s f1, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x1, 0xa02e146df52b627d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f1, f21, f22, dyn # perform operation
fsub.s f1, f21, f22, rdn # perform operation
fsub.s f1, f21, f22, rmm # perform operation
fsub.s f1, f21, f22, rne # perform operation
fsub.s f1, f21, f22, rtz # perform operation
fsub.s f1, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x3, 0x5570a04c880404f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fsub.s f3, f26, f22, dyn # perform operation
fsub.s f3, f26, f22, rdn # perform operation
fsub.s f3, f26, f22, rmm # perform operation
fsub.s f3, f26, f22, rne # perform operation
fsub.s f3, f26, f22, rtz # perform operation
fsub.s f3, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x30, 0x9738f2358d1f6012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fsub.s f30, f11, f7, dyn # perform operation
fsub.s f30, f11, f7, rdn # perform operation
fsub.s f30, f11, f7, rmm # perform operation
fsub.s f30, f11, f7, rne # perform operation
fsub.s f30, f11, f7, rtz # perform operation
fsub.s f30, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x4, 0xc9f4a09ea4d0733b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fsub.s f4, f3, f18, dyn # perform operation
fsub.s f4, f3, f18, rdn # perform operation
fsub.s f4, f3, f18, rmm # perform operation
fsub.s f4, f3, f18, rne # perform operation
fsub.s f4, f3, f18, rtz # perform operation
fsub.s f4, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x5, 0xa1c60baaea8be930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fsub.s f5, f23, f16, dyn # perform operation
fsub.s f5, f23, f16, rdn # perform operation
fsub.s f5, f23, f16, rmm # perform operation
fsub.s f5, f23, f16, rne # perform operation
fsub.s f5, f23, f16, rtz # perform operation
fsub.s f5, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x4, 0xa7a01975751ee16b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fsub.s f4, f27, f18, dyn # perform operation
fsub.s f4, f27, f18, rdn # perform operation
fsub.s f4, f27, f18, rmm # perform operation
fsub.s f4, f27, f18, rne # perform operation
fsub.s f4, f27, f18, rtz # perform operation
fsub.s f4, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x26, 0x8315db63d65e0dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fsub.s f26, f17, f23, dyn # perform operation
fsub.s f26, f17, f23, rdn # perform operation
fsub.s f26, f17, f23, rmm # perform operation
fsub.s f26, f17, f23, rne # perform operation
fsub.s f26, f17, f23, rtz # perform operation
fsub.s f26, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x24, 0xe374e60f6061d63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f24, f15, f29, dyn # perform operation
fsub.s f24, f15, f29, rdn # perform operation
fsub.s f24, f15, f29, rmm # perform operation
fsub.s f24, f15, f29, rne # perform operation
fsub.s f24, f15, f29, rtz # perform operation
fsub.s f24, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x31, 0xdf97c5907bca29e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fsub.s f31, f3, f5, dyn # perform operation
fsub.s f31, f3, f5, rdn # perform operation
fsub.s f31, f3, f5, rmm # perform operation
fsub.s f31, f3, f5, rne # perform operation
fsub.s f31, f3, f5, rtz # perform operation
fsub.s f31, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x22, 0x8afcfb7fcc71a6b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fsub.s f22, f31, f6, dyn # perform operation
fsub.s f22, f31, f6, rdn # perform operation
fsub.s f22, f31, f6, rmm # perform operation
fsub.s f22, f31, f6, rne # perform operation
fsub.s f22, f31, f6, rtz # perform operation
fsub.s f22, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x25, 0x44bedffb6a5b35d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fsub.s f25, f29, f5, dyn # perform operation
fsub.s f25, f29, f5, rdn # perform operation
fsub.s f25, f29, f5, rmm # perform operation
fsub.s f25, f29, f5, rne # perform operation
fsub.s f25, f29, f5, rtz # perform operation
fsub.s f25, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x3, 0x57815df61f578e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fsub.s f3, f21, f14, dyn # perform operation
fsub.s f3, f21, f14, rdn # perform operation
fsub.s f3, f21, f14, rmm # perform operation
fsub.s f3, f21, f14, rne # perform operation
fsub.s f3, f21, f14, rtz # perform operation
fsub.s f3, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x13, 0x81f410d3ccdcc9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f13, f31, f27, dyn # perform operation
fsub.s f13, f31, f27, rdn # perform operation
fsub.s f13, f31, f27, rmm # perform operation
fsub.s f13, f31, f27, rne # perform operation
fsub.s f13, f31, f27, rtz # perform operation
fsub.s f13, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x9, 0x0b3e60612e94fbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fsub.s f9, f2, f15, dyn # perform operation
fsub.s f9, f2, f15, rdn # perform operation
fsub.s f9, f2, f15, rmm # perform operation
fsub.s f9, f2, f15, rne # perform operation
fsub.s f9, f2, f15, rtz # perform operation
fsub.s f9, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x26, 0xd9d63d00c7cc6739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fsub.s f26, f28, f13, dyn # perform operation
fsub.s f26, f28, f13, rdn # perform operation
fsub.s f26, f28, f13, rmm # perform operation
fsub.s f26, f28, f13, rne # perform operation
fsub.s f26, f28, f13, rtz # perform operation
fsub.s f26, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x3, 0x3e3ae2abe060207e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fsub.s f3, f12, f6, dyn # perform operation
fsub.s f3, f12, f6, rdn # perform operation
fsub.s f3, f12, f6, rmm # perform operation
fsub.s f3, f12, f6, rne # perform operation
fsub.s f3, f12, f6, rtz # perform operation
fsub.s f3, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x28, 0xa1c81c0fb05abbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f28, f23, f11, dyn # perform operation
fsub.s f28, f23, f11, rdn # perform operation
fsub.s f28, f23, f11, rmm # perform operation
fsub.s f28, f23, f11, rne # perform operation
fsub.s f28, f23, f11, rtz # perform operation
fsub.s f28, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x26, 0x2da6c23a76991c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fsub.s f26, f10, f13, dyn # perform operation
fsub.s f26, f10, f13, rdn # perform operation
fsub.s f26, f10, f13, rmm # perform operation
fsub.s f26, f10, f13, rne # perform operation
fsub.s f26, f10, f13, rtz # perform operation
fsub.s f26, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x21, 0x6263da1556a83aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsub.s f21, f16, f29, dyn # perform operation
fsub.s f21, f16, f29, rdn # perform operation
fsub.s f21, f16, f29, rmm # perform operation
fsub.s f21, f16, f29, rne # perform operation
fsub.s f21, f16, f29, rtz # perform operation
fsub.s f21, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x27, 0x387477a70c79911a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsub.s f27, f2, f31, dyn # perform operation
fsub.s f27, f2, f31, rdn # perform operation
fsub.s f27, f2, f31, rmm # perform operation
fsub.s f27, f2, f31, rne # perform operation
fsub.s f27, f2, f31, rtz # perform operation
fsub.s f27, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x4, 0x667574128cc73868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fsub.s f4, f21, f5, dyn # perform operation
fsub.s f4, f21, f5, rdn # perform operation
fsub.s f4, f21, f5, rmm # perform operation
fsub.s f4, f21, f5, rne # perform operation
fsub.s f4, f21, f5, rtz # perform operation
fsub.s f4, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x6, 0xde125d818d4decc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f6, f12, f13, dyn # perform operation
fsub.s f6, f12, f13, rdn # perform operation
fsub.s f6, f12, f13, rmm # perform operation
fsub.s f6, f12, f13, rne # perform operation
fsub.s f6, f12, f13, rtz # perform operation
fsub.s f6, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x27, 0x392b7c779670e4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fsub.s f27, f11, f23, dyn # perform operation
fsub.s f27, f11, f23, rdn # perform operation
fsub.s f27, f11, f23, rmm # perform operation
fsub.s f27, f11, f23, rne # perform operation
fsub.s f27, f11, f23, rtz # perform operation
fsub.s f27, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x17, 0x0308430bf60fc507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f17, f7, f2, dyn # perform operation
fsub.s f17, f7, f2, rdn # perform operation
fsub.s f17, f7, f2, rmm # perform operation
fsub.s f17, f7, f2, rne # perform operation
fsub.s f17, f7, f2, rtz # perform operation
fsub.s f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x13, 0x5e752f33408423bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f13, f1, f15, dyn # perform operation
fsub.s f13, f1, f15, rdn # perform operation
fsub.s f13, f1, f15, rmm # perform operation
fsub.s f13, f1, f15, rne # perform operation
fsub.s f13, f1, f15, rtz # perform operation
fsub.s f13, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x9, 0xf8d63218b434e53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fsub.s f9, f23, f19, dyn # perform operation
fsub.s f9, f23, f19, rdn # perform operation
fsub.s f9, f23, f19, rmm # perform operation
fsub.s f9, f23, f19, rne # perform operation
fsub.s f9, f23, f19, rtz # perform operation
fsub.s f9, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x11, 0xc20f87d1df3f2b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fsub.s f11, f17, f1, dyn # perform operation
fsub.s f11, f17, f1, rdn # perform operation
fsub.s f11, f17, f1, rmm # perform operation
fsub.s f11, f17, f1, rne # perform operation
fsub.s f11, f17, f1, rtz # perform operation
fsub.s f11, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x1, 0xbe5108db8c9c3bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f1, f30, f13, dyn # perform operation
fsub.s f1, f30, f13, rdn # perform operation
fsub.s f1, f30, f13, rmm # perform operation
fsub.s f1, f30, f13, rne # perform operation
fsub.s f1, f30, f13, rtz # perform operation
fsub.s f1, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x25, 0x1f603d723ae8af9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f25, f22, f13, dyn # perform operation
fsub.s f25, f22, f13, rdn # perform operation
fsub.s f25, f22, f13, rmm # perform operation
fsub.s f25, f22, f13, rne # perform operation
fsub.s f25, f22, f13, rtz # perform operation
fsub.s f25, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x16, 0x3e31244c9c858805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fsub.s f16, f31, f9, dyn # perform operation
fsub.s f16, f31, f9, rdn # perform operation
fsub.s f16, f31, f9, rmm # perform operation
fsub.s f16, f31, f9, rne # perform operation
fsub.s f16, f31, f9, rtz # perform operation
fsub.s f16, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x9, 0xa7232126c311cb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fsub.s f9, f24, f6, dyn # perform operation
fsub.s f9, f24, f6, rdn # perform operation
fsub.s f9, f24, f6, rmm # perform operation
fsub.s f9, f24, f6, rne # perform operation
fsub.s f9, f24, f6, rtz # perform operation
fsub.s f9, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x8, 0x7509e29430501611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f8, f3, f1, dyn # perform operation
fsub.s f8, f3, f1, rdn # perform operation
fsub.s f8, f3, f1, rmm # perform operation
fsub.s f8, f3, f1, rne # perform operation
fsub.s f8, f3, f1, rtz # perform operation
fsub.s f8, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x13, 0x6803f1c8fab9d04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f13, f31, f6, dyn # perform operation
fsub.s f13, f31, f6, rdn # perform operation
fsub.s f13, f31, f6, rmm # perform operation
fsub.s f13, f31, f6, rne # perform operation
fsub.s f13, f31, f6, rtz # perform operation
fsub.s f13, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x4, 0xf2da5eb84792b60a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f4, f16, f14, dyn # perform operation
fsub.s f4, f16, f14, rdn # perform operation
fsub.s f4, f16, f14, rmm # perform operation
fsub.s f4, f16, f14, rne # perform operation
fsub.s f4, f16, f14, rtz # perform operation
fsub.s f4, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x8, 0xfdada12d89b50526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f8, f13, f18, dyn # perform operation
fsub.s f8, f13, f18, rdn # perform operation
fsub.s f8, f13, f18, rmm # perform operation
fsub.s f8, f13, f18, rne # perform operation
fsub.s f8, f13, f18, rtz # perform operation
fsub.s f8, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x7, 0xae6bc12ef7d018e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fsub.s f7, f9, f8, dyn # perform operation
fsub.s f7, f9, f8, rdn # perform operation
fsub.s f7, f9, f8, rmm # perform operation
fsub.s f7, f9, f8, rne # perform operation
fsub.s f7, f9, f8, rtz # perform operation
fsub.s f7, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x2, 0x518c6eb361fffd90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fsub.s f2, f3, f25, dyn # perform operation
fsub.s f2, f3, f25, rdn # perform operation
fsub.s f2, f3, f25, rmm # perform operation
fsub.s f2, f3, f25, rne # perform operation
fsub.s f2, f3, f25, rtz # perform operation
fsub.s f2, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x20, 0xdbd7d7d53080bc78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f20, f8, f7, dyn # perform operation
fsub.s f20, f8, f7, rdn # perform operation
fsub.s f20, f8, f7, rmm # perform operation
fsub.s f20, f8, f7, rne # perform operation
fsub.s f20, f8, f7, rtz # perform operation
fsub.s f20, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x23, 0x1c5c979f30fdecb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fsub.s f23, f24, f18, dyn # perform operation
fsub.s f23, f24, f18, rdn # perform operation
fsub.s f23, f24, f18, rmm # perform operation
fsub.s f23, f24, f18, rne # perform operation
fsub.s f23, f24, f18, rtz # perform operation
fsub.s f23, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x23, 0xdc3d3e24935665b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f23, f2, f14, dyn # perform operation
fsub.s f23, f2, f14, rdn # perform operation
fsub.s f23, f2, f14, rmm # perform operation
fsub.s f23, f2, f14, rne # perform operation
fsub.s f23, f2, f14, rtz # perform operation
fsub.s f23, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x28, 0x6ea33dccb5bce142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fsub.s f28, f16, f22, dyn # perform operation
fsub.s f28, f16, f22, rdn # perform operation
fsub.s f28, f16, f22, rmm # perform operation
fsub.s f28, f16, f22, rne # perform operation
fsub.s f28, f16, f22, rtz # perform operation
fsub.s f28, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x5, 0xcf09f9e7f5bb9902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f5, f7, f3, dyn # perform operation
fsub.s f5, f7, f3, rdn # perform operation
fsub.s f5, f7, f3, rmm # perform operation
fsub.s f5, f7, f3, rne # perform operation
fsub.s f5, f7, f3, rtz # perform operation
fsub.s f5, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x7, 0xf360d3527e8a1eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f7, f30, f9, dyn # perform operation
fsub.s f7, f30, f9, rdn # perform operation
fsub.s f7, f30, f9, rmm # perform operation
fsub.s f7, f30, f9, rne # perform operation
fsub.s f7, f30, f9, rtz # perform operation
fsub.s f7, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x30, 0x48ae4035a5fe2dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f30, f4, f11, dyn # perform operation
fsub.s f30, f4, f11, rdn # perform operation
fsub.s f30, f4, f11, rmm # perform operation
fsub.s f30, f4, f11, rne # perform operation
fsub.s f30, f4, f11, rtz # perform operation
fsub.s f30, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x9, 0xffc681ccd279d3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fsub.s f9, f5, f8, dyn # perform operation
fsub.s f9, f5, f8, rdn # perform operation
fsub.s f9, f5, f8, rmm # perform operation
fsub.s f9, f5, f8, rne # perform operation
fsub.s f9, f5, f8, rtz # perform operation
fsub.s f9, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x15, 0x7f6fb05300396f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fsub.s f15, f4, f2, dyn # perform operation
fsub.s f15, f4, f2, rdn # perform operation
fsub.s f15, f4, f2, rmm # perform operation
fsub.s f15, f4, f2, rne # perform operation
fsub.s f15, f4, f2, rtz # perform operation
fsub.s f15, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x6, 0xcf4f381baa87129f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f6, f24, f3, dyn # perform operation
fsub.s f6, f24, f3, rdn # perform operation
fsub.s f6, f24, f3, rmm # perform operation
fsub.s f6, f24, f3, rne # perform operation
fsub.s f6, f24, f3, rtz # perform operation
fsub.s f6, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x7, 0xc43e2971810a566e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f7, f17, f2, dyn # perform operation
fsub.s f7, f17, f2, rdn # perform operation
fsub.s f7, f17, f2, rmm # perform operation
fsub.s f7, f17, f2, rne # perform operation
fsub.s f7, f17, f2, rtz # perform operation
fsub.s f7, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x25, 0xd76e17fd3d57c4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f25, f20, f29, dyn # perform operation
fsub.s f25, f20, f29, rdn # perform operation
fsub.s f25, f20, f29, rmm # perform operation
fsub.s f25, f20, f29, rne # perform operation
fsub.s f25, f20, f29, rtz # perform operation
fsub.s f25, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x11, 0xc705795e12f662e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fsub.s f11, f30, f7, dyn # perform operation
fsub.s f11, f30, f7, rdn # perform operation
fsub.s f11, f30, f7, rmm # perform operation
fsub.s f11, f30, f7, rne # perform operation
fsub.s f11, f30, f7, rtz # perform operation
fsub.s f11, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x6, 0x1fa05316675621a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fsub.s f6, f10, f27, dyn # perform operation
fsub.s f6, f10, f27, rdn # perform operation
fsub.s f6, f10, f27, rmm # perform operation
fsub.s f6, f10, f27, rne # perform operation
fsub.s f6, f10, f27, rtz # perform operation
fsub.s f6, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x29, 0x0e75c10ec10e41b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fsub.s f29, f25, f6, dyn # perform operation
fsub.s f29, f25, f6, rdn # perform operation
fsub.s f29, f25, f6, rmm # perform operation
fsub.s f29, f25, f6, rne # perform operation
fsub.s f29, f25, f6, rtz # perform operation
fsub.s f29, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x1, 0x7440b264e7ef0f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fsub.s f1, f8, f28, dyn # perform operation
fsub.s f1, f8, f28, rdn # perform operation
fsub.s f1, f8, f28, rmm # perform operation
fsub.s f1, f8, f28, rne # perform operation
fsub.s f1, f8, f28, rtz # perform operation
fsub.s f1, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x1, 0xef56533f88a57e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fsub.s f1, f31, f25, dyn # perform operation
fsub.s f1, f31, f25, rdn # perform operation
fsub.s f1, f31, f25, rmm # perform operation
fsub.s f1, f31, f25, rne # perform operation
fsub.s f1, f31, f25, rtz # perform operation
fsub.s f1, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x8, 0x5a2f72fc77f191b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsub.s f8, f16, f22, dyn # perform operation
fsub.s f8, f16, f22, rdn # perform operation
fsub.s f8, f16, f22, rmm # perform operation
fsub.s f8, f16, f22, rne # perform operation
fsub.s f8, f16, f22, rtz # perform operation
fsub.s f8, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x22, 0x25a229763ddc2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fsub.s f22, f4, f30, dyn # perform operation
fsub.s f22, f4, f30, rdn # perform operation
fsub.s f22, f4, f30, rmm # perform operation
fsub.s f22, f4, f30, rne # perform operation
fsub.s f22, f4, f30, rtz # perform operation
fsub.s f22, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x3, 0x890b3e26665f7fea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fsub.s f3, f6, f5, dyn # perform operation
fsub.s f3, f6, f5, rdn # perform operation
fsub.s f3, f6, f5, rmm # perform operation
fsub.s f3, f6, f5, rne # perform operation
fsub.s f3, f6, f5, rtz # perform operation
fsub.s f3, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x11, 0x7020f803b5adecb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f11, f4, f30, dyn # perform operation
fsub.s f11, f4, f30, rdn # perform operation
fsub.s f11, f4, f30, rmm # perform operation
fsub.s f11, f4, f30, rne # perform operation
fsub.s f11, f4, f30, rtz # perform operation
fsub.s f11, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x5, 0xfd5fd116d1d3bb2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fsub.s f5, f9, f10, dyn # perform operation
fsub.s f5, f9, f10, rdn # perform operation
fsub.s f5, f9, f10, rmm # perform operation
fsub.s f5, f9, f10, rne # perform operation
fsub.s f5, f9, f10, rtz # perform operation
fsub.s f5, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x1, 0xa9ec5ee92ed0f9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fsub.s f1, f2, f21, dyn # perform operation
fsub.s f1, f2, f21, rdn # perform operation
fsub.s f1, f2, f21, rmm # perform operation
fsub.s f1, f2, f21, rne # perform operation
fsub.s f1, f2, f21, rtz # perform operation
fsub.s f1, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x24, 0xfbb43ee9b128e1af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fsub.s f24, f31, f13, dyn # perform operation
fsub.s f24, f31, f13, rdn # perform operation
fsub.s f24, f31, f13, rmm # perform operation
fsub.s f24, f31, f13, rne # perform operation
fsub.s f24, f31, f13, rtz # perform operation
fsub.s f24, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x27, 0x5651a70fa62544a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fsub.s f27, f19, f4, dyn # perform operation
fsub.s f27, f19, f4, rdn # perform operation
fsub.s f27, f19, f4, rmm # perform operation
fsub.s f27, f19, f4, rne # perform operation
fsub.s f27, f19, f4, rtz # perform operation
fsub.s f27, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x29, 0x2fa53d019b2cc49a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fsub.s f29, f9, f14, dyn # perform operation
fsub.s f29, f9, f14, rdn # perform operation
fsub.s f29, f9, f14, rmm # perform operation
fsub.s f29, f9, f14, rne # perform operation
fsub.s f29, f9, f14, rtz # perform operation
fsub.s f29, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x12, 0x9fdedbe12da33f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f12, f28, f31, dyn # perform operation
fsub.s f12, f28, f31, rdn # perform operation
fsub.s f12, f28, f31, rmm # perform operation
fsub.s f12, f28, f31, rne # perform operation
fsub.s f12, f28, f31, rtz # perform operation
fsub.s f12, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x3, 0xa91da3a5107297bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsub.s f3, f21, f12, dyn # perform operation
fsub.s f3, f21, f12, rdn # perform operation
fsub.s f3, f21, f12, rmm # perform operation
fsub.s f3, f21, f12, rne # perform operation
fsub.s f3, f21, f12, rtz # perform operation
fsub.s f3, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x14, 0xdfd5f1674d447e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f14, f22, f13, dyn # perform operation
fsub.s f14, f22, f13, rdn # perform operation
fsub.s f14, f22, f13, rmm # perform operation
fsub.s f14, f22, f13, rne # perform operation
fsub.s f14, f22, f13, rtz # perform operation
fsub.s f14, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x27, 0xbb37c96cf5d3a260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fsub.s f27, f6, f4, dyn # perform operation
fsub.s f27, f6, f4, rdn # perform operation
fsub.s f27, f6, f4, rmm # perform operation
fsub.s f27, f6, f4, rne # perform operation
fsub.s f27, f6, f4, rtz # perform operation
fsub.s f27, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x15, 0x6f2940556db7ba00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsub.s f15, f5, f10, dyn # perform operation
fsub.s f15, f5, f10, rdn # perform operation
fsub.s f15, f5, f10, rmm # perform operation
fsub.s f15, f5, f10, rne # perform operation
fsub.s f15, f5, f10, rtz # perform operation
fsub.s f15, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x10, 0xc6e5a37840b1ee74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsub.s f10, f8, f2, dyn # perform operation
fsub.s f10, f8, f2, rdn # perform operation
fsub.s f10, f8, f2, rmm # perform operation
fsub.s f10, f8, f2, rne # perform operation
fsub.s f10, f8, f2, rtz # perform operation
fsub.s f10, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x11, 0xf44ae28d1686fb11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fsub.s f11, f21, f17, dyn # perform operation
fsub.s f11, f21, f17, rdn # perform operation
fsub.s f11, f21, f17, rmm # perform operation
fsub.s f11, f21, f17, rne # perform operation
fsub.s f11, f21, f17, rtz # perform operation
fsub.s f11, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x2, 0x6697195d30181cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fsub.s f2, f13, f8, dyn # perform operation
fsub.s f2, f13, f8, rdn # perform operation
fsub.s f2, f13, f8, rmm # perform operation
fsub.s f2, f13, f8, rne # perform operation
fsub.s f2, f13, f8, rtz # perform operation
fsub.s f2, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x4, 0xbe8fb342f4a0b081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fsub.s f4, f8, f29, dyn # perform operation
fsub.s f4, f8, f29, rdn # perform operation
fsub.s f4, f8, f29, rmm # perform operation
fsub.s f4, f8, f29, rne # perform operation
fsub.s f4, f8, f29, rtz # perform operation
fsub.s f4, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x18, 0xede02d932071a971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsub.s f18, f2, f30, dyn # perform operation
fsub.s f18, f2, f30, rdn # perform operation
fsub.s f18, f2, f30, rmm # perform operation
fsub.s f18, f2, f30, rne # perform operation
fsub.s f18, f2, f30, rtz # perform operation
fsub.s f18, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x4, 0x18fc1fb97612f28a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f4, f3, f16, dyn # perform operation
fsub.s f4, f3, f16, rdn # perform operation
fsub.s f4, f3, f16, rmm # perform operation
fsub.s f4, f3, f16, rne # perform operation
fsub.s f4, f3, f16, rtz # perform operation
fsub.s f4, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x16, 0xae9438dc3b17a363 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fsub.s f16, f25, f5, dyn # perform operation
fsub.s f16, f25, f5, rdn # perform operation
fsub.s f16, f25, f5, rmm # perform operation
fsub.s f16, f25, f5, rne # perform operation
fsub.s f16, f25, f5, rtz # perform operation
fsub.s f16, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x19, 0xb3953a1abddac809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fsub.s f19, f12, f10, dyn # perform operation
fsub.s f19, f12, f10, rdn # perform operation
fsub.s f19, f12, f10, rmm # perform operation
fsub.s f19, f12, f10, rne # perform operation
fsub.s f19, f12, f10, rtz # perform operation
fsub.s f19, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x7, 0xaeb92f8d9fe1ab30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fsub.s f7, f4, f18, dyn # perform operation
fsub.s f7, f4, f18, rdn # perform operation
fsub.s f7, f4, f18, rmm # perform operation
fsub.s f7, f4, f18, rne # perform operation
fsub.s f7, f4, f18, rtz # perform operation
fsub.s f7, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x11, 0x1b7d1651cd564db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fsub.s f11, f13, f4, dyn # perform operation
fsub.s f11, f13, f4, rdn # perform operation
fsub.s f11, f13, f4, rmm # perform operation
fsub.s f11, f13, f4, rne # perform operation
fsub.s f11, f13, f4, rtz # perform operation
fsub.s f11, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x2, 0xa1cd5650fe63bffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fsub.s f2, f4, f11, dyn # perform operation
fsub.s f2, f4, f11, rdn # perform operation
fsub.s f2, f4, f11, rmm # perform operation
fsub.s f2, f4, f11, rne # perform operation
fsub.s f2, f4, f11, rtz # perform operation
fsub.s f2, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x7, 0xb3fccdd68795542c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f7, f21, f13, dyn # perform operation
fsub.s f7, f21, f13, rdn # perform operation
fsub.s f7, f21, f13, rmm # perform operation
fsub.s f7, f21, f13, rne # perform operation
fsub.s f7, f21, f13, rtz # perform operation
fsub.s f7, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x14, 0x41c444248737a96e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fsub.s f14, f31, f15, dyn # perform operation
fsub.s f14, f31, f15, rdn # perform operation
fsub.s f14, f31, f15, rmm # perform operation
fsub.s f14, f31, f15, rne # perform operation
fsub.s f14, f31, f15, rtz # perform operation
fsub.s f14, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x18, 0x381ca5df9288df33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsub.s f18, f8, f3, dyn # perform operation
fsub.s f18, f8, f3, rdn # perform operation
fsub.s f18, f8, f3, rmm # perform operation
fsub.s f18, f8, f3, rne # perform operation
fsub.s f18, f8, f3, rtz # perform operation
fsub.s f18, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x7, 0x95215e2ef6ef1ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fsub.s f7, f18, f23, dyn # perform operation
fsub.s f7, f18, f23, rdn # perform operation
fsub.s f7, f18, f23, rmm # perform operation
fsub.s f7, f18, f23, rne # perform operation
fsub.s f7, f18, f23, rtz # perform operation
fsub.s f7, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x22, 0x205c5aa2813cbb5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fsub.s f22, f15, f16, dyn # perform operation
fsub.s f22, f15, f16, rdn # perform operation
fsub.s f22, f15, f16, rmm # perform operation
fsub.s f22, f15, f16, rne # perform operation
fsub.s f22, f15, f16, rtz # perform operation
fsub.s f22, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x2, 0xe0627fd7445f7eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f2, f19, f9, dyn # perform operation
fsub.s f2, f19, f9, rdn # perform operation
fsub.s f2, f19, f9, rmm # perform operation
fsub.s f2, f19, f9, rne # perform operation
fsub.s f2, f19, f9, rtz # perform operation
fsub.s f2, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x24, 0x3a996d1f7b77906f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fsub.s f24, f20, f5, dyn # perform operation
fsub.s f24, f20, f5, rdn # perform operation
fsub.s f24, f20, f5, rmm # perform operation
fsub.s f24, f20, f5, rne # perform operation
fsub.s f24, f20, f5, rtz # perform operation
fsub.s f24, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x9, 0xe8c7242ae4b0477a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fsub.s f9, f5, f27, dyn # perform operation
fsub.s f9, f5, f27, rdn # perform operation
fsub.s f9, f5, f27, rmm # perform operation
fsub.s f9, f5, f27, rne # perform operation
fsub.s f9, f5, f27, rtz # perform operation
fsub.s f9, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x29, 0x80e8b0056d1eef80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fsub.s f29, f24, f19, dyn # perform operation
fsub.s f29, f24, f19, rdn # perform operation
fsub.s f29, f24, f19, rmm # perform operation
fsub.s f29, f24, f19, rne # perform operation
fsub.s f29, f24, f19, rtz # perform operation
fsub.s f29, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x13, 0xab0203dbdb596f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fsub.s f13, f30, f26, dyn # perform operation
fsub.s f13, f30, f26, rdn # perform operation
fsub.s f13, f30, f26, rmm # perform operation
fsub.s f13, f30, f26, rne # perform operation
fsub.s f13, f30, f26, rtz # perform operation
fsub.s f13, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x10, 0x4b3bfba249db2a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fsub.s f10, f1, f6, dyn # perform operation
fsub.s f10, f1, f6, rdn # perform operation
fsub.s f10, f1, f6, rmm # perform operation
fsub.s f10, f1, f6, rne # perform operation
fsub.s f10, f1, f6, rtz # perform operation
fsub.s f10, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x9, 0x1bca0849309b63e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fsub.s f9, f11, f15, dyn # perform operation
fsub.s f9, f11, f15, rdn # perform operation
fsub.s f9, f11, f15, rmm # perform operation
fsub.s f9, f11, f15, rne # perform operation
fsub.s f9, f11, f15, rtz # perform operation
fsub.s f9, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x9, 0x226c7ea144f92e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fsub.s f9, f24, f29, dyn # perform operation
fsub.s f9, f24, f29, rdn # perform operation
fsub.s f9, f24, f29, rmm # perform operation
fsub.s f9, f24, f29, rne # perform operation
fsub.s f9, f24, f29, rtz # perform operation
fsub.s f9, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x27, 0x85b0d9f7b1a3aa5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f27, f13, f10, dyn # perform operation
fsub.s f27, f13, f10, rdn # perform operation
fsub.s f27, f13, f10, rmm # perform operation
fsub.s f27, f13, f10, rne # perform operation
fsub.s f27, f13, f10, rtz # perform operation
fsub.s f27, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x16, 0xea7764810bd967ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fsub.s f16, f14, f22, dyn # perform operation
fsub.s f16, f14, f22, rdn # perform operation
fsub.s f16, f14, f22, rmm # perform operation
fsub.s f16, f14, f22, rne # perform operation
fsub.s f16, f14, f22, rtz # perform operation
fsub.s f16, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x8, 0x5b39df64d0f6c9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f8, f15, f3, dyn # perform operation
fsub.s f8, f15, f3, rdn # perform operation
fsub.s f8, f15, f3, rmm # perform operation
fsub.s f8, f15, f3, rne # perform operation
fsub.s f8, f15, f3, rtz # perform operation
fsub.s f8, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x23, 0x9c6f429f1592b86b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fsub.s f23, f4, f9, dyn # perform operation
fsub.s f23, f4, f9, rdn # perform operation
fsub.s f23, f4, f9, rmm # perform operation
fsub.s f23, f4, f9, rne # perform operation
fsub.s f23, f4, f9, rtz # perform operation
fsub.s f23, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x5, 0x1f1224d6e2ba19c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fsub.s f5, f13, f19, dyn # perform operation
fsub.s f5, f13, f19, rdn # perform operation
fsub.s f5, f13, f19, rmm # perform operation
fsub.s f5, f13, f19, rne # perform operation
fsub.s f5, f13, f19, rtz # perform operation
fsub.s f5, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x7, 0xf221c037c094cd9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fsub.s f7, f25, f4, dyn # perform operation
fsub.s f7, f25, f4, rdn # perform operation
fsub.s f7, f25, f4, rmm # perform operation
fsub.s f7, f25, f4, rne # perform operation
fsub.s f7, f25, f4, rtz # perform operation
fsub.s f7, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x31, 0x0c8025b754176418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fsub.s f31, f28, f10, dyn # perform operation
fsub.s f31, f28, f10, rdn # perform operation
fsub.s f31, f28, f10, rmm # perform operation
fsub.s f31, f28, f10, rne # perform operation
fsub.s f31, f28, f10, rtz # perform operation
fsub.s f31, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x26, 0x5a41254ca7989256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fsub.s f26, f15, f4, dyn # perform operation
fsub.s f26, f15, f4, rdn # perform operation
fsub.s f26, f15, f4, rmm # perform operation
fsub.s f26, f15, f4, rne # perform operation
fsub.s f26, f15, f4, rtz # perform operation
fsub.s f26, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x24, 0x13109500110f25fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fsub.s f24, f26, f1, dyn # perform operation
fsub.s f24, f26, f1, rdn # perform operation
fsub.s f24, f26, f1, rmm # perform operation
fsub.s f24, f26, f1, rne # perform operation
fsub.s f24, f26, f1, rtz # perform operation
fsub.s f24, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x30, 0xc0207a6ebc270515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsub.s f30, f10, f15, dyn # perform operation
fsub.s f30, f10, f15, rdn # perform operation
fsub.s f30, f10, f15, rmm # perform operation
fsub.s f30, f10, f15, rne # perform operation
fsub.s f30, f10, f15, rtz # perform operation
fsub.s f30, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x9, 0xffbc08561cc08f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fsub.s f9, f29, f25, dyn # perform operation
fsub.s f9, f29, f25, rdn # perform operation
fsub.s f9, f29, f25, rmm # perform operation
fsub.s f9, f29, f25, rne # perform operation
fsub.s f9, f29, f25, rtz # perform operation
fsub.s f9, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x18, 0x585e259c45608378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fsub.s f18, f17, f3, dyn # perform operation
fsub.s f18, f17, f3, rdn # perform operation
fsub.s f18, f17, f3, rmm # perform operation
fsub.s f18, f17, f3, rne # perform operation
fsub.s f18, f17, f3, rtz # perform operation
fsub.s f18, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x7, 0x77aa10c55ae8680b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fsub.s f7, f23, f13, dyn # perform operation
fsub.s f7, f23, f13, rdn # perform operation
fsub.s f7, f23, f13, rmm # perform operation
fsub.s f7, f23, f13, rne # perform operation
fsub.s f7, f23, f13, rtz # perform operation
fsub.s f7, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x16, 0x0aa832ac53874acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fsub.s f16, f31, f12, dyn # perform operation
fsub.s f16, f31, f12, rdn # perform operation
fsub.s f16, f31, f12, rmm # perform operation
fsub.s f16, f31, f12, rne # perform operation
fsub.s f16, f31, f12, rtz # perform operation
fsub.s f16, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x13, 0xa4210c909a4d655b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fsub.s f13, f21, f29, dyn # perform operation
fsub.s f13, f21, f29, rdn # perform operation
fsub.s f13, f21, f29, rmm # perform operation
fsub.s f13, f21, f29, rne # perform operation
fsub.s f13, f21, f29, rtz # perform operation
fsub.s f13, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x6, 0x5f3e37259b3430c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f6, f31, f16, dyn # perform operation
fsub.s f6, f31, f16, rdn # perform operation
fsub.s f6, f31, f16, rmm # perform operation
fsub.s f6, f31, f16, rne # perform operation
fsub.s f6, f31, f16, rtz # perform operation
fsub.s f6, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x19, 0x18be2a0a5d143cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fsub.s f19, f27, f13, dyn # perform operation
fsub.s f19, f27, f13, rdn # perform operation
fsub.s f19, f27, f13, rmm # perform operation
fsub.s f19, f27, f13, rne # perform operation
fsub.s f19, f27, f13, rtz # perform operation
fsub.s f19, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x23, 0xbcfc43bb1681000c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fsub.s f23, f29, f9, dyn # perform operation
fsub.s f23, f29, f9, rdn # perform operation
fsub.s f23, f29, f9, rmm # perform operation
fsub.s f23, f29, f9, rne # perform operation
fsub.s f23, f29, f9, rtz # perform operation
fsub.s f23, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x30, 0x7d2fab52c1cf1f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fsub.s f30, f9, f25, dyn # perform operation
fsub.s f30, f9, f25, rdn # perform operation
fsub.s f30, f9, f25, rmm # perform operation
fsub.s f30, f9, f25, rne # perform operation
fsub.s f30, f9, f25, rtz # perform operation
fsub.s f30, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x19, 0xf63bf7dd88205d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fsub.s f19, f23, f18, dyn # perform operation
fsub.s f19, f23, f18, rdn # perform operation
fsub.s f19, f23, f18, rmm # perform operation
fsub.s f19, f23, f18, rne # perform operation
fsub.s f19, f23, f18, rtz # perform operation
fsub.s f19, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x10, 0x4b17b8d99243b164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fsub.s f10, f16, f19, dyn # perform operation
fsub.s f10, f16, f19, rdn # perform operation
fsub.s f10, f16, f19, rmm # perform operation
fsub.s f10, f16, f19, rne # perform operation
fsub.s f10, f16, f19, rtz # perform operation
fsub.s f10, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x8, 0xb167d752ce258fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fsub.s f8, f20, f23, dyn # perform operation
fsub.s f8, f20, f23, rdn # perform operation
fsub.s f8, f20, f23, rmm # perform operation
fsub.s f8, f20, f23, rne # perform operation
fsub.s f8, f20, f23, rtz # perform operation
fsub.s f8, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x14, 0x4902d64b479882b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fsub.s f14, f6, f30, dyn # perform operation
fsub.s f14, f6, f30, rdn # perform operation
fsub.s f14, f6, f30, rmm # perform operation
fsub.s f14, f6, f30, rne # perform operation
fsub.s f14, f6, f30, rtz # perform operation
fsub.s f14, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x10, 0x4e30000d0d78495d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fsub.s f10, f1, f22, dyn # perform operation
fsub.s f10, f1, f22, rdn # perform operation
fsub.s f10, f1, f22, rmm # perform operation
fsub.s f10, f1, f22, rne # perform operation
fsub.s f10, f1, f22, rtz # perform operation
fsub.s f10, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x5, 0x5c48f13be58e4734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fsub.s f5, f30, f9, dyn # perform operation
fsub.s f5, f30, f9, rdn # perform operation
fsub.s f5, f30, f9, rmm # perform operation
fsub.s f5, f30, f9, rne # perform operation
fsub.s f5, f30, f9, rtz # perform operation
fsub.s f5, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x17, 0x6b9c994c0cd57ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fsub.s f17, f29, f16, dyn # perform operation
fsub.s f17, f29, f16, rdn # perform operation
fsub.s f17, f29, f16, rmm # perform operation
fsub.s f17, f29, f16, rne # perform operation
fsub.s f17, f29, f16, rtz # perform operation
fsub.s f17, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x23, 0x534e2e6c6ce8356f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fsub.s f23, f26, f1, dyn # perform operation
fsub.s f23, f26, f1, rdn # perform operation
fsub.s f23, f26, f1, rmm # perform operation
fsub.s f23, f26, f1, rne # perform operation
fsub.s f23, f26, f1, rtz # perform operation
fsub.s f23, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x9, 0xb600a629f3743974 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fsub.s f9, f28, f6, dyn # perform operation
fsub.s f9, f28, f6, rdn # perform operation
fsub.s f9, f28, f6, rmm # perform operation
fsub.s f9, f28, f6, rne # perform operation
fsub.s f9, f28, f6, rtz # perform operation
fsub.s f9, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x21, 0x8df17b2aac69bfba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsub.s f21, f20, f2, dyn # perform operation
fsub.s f21, f20, f2, rdn # perform operation
fsub.s f21, f20, f2, rmm # perform operation
fsub.s f21, f20, f2, rne # perform operation
fsub.s f21, f20, f2, rtz # perform operation
fsub.s f21, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x8, 0xdacf230f5d8c3ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f8, f29, f26, dyn # perform operation
fsub.s f8, f29, f26, rdn # perform operation
fsub.s f8, f29, f26, rmm # perform operation
fsub.s f8, f29, f26, rne # perform operation
fsub.s f8, f29, f26, rtz # perform operation
fsub.s f8, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x29, 0x55a72f00f8891c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fsub.s f29, f25, f5, dyn # perform operation
fsub.s f29, f25, f5, rdn # perform operation
fsub.s f29, f25, f5, rmm # perform operation
fsub.s f29, f25, f5, rne # perform operation
fsub.s f29, f25, f5, rtz # perform operation
fsub.s f29, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x10, 0x04d1b8ca059da232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsub.s f10, f21, f13, dyn # perform operation
fsub.s f10, f21, f13, rdn # perform operation
fsub.s f10, f21, f13, rmm # perform operation
fsub.s f10, f21, f13, rne # perform operation
fsub.s f10, f21, f13, rtz # perform operation
fsub.s f10, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x30, 0xacd96586c5942b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fsub.s f30, f11, f22, dyn # perform operation
fsub.s f30, f11, f22, rdn # perform operation
fsub.s f30, f11, f22, rmm # perform operation
fsub.s f30, f11, f22, rne # perform operation
fsub.s f30, f11, f22, rtz # perform operation
fsub.s f30, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x23, 0x28773811cd5c5698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fsub.s f23, f25, f14, dyn # perform operation
fsub.s f23, f25, f14, rdn # perform operation
fsub.s f23, f25, f14, rmm # perform operation
fsub.s f23, f25, f14, rne # perform operation
fsub.s f23, f25, f14, rtz # perform operation
fsub.s f23, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x26, 0x07d168a0c3dee366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fsub.s f26, f6, f14, dyn # perform operation
fsub.s f26, f6, f14, rdn # perform operation
fsub.s f26, f6, f14, rmm # perform operation
fsub.s f26, f6, f14, rne # perform operation
fsub.s f26, f6, f14, rtz # perform operation
fsub.s f26, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x11, 0x2b5214600b89b7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fsub.s f11, f24, f20, dyn # perform operation
fsub.s f11, f24, f20, rdn # perform operation
fsub.s f11, f24, f20, rmm # perform operation
fsub.s f11, f24, f20, rne # perform operation
fsub.s f11, f24, f20, rtz # perform operation
fsub.s f11, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x24, 0x013adb46538b930f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f24, f1, f4, dyn # perform operation
fsub.s f24, f1, f4, rdn # perform operation
fsub.s f24, f1, f4, rmm # perform operation
fsub.s f24, f1, f4, rne # perform operation
fsub.s f24, f1, f4, rtz # perform operation
fsub.s f24, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x12, 0x5e98866b4300b0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fsub.s f12, f25, f15, dyn # perform operation
fsub.s f12, f25, f15, rdn # perform operation
fsub.s f12, f25, f15, rmm # perform operation
fsub.s f12, f25, f15, rne # perform operation
fsub.s f12, f25, f15, rtz # perform operation
fsub.s f12, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x28, 0x51670dc8d266f5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fsub.s f28, f24, f19, dyn # perform operation
fsub.s f28, f24, f19, rdn # perform operation
fsub.s f28, f24, f19, rmm # perform operation
fsub.s f28, f24, f19, rne # perform operation
fsub.s f28, f24, f19, rtz # perform operation
fsub.s f28, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x9, 0xc9c7ccc2793b84e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fsub.s f9, f16, f8, dyn # perform operation
fsub.s f9, f16, f8, rdn # perform operation
fsub.s f9, f16, f8, rmm # perform operation
fsub.s f9, f16, f8, rne # perform operation
fsub.s f9, f16, f8, rtz # perform operation
fsub.s f9, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x7, 0x3991bd6b3f059d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f7, f9, f13, dyn # perform operation
fsub.s f7, f9, f13, rdn # perform operation
fsub.s f7, f9, f13, rmm # perform operation
fsub.s f7, f9, f13, rne # perform operation
fsub.s f7, f9, f13, rtz # perform operation
fsub.s f7, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x2bcb20e34146c0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa6a6a84281ba580 # load x3 with value 0xfa6a6a84281ba580
sw x3, 0(x2) # store 0xfa6a6a84281ba580 in memory
flw f26, 0(x2) # load 0xfa6a6a84281ba580 from memory into f26
li x3, 0xd0c48e4d622c7ee0 # load x3 with value 0xd0c48e4d622c7ee0
sw x3, 0(x2) # store 0xd0c48e4d622c7ee0 in memory
flw f14, 0(x2) # load 0xd0c48e4d622c7ee0 from memory into f14
fsub.s f0, f26, f14 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x0d512f895296ac86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ffbf2736ec5a027 # load x3 with value 0x1ffbf2736ec5a027
sw x3, 0(x2) # store 0x1ffbf2736ec5a027 in memory
flw f3, 0(x2) # load 0x1ffbf2736ec5a027 from memory into f3
li x3, 0x456a2bc2d1828551 # load x3 with value 0x456a2bc2d1828551
sw x3, 0(x2) # store 0x456a2bc2d1828551 in memory
flw f9, 0(x2) # load 0x456a2bc2d1828551 from memory into f9
fsub.s f1, f3, f9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xd7fe1fb40607454b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8916621959cb6df3 # load x3 with value 0x8916621959cb6df3
sw x3, 0(x2) # store 0x8916621959cb6df3 in memory
flw f7, 0(x2) # load 0x8916621959cb6df3 from memory into f7
li x3, 0xc45adeebfef40d4e # load x3 with value 0xc45adeebfef40d4e
sw x3, 0(x2) # store 0xc45adeebfef40d4e in memory
flw f24, 0(x2) # load 0xc45adeebfef40d4e from memory into f24
fsub.s f2, f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xe53e0fd35a12c4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa55e912d83990f88 # load x3 with value 0xa55e912d83990f88
sw x3, 0(x2) # store 0xa55e912d83990f88 in memory
flw f14, 0(x2) # load 0xa55e912d83990f88 from memory into f14
li x3, 0x16188e37cd5eae92 # load x3 with value 0x16188e37cd5eae92
sw x3, 0(x2) # store 0x16188e37cd5eae92 in memory
flw f25, 0(x2) # load 0x16188e37cd5eae92 from memory into f25
fsub.s f3, f14, f25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xac911ab5b01b2d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabbb6cddd0478fdd # load x3 with value 0xabbb6cddd0478fdd
sw x3, 0(x2) # store 0xabbb6cddd0478fdd in memory
flw f4, 0(x2) # load 0xabbb6cddd0478fdd from memory into f4
li x3, 0xe4240a74f58b65ed # load x3 with value 0xe4240a74f58b65ed
sw x3, 0(x2) # store 0xe4240a74f58b65ed in memory
flw f29, 0(x2) # load 0xe4240a74f58b65ed from memory into f29
fsub.s f4, f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xb35ab379e311250c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6712edd8b1a97375 # load x3 with value 0x6712edd8b1a97375
sw x3, 0(x2) # store 0x6712edd8b1a97375 in memory
flw f12, 0(x2) # load 0x6712edd8b1a97375 from memory into f12
li x3, 0x38fad790ad38e905 # load x3 with value 0x38fad790ad38e905
sw x3, 0(x2) # store 0x38fad790ad38e905 in memory
flw f28, 0(x2) # load 0x38fad790ad38e905 from memory into f28
fsub.s f5, f12, f28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x71efbcb4b56e7f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc27990afe77fc881 # load x3 with value 0xc27990afe77fc881
sw x3, 0(x2) # store 0xc27990afe77fc881 in memory
flw f4, 0(x2) # load 0xc27990afe77fc881 from memory into f4
li x3, 0xef6b608076299330 # load x3 with value 0xef6b608076299330
sw x3, 0(x2) # store 0xef6b608076299330 in memory
flw f11, 0(x2) # load 0xef6b608076299330 from memory into f11
fsub.s f6, f4, f11 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3d782d2ed6daccd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d739b983eedea57 # load x3 with value 0x8d739b983eedea57
sw x3, 0(x2) # store 0x8d739b983eedea57 in memory
flw f26, 0(x2) # load 0x8d739b983eedea57 from memory into f26
li x3, 0xecdc2efc0cc2168e # load x3 with value 0xecdc2efc0cc2168e
sw x3, 0(x2) # store 0xecdc2efc0cc2168e in memory
flw f18, 0(x2) # load 0xecdc2efc0cc2168e from memory into f18
fsub.s f7, f26, f18 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x3b892e61c738d5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1f3a95d0533bdaa # load x3 with value 0xa1f3a95d0533bdaa
sw x3, 0(x2) # store 0xa1f3a95d0533bdaa in memory
flw f14, 0(x2) # load 0xa1f3a95d0533bdaa from memory into f14
li x3, 0xc45d3482f65d6117 # load x3 with value 0xc45d3482f65d6117
sw x3, 0(x2) # store 0xc45d3482f65d6117 in memory
flw f4, 0(x2) # load 0xc45d3482f65d6117 from memory into f4
fsub.s f8, f14, f4 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x696164d778e6c357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1157301c213821d6 # load x3 with value 0x1157301c213821d6
sw x3, 0(x2) # store 0x1157301c213821d6 in memory
flw f28, 0(x2) # load 0x1157301c213821d6 from memory into f28
li x3, 0x97dc7394333ef37d # load x3 with value 0x97dc7394333ef37d
sw x3, 0(x2) # store 0x97dc7394333ef37d in memory
flw f26, 0(x2) # load 0x97dc7394333ef37d from memory into f26
fsub.s f9, f28, f26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xddcf691d970f5a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0a3d2bc70c8bdd5 # load x3 with value 0xe0a3d2bc70c8bdd5
sw x3, 0(x2) # store 0xe0a3d2bc70c8bdd5 in memory
flw f25, 0(x2) # load 0xe0a3d2bc70c8bdd5 from memory into f25
li x3, 0x9b8f9468e686219b # load x3 with value 0x9b8f9468e686219b
sw x3, 0(x2) # store 0x9b8f9468e686219b in memory
flw f2, 0(x2) # load 0x9b8f9468e686219b from memory into f2
fsub.s f10, f25, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfc157e9a22849de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f9e3b0e4b681932 # load x3 with value 0x4f9e3b0e4b681932
sw x3, 0(x2) # store 0x4f9e3b0e4b681932 in memory
flw f19, 0(x2) # load 0x4f9e3b0e4b681932 from memory into f19
li x3, 0x2bb6440f8d1233e4 # load x3 with value 0x2bb6440f8d1233e4
sw x3, 0(x2) # store 0x2bb6440f8d1233e4 in memory
flw f31, 0(x2) # load 0x2bb6440f8d1233e4 from memory into f31
fsub.s f11, f19, f31 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x8998247d82c10d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b31884618f6f974 # load x3 with value 0x1b31884618f6f974
sw x3, 0(x2) # store 0x1b31884618f6f974 in memory
flw f16, 0(x2) # load 0x1b31884618f6f974 from memory into f16
li x3, 0x507ef006c93817c9 # load x3 with value 0x507ef006c93817c9
sw x3, 0(x2) # store 0x507ef006c93817c9 in memory
flw f9, 0(x2) # load 0x507ef006c93817c9 from memory into f9
fsub.s f12, f16, f9 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xefa6571c09b6719e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42ed472a208edf8a # load x3 with value 0x42ed472a208edf8a
sw x3, 0(x2) # store 0x42ed472a208edf8a in memory
flw f2, 0(x2) # load 0x42ed472a208edf8a from memory into f2
li x3, 0x61251839247c882c # load x3 with value 0x61251839247c882c
sw x3, 0(x2) # store 0x61251839247c882c in memory
flw f14, 0(x2) # load 0x61251839247c882c from memory into f14
fsub.s f13, f2, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x4fad25232ce2f0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4776b2eed2e41e80 # load x3 with value 0x4776b2eed2e41e80
sw x3, 0(x2) # store 0x4776b2eed2e41e80 in memory
flw f6, 0(x2) # load 0x4776b2eed2e41e80 from memory into f6
li x3, 0x1d4b0a567237d630 # load x3 with value 0x1d4b0a567237d630
sw x3, 0(x2) # store 0x1d4b0a567237d630 in memory
flw f22, 0(x2) # load 0x1d4b0a567237d630 from memory into f22
fsub.s f14, f6, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xe3285f233cee4b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x553b5195e69a6c34 # load x3 with value 0x553b5195e69a6c34
sw x3, 0(x2) # store 0x553b5195e69a6c34 in memory
flw f23, 0(x2) # load 0x553b5195e69a6c34 from memory into f23
li x3, 0x3d47465729a6781e # load x3 with value 0x3d47465729a6781e
sw x3, 0(x2) # store 0x3d47465729a6781e in memory
flw f6, 0(x2) # load 0x3d47465729a6781e from memory into f6
fsub.s f15, f23, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xce3cc2daebfd8173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe41844988aa6f7fc # load x3 with value 0xe41844988aa6f7fc
sw x3, 0(x2) # store 0xe41844988aa6f7fc in memory
flw f13, 0(x2) # load 0xe41844988aa6f7fc from memory into f13
li x3, 0xf44ed7e6a79bf1ce # load x3 with value 0xf44ed7e6a79bf1ce
sw x3, 0(x2) # store 0xf44ed7e6a79bf1ce in memory
flw f24, 0(x2) # load 0xf44ed7e6a79bf1ce from memory into f24
fsub.s f16, f13, f24 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc429c95dab27d11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d3d1b9e1d96af4a # load x3 with value 0x6d3d1b9e1d96af4a
sw x3, 0(x2) # store 0x6d3d1b9e1d96af4a in memory
flw f9, 0(x2) # load 0x6d3d1b9e1d96af4a from memory into f9
li x3, 0x4fa61d4062ff6aff # load x3 with value 0x4fa61d4062ff6aff
sw x3, 0(x2) # store 0x4fa61d4062ff6aff in memory
flw f24, 0(x2) # load 0x4fa61d4062ff6aff from memory into f24
fsub.s f17, f9, f24 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xe80b9b304d862e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe4e0e6d929bb2d5 # load x3 with value 0xbe4e0e6d929bb2d5
sw x3, 0(x2) # store 0xbe4e0e6d929bb2d5 in memory
flw f20, 0(x2) # load 0xbe4e0e6d929bb2d5 from memory into f20
li x3, 0xf2d3c98571272b9a # load x3 with value 0xf2d3c98571272b9a
sw x3, 0(x2) # store 0xf2d3c98571272b9a in memory
flw f11, 0(x2) # load 0xf2d3c98571272b9a from memory into f11
fsub.s f18, f20, f11 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x6a3b44080af154cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7dc4f0afd0226a0 # load x3 with value 0xb7dc4f0afd0226a0
sw x3, 0(x2) # store 0xb7dc4f0afd0226a0 in memory
flw f30, 0(x2) # load 0xb7dc4f0afd0226a0 from memory into f30
li x3, 0x182a160face1801b # load x3 with value 0x182a160face1801b
sw x3, 0(x2) # store 0x182a160face1801b in memory
flw f25, 0(x2) # load 0x182a160face1801b from memory into f25
fsub.s f19, f30, f25 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x66c49bff060c9f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bd3e3be5b4a744a # load x3 with value 0x7bd3e3be5b4a744a
sw x3, 0(x2) # store 0x7bd3e3be5b4a744a in memory
flw f28, 0(x2) # load 0x7bd3e3be5b4a744a from memory into f28
li x3, 0xdd6962d980dbd432 # load x3 with value 0xdd6962d980dbd432
sw x3, 0(x2) # store 0xdd6962d980dbd432 in memory
flw f25, 0(x2) # load 0xdd6962d980dbd432 from memory into f25
fsub.s f20, f28, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x2a2b53bc97bc6ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b646a72af1e619e # load x3 with value 0x5b646a72af1e619e
sw x3, 0(x2) # store 0x5b646a72af1e619e in memory
flw f5, 0(x2) # load 0x5b646a72af1e619e from memory into f5
li x3, 0x8525871a60d05a55 # load x3 with value 0x8525871a60d05a55
sw x3, 0(x2) # store 0x8525871a60d05a55 in memory
flw f28, 0(x2) # load 0x8525871a60d05a55 from memory into f28
fsub.s f21, f5, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xf80eeb427bd28b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19578fcf4d8bb495 # load x3 with value 0x19578fcf4d8bb495
sw x3, 0(x2) # store 0x19578fcf4d8bb495 in memory
flw f4, 0(x2) # load 0x19578fcf4d8bb495 from memory into f4
li x3, 0xa14d7123e5a28120 # load x3 with value 0xa14d7123e5a28120
sw x3, 0(x2) # store 0xa14d7123e5a28120 in memory
flw f26, 0(x2) # load 0xa14d7123e5a28120 from memory into f26
fsub.s f22, f4, f26 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd35503f34c00184b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40342fa1dd79167e # load x3 with value 0x40342fa1dd79167e
sw x3, 0(x2) # store 0x40342fa1dd79167e in memory
flw f21, 0(x2) # load 0x40342fa1dd79167e from memory into f21
li x3, 0xb076965c2b4c92b3 # load x3 with value 0xb076965c2b4c92b3
sw x3, 0(x2) # store 0xb076965c2b4c92b3 in memory
flw f13, 0(x2) # load 0xb076965c2b4c92b3 from memory into f13
fsub.s f23, f21, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x6b04f13a62864717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcab0496a6b998303 # load x3 with value 0xcab0496a6b998303
sw x3, 0(x2) # store 0xcab0496a6b998303 in memory
flw f12, 0(x2) # load 0xcab0496a6b998303 from memory into f12
li x3, 0x699a2e142e4ef1c9 # load x3 with value 0x699a2e142e4ef1c9
sw x3, 0(x2) # store 0x699a2e142e4ef1c9 in memory
flw f13, 0(x2) # load 0x699a2e142e4ef1c9 from memory into f13
fsub.s f24, f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x26a5065e072fdf6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabb826f21c65db17 # load x3 with value 0xabb826f21c65db17
sw x3, 0(x2) # store 0xabb826f21c65db17 in memory
flw f7, 0(x2) # load 0xabb826f21c65db17 from memory into f7
li x3, 0xff7325ff71019b7c # load x3 with value 0xff7325ff71019b7c
sw x3, 0(x2) # store 0xff7325ff71019b7c in memory
flw f25, 0(x2) # load 0xff7325ff71019b7c from memory into f25
fsub.s f25, f7, f25 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xeb6214b43f81de33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14fa63b2b3fad1ee # load x3 with value 0x14fa63b2b3fad1ee
sw x3, 0(x2) # store 0x14fa63b2b3fad1ee in memory
flw f3, 0(x2) # load 0x14fa63b2b3fad1ee from memory into f3
li x3, 0xc612f97a8f291da1 # load x3 with value 0xc612f97a8f291da1
sw x3, 0(x2) # store 0xc612f97a8f291da1 in memory
flw f27, 0(x2) # load 0xc612f97a8f291da1 from memory into f27
fsub.s f26, f3, f27 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x7e24075fdb1ae56d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8f8cbfca2c246ce # load x3 with value 0xe8f8cbfca2c246ce
sw x3, 0(x2) # store 0xe8f8cbfca2c246ce in memory
flw f29, 0(x2) # load 0xe8f8cbfca2c246ce from memory into f29
li x3, 0x463caa34eb6c236f # load x3 with value 0x463caa34eb6c236f
sw x3, 0(x2) # store 0x463caa34eb6c236f in memory
flw f17, 0(x2) # load 0x463caa34eb6c236f from memory into f17
fsub.s f27, f29, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xe8dcd9a01453c977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff1e0436dc09d9b6 # load x3 with value 0xff1e0436dc09d9b6
sw x3, 0(x2) # store 0xff1e0436dc09d9b6 in memory
flw f26, 0(x2) # load 0xff1e0436dc09d9b6 from memory into f26
li x3, 0xd8de2f8e5ae87bb4 # load x3 with value 0xd8de2f8e5ae87bb4
sw x3, 0(x2) # store 0xd8de2f8e5ae87bb4 in memory
flw f31, 0(x2) # load 0xd8de2f8e5ae87bb4 from memory into f31
fsub.s f28, f26, f31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x914d6a90cdd039e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20ab7e080f20cd85 # load x3 with value 0x20ab7e080f20cd85
sw x3, 0(x2) # store 0x20ab7e080f20cd85 in memory
flw f26, 0(x2) # load 0x20ab7e080f20cd85 from memory into f26
li x3, 0xa13e678b3a134385 # load x3 with value 0xa13e678b3a134385
sw x3, 0(x2) # store 0xa13e678b3a134385 in memory
flw f30, 0(x2) # load 0xa13e678b3a134385 from memory into f30
fsub.s f29, f26, f30 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x1b71b3291ddd787c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22330019f886fe26 # load x3 with value 0x22330019f886fe26
sw x3, 0(x2) # store 0x22330019f886fe26 in memory
flw f25, 0(x2) # load 0x22330019f886fe26 from memory into f25
li x3, 0x6db9deec5fc16b2 # load x3 with value 0x6db9deec5fc16b2
sw x3, 0(x2) # store 0x6db9deec5fc16b2 in memory
flw f3, 0(x2) # load 0x6db9deec5fc16b2 from memory into f3
fsub.s f30, f25, f3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x999d60817dfa07ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a28600fa15d1748 # load x3 with value 0x4a28600fa15d1748
sw x3, 0(x2) # store 0x4a28600fa15d1748 in memory
flw f7, 0(x2) # load 0x4a28600fa15d1748 from memory into f7
li x3, 0x827c3c538807d21 # load x3 with value 0x827c3c538807d21
sw x3, 0(x2) # store 0x827c3c538807d21 in memory
flw f29, 0(x2) # load 0x827c3c538807d21 from memory into f29
fsub.s f31, f7, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x13, 0x89cdd8c632af9bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dc447587ab95c30 # load x3 with value 0x9dc447587ab95c30
sw x3, 0(x2) # store 0x9dc447587ab95c30 in memory
flw f0, 0(x2) # load 0x9dc447587ab95c30 from memory into f0
li x3, 0xb9676832235ab207 # load x3 with value 0xb9676832235ab207
sw x3, 0(x2) # store 0xb9676832235ab207 in memory
flw f23, 0(x2) # load 0xb9676832235ab207 from memory into f23
fsub.s f13, f0, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x47ed69a78e243e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x701ebb94eeaba030 # load x3 with value 0x701ebb94eeaba030
sw x3, 0(x2) # store 0x701ebb94eeaba030 in memory
flw f1, 0(x2) # load 0x701ebb94eeaba030 from memory into f1
li x3, 0x4afd89a8569805d8 # load x3 with value 0x4afd89a8569805d8
sw x3, 0(x2) # store 0x4afd89a8569805d8 in memory
flw f6, 0(x2) # load 0x4afd89a8569805d8 from memory into f6
fsub.s f15, f1, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x7, 0x2a67a86c068337e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x438f20c9a0824c1c # load x3 with value 0x438f20c9a0824c1c
sw x3, 0(x2) # store 0x438f20c9a0824c1c in memory
flw f2, 0(x2) # load 0x438f20c9a0824c1c from memory into f2
li x3, 0x986c71c014751d0a # load x3 with value 0x986c71c014751d0a
sw x3, 0(x2) # store 0x986c71c014751d0a in memory
flw f18, 0(x2) # load 0x986c71c014751d0a from memory into f18
fsub.s f7, f2, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x26, 0x1480d5793bd1ae33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4abcd3f1a13b11e7 # load x3 with value 0x4abcd3f1a13b11e7
sw x3, 0(x2) # store 0x4abcd3f1a13b11e7 in memory
flw f3, 0(x2) # load 0x4abcd3f1a13b11e7 from memory into f3
li x3, 0xa6dc323ff2264f83 # load x3 with value 0xa6dc323ff2264f83
sw x3, 0(x2) # store 0xa6dc323ff2264f83 in memory
flw f20, 0(x2) # load 0xa6dc323ff2264f83 from memory into f20
fsub.s f26, f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x30, 0xbdc60f8794e94d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5f1e514a4f264b0 # load x3 with value 0xc5f1e514a4f264b0
sw x3, 0(x2) # store 0xc5f1e514a4f264b0 in memory
flw f4, 0(x2) # load 0xc5f1e514a4f264b0 from memory into f4
li x3, 0xb3a05b0d8f922867 # load x3 with value 0xb3a05b0d8f922867
sw x3, 0(x2) # store 0xb3a05b0d8f922867 in memory
flw f17, 0(x2) # load 0xb3a05b0d8f922867 from memory into f17
fsub.s f30, f4, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x24, 0x3b52a81ef3f9bbcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae7608cfd9656153 # load x3 with value 0xae7608cfd9656153
sw x3, 0(x2) # store 0xae7608cfd9656153 in memory
flw f5, 0(x2) # load 0xae7608cfd9656153 from memory into f5
li x3, 0x757a6d5ea7ab373a # load x3 with value 0x757a6d5ea7ab373a
sw x3, 0(x2) # store 0x757a6d5ea7ab373a in memory
flw f14, 0(x2) # load 0x757a6d5ea7ab373a from memory into f14
fsub.s f24, f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x0cc73a9cb0a36b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe76f2428c40978cd # load x3 with value 0xe76f2428c40978cd
sw x3, 0(x2) # store 0xe76f2428c40978cd in memory
flw f6, 0(x2) # load 0xe76f2428c40978cd from memory into f6
li x3, 0x9c707a7cc01c6dc2 # load x3 with value 0x9c707a7cc01c6dc2
sw x3, 0(x2) # store 0x9c707a7cc01c6dc2 in memory
flw f13, 0(x2) # load 0x9c707a7cc01c6dc2 from memory into f13
fsub.s f12, f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x02ed9295939e8983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x889f766487b13ea9 # load x3 with value 0x889f766487b13ea9
sw x3, 0(x2) # store 0x889f766487b13ea9 in memory
flw f7, 0(x2) # load 0x889f766487b13ea9 from memory into f7
li x3, 0xad3b9d3b59ea8722 # load x3 with value 0xad3b9d3b59ea8722
sw x3, 0(x2) # store 0xad3b9d3b59ea8722 in memory
flw f28, 0(x2) # load 0xad3b9d3b59ea8722 from memory into f28
fsub.s f22, f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x15, 0x4909b20bdb05e1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29fc279404d8472a # load x3 with value 0x29fc279404d8472a
sw x3, 0(x2) # store 0x29fc279404d8472a in memory
flw f8, 0(x2) # load 0x29fc279404d8472a from memory into f8
li x3, 0xb01e1dbe949fc56c # load x3 with value 0xb01e1dbe949fc56c
sw x3, 0(x2) # store 0xb01e1dbe949fc56c in memory
flw f6, 0(x2) # load 0xb01e1dbe949fc56c from memory into f6
fsub.s f15, f8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x26, 0xc3e91eb3d6c3f59b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x769f7b82ceb32763 # load x3 with value 0x769f7b82ceb32763
sw x3, 0(x2) # store 0x769f7b82ceb32763 in memory
flw f9, 0(x2) # load 0x769f7b82ceb32763 from memory into f9
li x3, 0x5ff366a54a411c52 # load x3 with value 0x5ff366a54a411c52
sw x3, 0(x2) # store 0x5ff366a54a411c52 in memory
flw f10, 0(x2) # load 0x5ff366a54a411c52 from memory into f10
fsub.s f26, f9, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0xcf67a988557094a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76b9cc92835dab85 # load x3 with value 0x76b9cc92835dab85
sw x3, 0(x2) # store 0x76b9cc92835dab85 in memory
flw f10, 0(x2) # load 0x76b9cc92835dab85 from memory into f10
li x3, 0xe89c95063603fea5 # load x3 with value 0xe89c95063603fea5
sw x3, 0(x2) # store 0xe89c95063603fea5 in memory
flw f27, 0(x2) # load 0xe89c95063603fea5 from memory into f27
fsub.s f30, f10, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x24, 0x28b9b0bda3a64956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f12927641c1c7dd # load x3 with value 0x5f12927641c1c7dd
sw x3, 0(x2) # store 0x5f12927641c1c7dd in memory
flw f11, 0(x2) # load 0x5f12927641c1c7dd from memory into f11
li x3, 0x7e2e57a4a319d537 # load x3 with value 0x7e2e57a4a319d537
sw x3, 0(x2) # store 0x7e2e57a4a319d537 in memory
flw f23, 0(x2) # load 0x7e2e57a4a319d537 from memory into f23
fsub.s f24, f11, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x7, 0xb507c5d74c644ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe74987f55f82729d # load x3 with value 0xe74987f55f82729d
sw x3, 0(x2) # store 0xe74987f55f82729d in memory
flw f12, 0(x2) # load 0xe74987f55f82729d from memory into f12
li x3, 0xb6ef4da7405dcc9c # load x3 with value 0xb6ef4da7405dcc9c
sw x3, 0(x2) # store 0xb6ef4da7405dcc9c in memory
flw f6, 0(x2) # load 0xb6ef4da7405dcc9c from memory into f6
fsub.s f7, f12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x6, 0x6c1de9c19d85f81e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1f7b3443731d2d # load x3 with value 0xb1f7b3443731d2d
sw x3, 0(x2) # store 0xb1f7b3443731d2d in memory
flw f13, 0(x2) # load 0xb1f7b3443731d2d from memory into f13
li x3, 0x23e4c3d283a9a1ab # load x3 with value 0x23e4c3d283a9a1ab
sw x3, 0(x2) # store 0x23e4c3d283a9a1ab in memory
flw f12, 0(x2) # load 0x23e4c3d283a9a1ab from memory into f12
fsub.s f6, f13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x16, 0xfe750c237ddf6e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbacb57816b95ab1a # load x3 with value 0xbacb57816b95ab1a
sw x3, 0(x2) # store 0xbacb57816b95ab1a in memory
flw f14, 0(x2) # load 0xbacb57816b95ab1a from memory into f14
li x3, 0xd5721d195dba524a # load x3 with value 0xd5721d195dba524a
sw x3, 0(x2) # store 0xd5721d195dba524a in memory
flw f11, 0(x2) # load 0xd5721d195dba524a from memory into f11
fsub.s f16, f14, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x14, 0xc2826e9dcf0d7d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98a53370b652204c # load x3 with value 0x98a53370b652204c
sw x3, 0(x2) # store 0x98a53370b652204c in memory
flw f15, 0(x2) # load 0x98a53370b652204c from memory into f15
li x3, 0x223c0c621f9dcb35 # load x3 with value 0x223c0c621f9dcb35
sw x3, 0(x2) # store 0x223c0c621f9dcb35 in memory
flw f26, 0(x2) # load 0x223c0c621f9dcb35 from memory into f26
fsub.s f14, f15, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x14, 0x610a5dd4b910d7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18df06fdbec0a8de # load x3 with value 0x18df06fdbec0a8de
sw x3, 0(x2) # store 0x18df06fdbec0a8de in memory
flw f16, 0(x2) # load 0x18df06fdbec0a8de from memory into f16
li x3, 0x48fb2ed28beb716f # load x3 with value 0x48fb2ed28beb716f
sw x3, 0(x2) # store 0x48fb2ed28beb716f in memory
flw f1, 0(x2) # load 0x48fb2ed28beb716f from memory into f1
fsub.s f14, f16, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x27, 0xe70d718908487a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9632461d772b29ab # load x3 with value 0x9632461d772b29ab
sw x3, 0(x2) # store 0x9632461d772b29ab in memory
flw f17, 0(x2) # load 0x9632461d772b29ab from memory into f17
li x3, 0x4e00c54f2373cb8 # load x3 with value 0x4e00c54f2373cb8
sw x3, 0(x2) # store 0x4e00c54f2373cb8 in memory
flw f31, 0(x2) # load 0x4e00c54f2373cb8 from memory into f31
fsub.s f27, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0xf5653fdf6fd47c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1042f607b5054d1b # load x3 with value 0x1042f607b5054d1b
sw x3, 0(x2) # store 0x1042f607b5054d1b in memory
flw f18, 0(x2) # load 0x1042f607b5054d1b from memory into f18
li x3, 0xbffc92172410546 # load x3 with value 0xbffc92172410546
sw x3, 0(x2) # store 0xbffc92172410546 in memory
flw f23, 0(x2) # load 0xbffc92172410546 from memory into f23
fsub.s f31, f18, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0x587bddac4653917b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef9c9264b06dbf # load x3 with value 0x2ef9c9264b06dbf
sw x3, 0(x2) # store 0x2ef9c9264b06dbf in memory
flw f19, 0(x2) # load 0x2ef9c9264b06dbf from memory into f19
li x3, 0x5e61d8b7d2dec088 # load x3 with value 0x5e61d8b7d2dec088
sw x3, 0(x2) # store 0x5e61d8b7d2dec088 in memory
flw f9, 0(x2) # load 0x5e61d8b7d2dec088 from memory into f9
fsub.s f29, f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x13, 0xb19e4001be919af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69391fa33c39a03b # load x3 with value 0x69391fa33c39a03b
sw x3, 0(x2) # store 0x69391fa33c39a03b in memory
flw f20, 0(x2) # load 0x69391fa33c39a03b from memory into f20
li x3, 0x68f6f358db49324f # load x3 with value 0x68f6f358db49324f
sw x3, 0(x2) # store 0x68f6f358db49324f in memory
flw f25, 0(x2) # load 0x68f6f358db49324f from memory into f25
fsub.s f13, f20, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0x1fd1a9fa6c334f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86523ab7a8819943 # load x3 with value 0x86523ab7a8819943
sw x3, 0(x2) # store 0x86523ab7a8819943 in memory
flw f21, 0(x2) # load 0x86523ab7a8819943 from memory into f21
li x3, 0x62fce65bbdc28e42 # load x3 with value 0x62fce65bbdc28e42
sw x3, 0(x2) # store 0x62fce65bbdc28e42 in memory
flw f25, 0(x2) # load 0x62fce65bbdc28e42 from memory into f25
fsub.s f8, f21, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x26, 0x691a16ed11330160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b8082f8d92fbc1 # load x3 with value 0x1b8082f8d92fbc1
sw x3, 0(x2) # store 0x1b8082f8d92fbc1 in memory
flw f22, 0(x2) # load 0x1b8082f8d92fbc1 from memory into f22
li x3, 0xc66a2aa68adca06b # load x3 with value 0xc66a2aa68adca06b
sw x3, 0(x2) # store 0xc66a2aa68adca06b in memory
flw f25, 0(x2) # load 0xc66a2aa68adca06b from memory into f25
fsub.s f26, f22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x23, 0x0f970274bc52c8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc17ca6929ab9c4f9 # load x3 with value 0xc17ca6929ab9c4f9
sw x3, 0(x2) # store 0xc17ca6929ab9c4f9 in memory
flw f23, 0(x2) # load 0xc17ca6929ab9c4f9 from memory into f23
li x3, 0xb4d8054e2c71ef57 # load x3 with value 0xb4d8054e2c71ef57
sw x3, 0(x2) # store 0xb4d8054e2c71ef57 in memory
flw f29, 0(x2) # load 0xb4d8054e2c71ef57 from memory into f29
fsub.s f23, f23, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x18, 0x8faabd5ef5e2aed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4503eea4f1b9460 # load x3 with value 0xa4503eea4f1b9460
sw x3, 0(x2) # store 0xa4503eea4f1b9460 in memory
flw f24, 0(x2) # load 0xa4503eea4f1b9460 from memory into f24
li x3, 0x95ed2a86795270a9 # load x3 with value 0x95ed2a86795270a9
sw x3, 0(x2) # store 0x95ed2a86795270a9 in memory
flw f11, 0(x2) # load 0x95ed2a86795270a9 from memory into f11
fsub.s f18, f24, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x17, 0x8c11ac209c4b757b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb29ff6a4095be511 # load x3 with value 0xb29ff6a4095be511
sw x3, 0(x2) # store 0xb29ff6a4095be511 in memory
flw f25, 0(x2) # load 0xb29ff6a4095be511 from memory into f25
li x3, 0xccccc0e91bf1af82 # load x3 with value 0xccccc0e91bf1af82
sw x3, 0(x2) # store 0xccccc0e91bf1af82 in memory
flw f11, 0(x2) # load 0xccccc0e91bf1af82 from memory into f11
fsub.s f17, f25, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0x8404b4fe89dc3cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf2e920379bdb1c3 # load x3 with value 0xbf2e920379bdb1c3
sw x3, 0(x2) # store 0xbf2e920379bdb1c3 in memory
flw f26, 0(x2) # load 0xbf2e920379bdb1c3 from memory into f26
li x3, 0x7cc16d9de1dd41c # load x3 with value 0x7cc16d9de1dd41c
sw x3, 0(x2) # store 0x7cc16d9de1dd41c in memory
flw f22, 0(x2) # load 0x7cc16d9de1dd41c from memory into f22
fsub.s f1, f26, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x21, 0x4ec407c12656194e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d7bc10527b955f1 # load x3 with value 0x5d7bc10527b955f1
sw x3, 0(x2) # store 0x5d7bc10527b955f1 in memory
flw f27, 0(x2) # load 0x5d7bc10527b955f1 from memory into f27
li x3, 0x210caa586d41cb2a # load x3 with value 0x210caa586d41cb2a
sw x3, 0(x2) # store 0x210caa586d41cb2a in memory
flw f26, 0(x2) # load 0x210caa586d41cb2a from memory into f26
fsub.s f21, f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x11, 0x6192cf867f65cedb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x193724d556bf4b63 # load x3 with value 0x193724d556bf4b63
sw x3, 0(x2) # store 0x193724d556bf4b63 in memory
flw f28, 0(x2) # load 0x193724d556bf4b63 from memory into f28
li x3, 0x704f67f52c7e4a72 # load x3 with value 0x704f67f52c7e4a72
sw x3, 0(x2) # store 0x704f67f52c7e4a72 in memory
flw f29, 0(x2) # load 0x704f67f52c7e4a72 from memory into f29
fsub.s f11, f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0x7883b97946ace72f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4b8d0c4e4e2b5b6 # load x3 with value 0xe4b8d0c4e4e2b5b6
sw x3, 0(x2) # store 0xe4b8d0c4e4e2b5b6 in memory
flw f29, 0(x2) # load 0xe4b8d0c4e4e2b5b6 from memory into f29
li x3, 0x649692ffdeb899f9 # load x3 with value 0x649692ffdeb899f9
sw x3, 0(x2) # store 0x649692ffdeb899f9 in memory
flw f22, 0(x2) # load 0x649692ffdeb899f9 from memory into f22
fsub.s f3, f29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x16, 0x8cf00b8768ffaaf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4714cf657402342 # load x3 with value 0xe4714cf657402342
sw x3, 0(x2) # store 0xe4714cf657402342 in memory
flw f30, 0(x2) # load 0xe4714cf657402342 from memory into f30
li x3, 0x7bf072e2a276708e # load x3 with value 0x7bf072e2a276708e
sw x3, 0(x2) # store 0x7bf072e2a276708e in memory
flw f23, 0(x2) # load 0x7bf072e2a276708e from memory into f23
fsub.s f16, f30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x27, 0x662029d56277ef38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb572f58fe834af9 # load x3 with value 0xfb572f58fe834af9
sw x3, 0(x2) # store 0xfb572f58fe834af9 in memory
flw f31, 0(x2) # load 0xfb572f58fe834af9 from memory into f31
li x3, 0x7dfcfdf9b337b74d # load x3 with value 0x7dfcfdf9b337b74d
sw x3, 0(x2) # store 0x7dfcfdf9b337b74d in memory
flw f8, 0(x2) # load 0x7dfcfdf9b337b74d from memory into f8
fsub.s f27, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x13, 0xbc547fcba75568a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1572b9ad65ad5a23 # load x3 with value 0x1572b9ad65ad5a23
sw x3, 0(x2) # store 0x1572b9ad65ad5a23 in memory
flw f31, 0(x2) # load 0x1572b9ad65ad5a23 from memory into f31
li x3, 0x7bbd0017faa9fc4 # load x3 with value 0x7bbd0017faa9fc4
sw x3, 0(x2) # store 0x7bbd0017faa9fc4 in memory
flw f0, 0(x2) # load 0x7bbd0017faa9fc4 from memory into f0
fsub.s f13, f31, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x20, 0x9236942629dc742c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a8a57f622f44098 # load x3 with value 0x4a8a57f622f44098
sw x3, 0(x2) # store 0x4a8a57f622f44098 in memory
flw f8, 0(x2) # load 0x4a8a57f622f44098 from memory into f8
li x3, 0x478074edb6bc2c41 # load x3 with value 0x478074edb6bc2c41
sw x3, 0(x2) # store 0x478074edb6bc2c41 in memory
flw f1, 0(x2) # load 0x478074edb6bc2c41 from memory into f1
fsub.s f20, f8, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x5, 0x010dd686cbb878c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaac347076fcb7889 # load x3 with value 0xaac347076fcb7889
sw x3, 0(x2) # store 0xaac347076fcb7889 in memory
flw f31, 0(x2) # load 0xaac347076fcb7889 from memory into f31
li x3, 0x6f58d3b7c9db9e4a # load x3 with value 0x6f58d3b7c9db9e4a
sw x3, 0(x2) # store 0x6f58d3b7c9db9e4a in memory
flw f2, 0(x2) # load 0x6f58d3b7c9db9e4a from memory into f2
fsub.s f5, f31, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x25, 0x892df5757decff73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47b4a6718e1173b7 # load x3 with value 0x47b4a6718e1173b7
sw x3, 0(x2) # store 0x47b4a6718e1173b7 in memory
flw f2, 0(x2) # load 0x47b4a6718e1173b7 from memory into f2
li x3, 0x528935e9ea97285c # load x3 with value 0x528935e9ea97285c
sw x3, 0(x2) # store 0x528935e9ea97285c in memory
flw f3, 0(x2) # load 0x528935e9ea97285c from memory into f3
fsub.s f25, f2, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x31, 0x9276cc7d12cbe827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbde8684a1ec49119 # load x3 with value 0xbde8684a1ec49119
sw x3, 0(x2) # store 0xbde8684a1ec49119 in memory
flw f18, 0(x2) # load 0xbde8684a1ec49119 from memory into f18
li x3, 0x6ed948e3ddf0e517 # load x3 with value 0x6ed948e3ddf0e517
sw x3, 0(x2) # store 0x6ed948e3ddf0e517 in memory
flw f4, 0(x2) # load 0x6ed948e3ddf0e517 from memory into f4
fsub.s f31, f18, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x31, 0xd2d6bd5ebe375518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa635420fb5567a2e # load x3 with value 0xa635420fb5567a2e
sw x3, 0(x2) # store 0xa635420fb5567a2e in memory
flw f30, 0(x2) # load 0xa635420fb5567a2e from memory into f30
li x3, 0x591fc9af53cdac7f # load x3 with value 0x591fc9af53cdac7f
sw x3, 0(x2) # store 0x591fc9af53cdac7f in memory
flw f5, 0(x2) # load 0x591fc9af53cdac7f from memory into f5
fsub.s f31, f30, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x18, 0x00c9b2ab946f2418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe63aa11e59396d7f # load x3 with value 0xe63aa11e59396d7f
sw x3, 0(x2) # store 0xe63aa11e59396d7f in memory
flw f1, 0(x2) # load 0xe63aa11e59396d7f from memory into f1
li x3, 0x6b8bf49a30300cc7 # load x3 with value 0x6b8bf49a30300cc7
sw x3, 0(x2) # store 0x6b8bf49a30300cc7 in memory
flw f6, 0(x2) # load 0x6b8bf49a30300cc7 from memory into f6
fsub.s f18, f1, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x29, 0x9ff682a279d62886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9544ed3d84f1112 # load x3 with value 0xe9544ed3d84f1112
sw x3, 0(x2) # store 0xe9544ed3d84f1112 in memory
flw f8, 0(x2) # load 0xe9544ed3d84f1112 from memory into f8
li x3, 0x6071451c70cab9cf # load x3 with value 0x6071451c70cab9cf
sw x3, 0(x2) # store 0x6071451c70cab9cf in memory
flw f7, 0(x2) # load 0x6071451c70cab9cf from memory into f7
fsub.s f29, f8, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x1, 0xeb46bce62878c7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32e2d9eb9a593324 # load x3 with value 0x32e2d9eb9a593324
sw x3, 0(x2) # store 0x32e2d9eb9a593324 in memory
flw f15, 0(x2) # load 0x32e2d9eb9a593324 from memory into f15
li x3, 0x41478158496b8ca7 # load x3 with value 0x41478158496b8ca7
sw x3, 0(x2) # store 0x41478158496b8ca7 in memory
flw f8, 0(x2) # load 0x41478158496b8ca7 from memory into f8
fsub.s f1, f15, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x4, 0x51652cc5dc41f4ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5eb69c389709b342 # load x3 with value 0x5eb69c389709b342
sw x3, 0(x2) # store 0x5eb69c389709b342 in memory
flw f8, 0(x2) # load 0x5eb69c389709b342 from memory into f8
li x3, 0x42da2e9e355c96fc # load x3 with value 0x42da2e9e355c96fc
sw x3, 0(x2) # store 0x42da2e9e355c96fc in memory
flw f9, 0(x2) # load 0x42da2e9e355c96fc from memory into f9
fsub.s f4, f8, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x24, 0x74832a01f0b7affb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74ac7129cd9936b7 # load x3 with value 0x74ac7129cd9936b7
sw x3, 0(x2) # store 0x74ac7129cd9936b7 in memory
flw f9, 0(x2) # load 0x74ac7129cd9936b7 from memory into f9
li x3, 0xad546aa58bcc9167 # load x3 with value 0xad546aa58bcc9167
sw x3, 0(x2) # store 0xad546aa58bcc9167 in memory
flw f10, 0(x2) # load 0xad546aa58bcc9167 from memory into f10
fsub.s f24, f9, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x099f3833d3ee1423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8587bad058784616 # load x3 with value 0x8587bad058784616
sw x3, 0(x2) # store 0x8587bad058784616 in memory
flw f8, 0(x2) # load 0x8587bad058784616 from memory into f8
li x3, 0xab908ca7571ac0de # load x3 with value 0xab908ca7571ac0de
sw x3, 0(x2) # store 0xab908ca7571ac0de in memory
flw f11, 0(x2) # load 0xab908ca7571ac0de from memory into f11
fsub.s f11, f8, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x27, 0x96c886b1aacc424a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85849cc4e2639b38 # load x3 with value 0x85849cc4e2639b38
sw x3, 0(x2) # store 0x85849cc4e2639b38 in memory
flw f5, 0(x2) # load 0x85849cc4e2639b38 from memory into f5
li x3, 0xe2fa0ed1101f3939 # load x3 with value 0xe2fa0ed1101f3939
sw x3, 0(x2) # store 0xe2fa0ed1101f3939 in memory
flw f12, 0(x2) # load 0xe2fa0ed1101f3939 from memory into f12
fsub.s f27, f5, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x24, 0x471fe106ac578193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x132dadda3f608398 # load x3 with value 0x132dadda3f608398
sw x3, 0(x2) # store 0x132dadda3f608398 in memory
flw f6, 0(x2) # load 0x132dadda3f608398 from memory into f6
li x3, 0xc25e11c1fbd64370 # load x3 with value 0xc25e11c1fbd64370
sw x3, 0(x2) # store 0xc25e11c1fbd64370 in memory
flw f13, 0(x2) # load 0xc25e11c1fbd64370 from memory into f13
fsub.s f24, f6, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x16, 0x1c90fc9b709f67fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88d34b130d68ac08 # load x3 with value 0x88d34b130d68ac08
sw x3, 0(x2) # store 0x88d34b130d68ac08 in memory
flw f11, 0(x2) # load 0x88d34b130d68ac08 from memory into f11
li x3, 0xd593d0067459944c # load x3 with value 0xd593d0067459944c
sw x3, 0(x2) # store 0xd593d0067459944c in memory
flw f14, 0(x2) # load 0xd593d0067459944c from memory into f14
fsub.s f16, f11, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x648036d9d24f881a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdba16fa4ff2fb727 # load x3 with value 0xdba16fa4ff2fb727
sw x3, 0(x2) # store 0xdba16fa4ff2fb727 in memory
flw f9, 0(x2) # load 0xdba16fa4ff2fb727 from memory into f9
li x3, 0x2e0d419f508c1c2a # load x3 with value 0x2e0d419f508c1c2a
sw x3, 0(x2) # store 0x2e0d419f508c1c2a in memory
flw f15, 0(x2) # load 0x2e0d419f508c1c2a from memory into f15
fsub.s f15, f9, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x29, 0x2434a15e8c364fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa533db814738db3b # load x3 with value 0xa533db814738db3b
sw x3, 0(x2) # store 0xa533db814738db3b in memory
flw f9, 0(x2) # load 0xa533db814738db3b from memory into f9
li x3, 0xb944e71a046f33d3 # load x3 with value 0xb944e71a046f33d3
sw x3, 0(x2) # store 0xb944e71a046f33d3 in memory
flw f16, 0(x2) # load 0xb944e71a046f33d3 from memory into f16
fsub.s f29, f9, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x21, 0x0cb65f579c1d656a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71a085876f1e6496 # load x3 with value 0x71a085876f1e6496
sw x3, 0(x2) # store 0x71a085876f1e6496 in memory
flw f11, 0(x2) # load 0x71a085876f1e6496 from memory into f11
li x3, 0xf4048a2d198508a4 # load x3 with value 0xf4048a2d198508a4
sw x3, 0(x2) # store 0xf4048a2d198508a4 in memory
flw f17, 0(x2) # load 0xf4048a2d198508a4 from memory into f17
fsub.s f21, f11, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x11, 0xc5bcf7a942638e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b7ab97d7187ceae # load x3 with value 0x7b7ab97d7187ceae
sw x3, 0(x2) # store 0x7b7ab97d7187ceae in memory
flw f17, 0(x2) # load 0x7b7ab97d7187ceae from memory into f17
li x3, 0xc0d9d4f15ce159b1 # load x3 with value 0xc0d9d4f15ce159b1
sw x3, 0(x2) # store 0xc0d9d4f15ce159b1 in memory
flw f18, 0(x2) # load 0xc0d9d4f15ce159b1 from memory into f18
fsub.s f11, f17, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x12, 0xf58fc8f8bcd6f0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19ae729452a09bd1 # load x3 with value 0x19ae729452a09bd1
sw x3, 0(x2) # store 0x19ae729452a09bd1 in memory
flw f7, 0(x2) # load 0x19ae729452a09bd1 from memory into f7
li x3, 0x44ae42837b4d3764 # load x3 with value 0x44ae42837b4d3764
sw x3, 0(x2) # store 0x44ae42837b4d3764 in memory
flw f19, 0(x2) # load 0x44ae42837b4d3764 from memory into f19
fsub.s f12, f7, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x30, 0xf62c9564853eb876 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b51b9190755ab70 # load x3 with value 0x8b51b9190755ab70
sw x3, 0(x2) # store 0x8b51b9190755ab70 in memory
flw f9, 0(x2) # load 0x8b51b9190755ab70 from memory into f9
li x3, 0xacd26fe7e634051e # load x3 with value 0xacd26fe7e634051e
sw x3, 0(x2) # store 0xacd26fe7e634051e in memory
flw f20, 0(x2) # load 0xacd26fe7e634051e from memory into f20
fsub.s f30, f9, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x6df6bc4e903aae76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bebbef3f1099635 # load x3 with value 0x9bebbef3f1099635
sw x3, 0(x2) # store 0x9bebbef3f1099635 in memory
flw f8, 0(x2) # load 0x9bebbef3f1099635 from memory into f8
li x3, 0x260b958fc69834f9 # load x3 with value 0x260b958fc69834f9
sw x3, 0(x2) # store 0x260b958fc69834f9 in memory
flw f21, 0(x2) # load 0x260b958fc69834f9 from memory into f21
fsub.s f21, f8, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x5, 0xf33e15dc8ef0b045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb75684177b111425 # load x3 with value 0xb75684177b111425
sw x3, 0(x2) # store 0xb75684177b111425 in memory
flw f9, 0(x2) # load 0xb75684177b111425 from memory into f9
li x3, 0x51081c2fdc0411a5 # load x3 with value 0x51081c2fdc0411a5
sw x3, 0(x2) # store 0x51081c2fdc0411a5 in memory
flw f22, 0(x2) # load 0x51081c2fdc0411a5 from memory into f22
fsub.s f5, f9, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x9, 0xbc9cd61a7ad1d267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccf07c2b9529c258 # load x3 with value 0xccf07c2b9529c258
sw x3, 0(x2) # store 0xccf07c2b9529c258 in memory
flw f12, 0(x2) # load 0xccf07c2b9529c258 from memory into f12
li x3, 0xf3006b5088b07929 # load x3 with value 0xf3006b5088b07929
sw x3, 0(x2) # store 0xf3006b5088b07929 in memory
flw f23, 0(x2) # load 0xf3006b5088b07929 from memory into f23
fsub.s f9, f12, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x21, 0xce89520f9bc5df27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d53062cb7078aaa # load x3 with value 0x4d53062cb7078aaa
sw x3, 0(x2) # store 0x4d53062cb7078aaa in memory
flw f7, 0(x2) # load 0x4d53062cb7078aaa from memory into f7
li x3, 0x53553ffcb7597c88 # load x3 with value 0x53553ffcb7597c88
sw x3, 0(x2) # store 0x53553ffcb7597c88 in memory
flw f24, 0(x2) # load 0x53553ffcb7597c88 from memory into f24
fsub.s f21, f7, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x18, 0xf55d0cc9345a93f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86814b65e4d9fe81 # load x3 with value 0x86814b65e4d9fe81
sw x3, 0(x2) # store 0x86814b65e4d9fe81 in memory
flw f22, 0(x2) # load 0x86814b65e4d9fe81 from memory into f22
li x3, 0xa908e8f7e292b920 # load x3 with value 0xa908e8f7e292b920
sw x3, 0(x2) # store 0xa908e8f7e292b920 in memory
flw f25, 0(x2) # load 0xa908e8f7e292b920 from memory into f25
fsub.s f18, f22, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x17, 0x89235a0ce4124e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9231152323020522 # load x3 with value 0x9231152323020522
sw x3, 0(x2) # store 0x9231152323020522 in memory
flw f12, 0(x2) # load 0x9231152323020522 from memory into f12
li x3, 0xeb2456a06df29673 # load x3 with value 0xeb2456a06df29673
sw x3, 0(x2) # store 0xeb2456a06df29673 in memory
flw f26, 0(x2) # load 0xeb2456a06df29673 from memory into f26
fsub.s f17, f12, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x6, 0x36394f5ec5166e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89fe0dd703dca095 # load x3 with value 0x89fe0dd703dca095
sw x3, 0(x2) # store 0x89fe0dd703dca095 in memory
flw f12, 0(x2) # load 0x89fe0dd703dca095 from memory into f12
li x3, 0x593c4db0399a3829 # load x3 with value 0x593c4db0399a3829
sw x3, 0(x2) # store 0x593c4db0399a3829 in memory
flw f27, 0(x2) # load 0x593c4db0399a3829 from memory into f27
fsub.s f6, f12, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x16, 0x78ed6d52c288ed70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e0fc7d5da2ecad2 # load x3 with value 0x3e0fc7d5da2ecad2
sw x3, 0(x2) # store 0x3e0fc7d5da2ecad2 in memory
flw f15, 0(x2) # load 0x3e0fc7d5da2ecad2 from memory into f15
li x3, 0x651384d669352e0 # load x3 with value 0x651384d669352e0
sw x3, 0(x2) # store 0x651384d669352e0 in memory
flw f28, 0(x2) # load 0x651384d669352e0 from memory into f28
fsub.s f16, f15, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x16, 0x96878adaf418c8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9ad2daf05c4b20e # load x3 with value 0xc9ad2daf05c4b20e
sw x3, 0(x2) # store 0xc9ad2daf05c4b20e in memory
flw f12, 0(x2) # load 0xc9ad2daf05c4b20e from memory into f12
li x3, 0xc939cd9a44926c42 # load x3 with value 0xc939cd9a44926c42
sw x3, 0(x2) # store 0xc939cd9a44926c42 in memory
flw f29, 0(x2) # load 0xc939cd9a44926c42 from memory into f29
fsub.s f16, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x5, 0xb63164d317b6eed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab0f81f47c0221d1 # load x3 with value 0xab0f81f47c0221d1
sw x3, 0(x2) # store 0xab0f81f47c0221d1 in memory
flw f12, 0(x2) # load 0xab0f81f47c0221d1 from memory into f12
li x3, 0x7e2cf0124ecda335 # load x3 with value 0x7e2cf0124ecda335
sw x3, 0(x2) # store 0x7e2cf0124ecda335 in memory
flw f30, 0(x2) # load 0x7e2cf0124ecda335 from memory into f30
fsub.s f5, f12, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x17, 0x640b147c0aa74f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1cc9f3737432ed5 # load x3 with value 0xd1cc9f3737432ed5
sw x3, 0(x2) # store 0xd1cc9f3737432ed5 in memory
flw f28, 0(x2) # load 0xd1cc9f3737432ed5 from memory into f28
li x3, 0xe274b175597477c5 # load x3 with value 0xe274b175597477c5
sw x3, 0(x2) # store 0xe274b175597477c5 in memory
flw f31, 0(x2) # load 0xe274b175597477c5 from memory into f31
fsub.s f17, f28, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
