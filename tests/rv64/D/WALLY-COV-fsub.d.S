///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsub.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.783308
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
fsub.d f1, f21, f23 # perform first operation
fsub.d f2, f1, f9 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsub.d f21, f10, f7 # perform first operation
fsub.d f6, f7, f21 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.d f18, f28, f17 # perform first operation
fsub.d f18, f26, f27 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.d f19, f4, f11 # perform first operation
fsub.d f19, f13, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.d f20, f3, f11 # perform first operation
fsub.d f3, f8, f20 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.d f7, f21, f27 # perform first operation
fsub.d f27, f28, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x9277b886085879e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c7e8481d6a3f729 # load x3 with value 0x3c7e8481d6a3f729
sd x3, 0(x2) # store 0x3c7e8481d6a3f729 in memory
fld f0, 0(x2) # load 0x3c7e8481d6a3f729 from memory into f0
li x3, 0x945cc265499bc6e5 # load x3 with value 0x945cc265499bc6e5
sd x3, 0(x2) # store 0x945cc265499bc6e5 in memory
fld f8, 0(x2) # load 0x945cc265499bc6e5 from memory into f8
fsub.d f0, f0, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xd92ab75019319db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9228bce68f5f31b0 # load x3 with value 0x9228bce68f5f31b0
sd x3, 0(x2) # store 0x9228bce68f5f31b0 in memory
fld f1, 0(x2) # load 0x9228bce68f5f31b0 from memory into f1
li x3, 0x8d1aa4acbb9c45e3 # load x3 with value 0x8d1aa4acbb9c45e3
sd x3, 0(x2) # store 0x8d1aa4acbb9c45e3 in memory
fld f5, 0(x2) # load 0x8d1aa4acbb9c45e3 from memory into f5
fsub.d f1, f1, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x35a49afe995caa6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f6089870b572a8a # load x3 with value 0x2f6089870b572a8a
sd x3, 0(x2) # store 0x2f6089870b572a8a in memory
fld f2, 0(x2) # load 0x2f6089870b572a8a from memory into f2
li x3, 0x30292a2bae72f746 # load x3 with value 0x30292a2bae72f746
sd x3, 0(x2) # store 0x30292a2bae72f746 in memory
fld f25, 0(x2) # load 0x30292a2bae72f746 from memory into f25
fsub.d f2, f2, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x7be2e5f21fef1e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a5c2dc1ef83d547 # load x3 with value 0x0a5c2dc1ef83d547
sd x3, 0(x2) # store 0x0a5c2dc1ef83d547 in memory
fld f3, 0(x2) # load 0x0a5c2dc1ef83d547 from memory into f3
li x3, 0x01b29f63d4c347c7 # load x3 with value 0x01b29f63d4c347c7
sd x3, 0(x2) # store 0x01b29f63d4c347c7 in memory
fld f5, 0(x2) # load 0x01b29f63d4c347c7 from memory into f5
fsub.d f3, f3, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x1a2441ef97cbb944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a382181c6fa2aff # load x3 with value 0x6a382181c6fa2aff
sd x3, 0(x2) # store 0x6a382181c6fa2aff in memory
fld f4, 0(x2) # load 0x6a382181c6fa2aff from memory into f4
li x3, 0xba2fbaff6a75acc2 # load x3 with value 0xba2fbaff6a75acc2
sd x3, 0(x2) # store 0xba2fbaff6a75acc2 in memory
fld f15, 0(x2) # load 0xba2fbaff6a75acc2 from memory into f15
fsub.d f4, f4, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x158b4d7ed9eb9c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4621fe67a9e765fb # load x3 with value 0x4621fe67a9e765fb
sd x3, 0(x2) # store 0x4621fe67a9e765fb in memory
fld f5, 0(x2) # load 0x4621fe67a9e765fb from memory into f5
li x3, 0xf2894dbc31660486 # load x3 with value 0xf2894dbc31660486
sd x3, 0(x2) # store 0xf2894dbc31660486 in memory
fld f1, 0(x2) # load 0xf2894dbc31660486 from memory into f1
fsub.d f5, f5, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x4b9c219bc1b7828b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20251c2f18d34836 # load x3 with value 0x20251c2f18d34836
sd x3, 0(x2) # store 0x20251c2f18d34836 in memory
fld f6, 0(x2) # load 0x20251c2f18d34836 from memory into f6
li x3, 0x1e73bb2dc685cda0 # load x3 with value 0x1e73bb2dc685cda0
sd x3, 0(x2) # store 0x1e73bb2dc685cda0 in memory
fld f5, 0(x2) # load 0x1e73bb2dc685cda0 from memory into f5
fsub.d f6, f6, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x77157daca3af7386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb37f809d591d687 # load x3 with value 0xfb37f809d591d687
sd x3, 0(x2) # store 0xfb37f809d591d687 in memory
fld f7, 0(x2) # load 0xfb37f809d591d687 from memory into f7
li x3, 0x5ac0f19b43620511 # load x3 with value 0x5ac0f19b43620511
sd x3, 0(x2) # store 0x5ac0f19b43620511 in memory
fld f30, 0(x2) # load 0x5ac0f19b43620511 from memory into f30
fsub.d f7, f7, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x57625bba2bff32ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea2cffc6a800be8d # load x3 with value 0xea2cffc6a800be8d
sd x3, 0(x2) # store 0xea2cffc6a800be8d in memory
fld f8, 0(x2) # load 0xea2cffc6a800be8d from memory into f8
li x3, 0xf13c9311ff25ad90 # load x3 with value 0xf13c9311ff25ad90
sd x3, 0(x2) # store 0xf13c9311ff25ad90 in memory
fld f27, 0(x2) # load 0xf13c9311ff25ad90 from memory into f27
fsub.d f8, f8, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa3cd1d6972c659d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f1c7adf46a925d6 # load x3 with value 0x0f1c7adf46a925d6
sd x3, 0(x2) # store 0x0f1c7adf46a925d6 in memory
fld f9, 0(x2) # load 0x0f1c7adf46a925d6 from memory into f9
li x3, 0x4674d0415ed84c30 # load x3 with value 0x4674d0415ed84c30
sd x3, 0(x2) # store 0x4674d0415ed84c30 in memory
fld f24, 0(x2) # load 0x4674d0415ed84c30 from memory into f24
fsub.d f9, f9, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x81dd684691fed92b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf33cfa14de25088 # load x3 with value 0xbf33cfa14de25088
sd x3, 0(x2) # store 0xbf33cfa14de25088 in memory
fld f10, 0(x2) # load 0xbf33cfa14de25088 from memory into f10
li x3, 0x994f0d0b71daef47 # load x3 with value 0x994f0d0b71daef47
sd x3, 0(x2) # store 0x994f0d0b71daef47 in memory
fld f15, 0(x2) # load 0x994f0d0b71daef47 from memory into f15
fsub.d f10, f10, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x3c8e2ad7c695f3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92b8e907470ea211 # load x3 with value 0x92b8e907470ea211
sd x3, 0(x2) # store 0x92b8e907470ea211 in memory
fld f11, 0(x2) # load 0x92b8e907470ea211 from memory into f11
li x3, 0x37e72be71d70f474 # load x3 with value 0x37e72be71d70f474
sd x3, 0(x2) # store 0x37e72be71d70f474 in memory
fld f17, 0(x2) # load 0x37e72be71d70f474 from memory into f17
fsub.d f11, f11, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xd0fa22061e7fe810 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26f6bae09b6b14bd # load x3 with value 0x26f6bae09b6b14bd
sd x3, 0(x2) # store 0x26f6bae09b6b14bd in memory
fld f12, 0(x2) # load 0x26f6bae09b6b14bd from memory into f12
li x3, 0xed92b960f13c7514 # load x3 with value 0xed92b960f13c7514
sd x3, 0(x2) # store 0xed92b960f13c7514 in memory
fld f7, 0(x2) # load 0xed92b960f13c7514 from memory into f7
fsub.d f12, f12, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xcb5f9f626056049c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf43635101d97751b # load x3 with value 0xf43635101d97751b
sd x3, 0(x2) # store 0xf43635101d97751b in memory
fld f13, 0(x2) # load 0xf43635101d97751b from memory into f13
li x3, 0x749571b614a16c29 # load x3 with value 0x749571b614a16c29
sd x3, 0(x2) # store 0x749571b614a16c29 in memory
fld f25, 0(x2) # load 0x749571b614a16c29 from memory into f25
fsub.d f13, f13, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x9a66657c047ff5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b085efd66ad59cb # load x3 with value 0x6b085efd66ad59cb
sd x3, 0(x2) # store 0x6b085efd66ad59cb in memory
fld f14, 0(x2) # load 0x6b085efd66ad59cb from memory into f14
li x3, 0x205ed7212924fd7a # load x3 with value 0x205ed7212924fd7a
sd x3, 0(x2) # store 0x205ed7212924fd7a in memory
fld f4, 0(x2) # load 0x205ed7212924fd7a from memory into f4
fsub.d f14, f14, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xfd9c2f2b26aa6b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11246c880bc76cbf # load x3 with value 0x11246c880bc76cbf
sd x3, 0(x2) # store 0x11246c880bc76cbf in memory
fld f15, 0(x2) # load 0x11246c880bc76cbf from memory into f15
li x3, 0x94e4ced7bd953bfe # load x3 with value 0x94e4ced7bd953bfe
sd x3, 0(x2) # store 0x94e4ced7bd953bfe in memory
fld f7, 0(x2) # load 0x94e4ced7bd953bfe from memory into f7
fsub.d f15, f15, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x6959477afac9a202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaefd5397077ea579 # load x3 with value 0xaefd5397077ea579
sd x3, 0(x2) # store 0xaefd5397077ea579 in memory
fld f16, 0(x2) # load 0xaefd5397077ea579 from memory into f16
li x3, 0x240fcf27bf645e93 # load x3 with value 0x240fcf27bf645e93
sd x3, 0(x2) # store 0x240fcf27bf645e93 in memory
fld f17, 0(x2) # load 0x240fcf27bf645e93 from memory into f17
fsub.d f16, f16, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xf74e28671966803e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2483e8de4df9fc20 # load x3 with value 0x2483e8de4df9fc20
sd x3, 0(x2) # store 0x2483e8de4df9fc20 in memory
fld f17, 0(x2) # load 0x2483e8de4df9fc20 from memory into f17
li x3, 0xb60f371e4370851b # load x3 with value 0xb60f371e4370851b
sd x3, 0(x2) # store 0xb60f371e4370851b in memory
fld f7, 0(x2) # load 0xb60f371e4370851b from memory into f7
fsub.d f17, f17, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x64e763015cef384e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ce685f7a3d8b6c # load x3 with value 0xc1ce685f7a3d8b6c
sd x3, 0(x2) # store 0xc1ce685f7a3d8b6c in memory
fld f18, 0(x2) # load 0xc1ce685f7a3d8b6c from memory into f18
li x3, 0xfe6cff6039535820 # load x3 with value 0xfe6cff6039535820
sd x3, 0(x2) # store 0xfe6cff6039535820 in memory
fld f6, 0(x2) # load 0xfe6cff6039535820 from memory into f6
fsub.d f18, f18, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x88a5679e91fd4fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedb00d5efcc044b3 # load x3 with value 0xedb00d5efcc044b3
sd x3, 0(x2) # store 0xedb00d5efcc044b3 in memory
fld f19, 0(x2) # load 0xedb00d5efcc044b3 from memory into f19
li x3, 0x60a76eb2e9b2ed9a # load x3 with value 0x60a76eb2e9b2ed9a
sd x3, 0(x2) # store 0x60a76eb2e9b2ed9a in memory
fld f12, 0(x2) # load 0x60a76eb2e9b2ed9a from memory into f12
fsub.d f19, f19, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x5b9385c3d6640200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9da01224e3f0a3b # load x3 with value 0xb9da01224e3f0a3b
sd x3, 0(x2) # store 0xb9da01224e3f0a3b in memory
fld f20, 0(x2) # load 0xb9da01224e3f0a3b from memory into f20
li x3, 0x17a34c7314693d79 # load x3 with value 0x17a34c7314693d79
sd x3, 0(x2) # store 0x17a34c7314693d79 in memory
fld f12, 0(x2) # load 0x17a34c7314693d79 from memory into f12
fsub.d f20, f20, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xcdedc934c219de58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11cb895f2fdbebfe # load x3 with value 0x11cb895f2fdbebfe
sd x3, 0(x2) # store 0x11cb895f2fdbebfe in memory
fld f21, 0(x2) # load 0x11cb895f2fdbebfe from memory into f21
li x3, 0x6daca021c4ed1d47 # load x3 with value 0x6daca021c4ed1d47
sd x3, 0(x2) # store 0x6daca021c4ed1d47 in memory
fld f5, 0(x2) # load 0x6daca021c4ed1d47 from memory into f5
fsub.d f21, f21, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xe978c351d4d0d424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82d9f945e3b954ee # load x3 with value 0x82d9f945e3b954ee
sd x3, 0(x2) # store 0x82d9f945e3b954ee in memory
fld f22, 0(x2) # load 0x82d9f945e3b954ee from memory into f22
li x3, 0xa42b82c21a29a714 # load x3 with value 0xa42b82c21a29a714
sd x3, 0(x2) # store 0xa42b82c21a29a714 in memory
fld f1, 0(x2) # load 0xa42b82c21a29a714 from memory into f1
fsub.d f22, f22, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x99594c0412e75acf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8f01692d1e6ba1b # load x3 with value 0xb8f01692d1e6ba1b
sd x3, 0(x2) # store 0xb8f01692d1e6ba1b in memory
fld f23, 0(x2) # load 0xb8f01692d1e6ba1b from memory into f23
li x3, 0x522f0a18dce8e35a # load x3 with value 0x522f0a18dce8e35a
sd x3, 0(x2) # store 0x522f0a18dce8e35a in memory
fld f21, 0(x2) # load 0x522f0a18dce8e35a from memory into f21
fsub.d f23, f23, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xe54b8b128c00930f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94e8187ba827217 # load x3 with value 0xa94e8187ba827217
sd x3, 0(x2) # store 0xa94e8187ba827217 in memory
fld f24, 0(x2) # load 0xa94e8187ba827217 from memory into f24
li x3, 0x23a70b0afe0e0465 # load x3 with value 0x23a70b0afe0e0465
sd x3, 0(x2) # store 0x23a70b0afe0e0465 in memory
fld f21, 0(x2) # load 0x23a70b0afe0e0465 from memory into f21
fsub.d f24, f24, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x117664bbafb14f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01fe5bd4afbeb311 # load x3 with value 0x01fe5bd4afbeb311
sd x3, 0(x2) # store 0x01fe5bd4afbeb311 in memory
fld f25, 0(x2) # load 0x01fe5bd4afbeb311 from memory into f25
li x3, 0xd574ba4b9b725dd0 # load x3 with value 0xd574ba4b9b725dd0
sd x3, 0(x2) # store 0xd574ba4b9b725dd0 in memory
fld f5, 0(x2) # load 0xd574ba4b9b725dd0 from memory into f5
fsub.d f25, f25, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x60e70abc8d6651cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf50bbb90023b67ef # load x3 with value 0xf50bbb90023b67ef
sd x3, 0(x2) # store 0xf50bbb90023b67ef in memory
fld f26, 0(x2) # load 0xf50bbb90023b67ef from memory into f26
li x3, 0x733e38f5154f4420 # load x3 with value 0x733e38f5154f4420
sd x3, 0(x2) # store 0x733e38f5154f4420 in memory
fld f2, 0(x2) # load 0x733e38f5154f4420 from memory into f2
fsub.d f26, f26, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xc15a791cb3d201db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x644569edd08c40ab # load x3 with value 0x644569edd08c40ab
sd x3, 0(x2) # store 0x644569edd08c40ab in memory
fld f27, 0(x2) # load 0x644569edd08c40ab from memory into f27
li x3, 0x1904acb1ff3abab1 # load x3 with value 0x1904acb1ff3abab1
sd x3, 0(x2) # store 0x1904acb1ff3abab1 in memory
fld f20, 0(x2) # load 0x1904acb1ff3abab1 from memory into f20
fsub.d f27, f27, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x71a25f27a9e09833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x314425d9b34098ed # load x3 with value 0x314425d9b34098ed
sd x3, 0(x2) # store 0x314425d9b34098ed in memory
fld f28, 0(x2) # load 0x314425d9b34098ed from memory into f28
li x3, 0xe6523218c020b339 # load x3 with value 0xe6523218c020b339
sd x3, 0(x2) # store 0xe6523218c020b339 in memory
fld f28, 0(x2) # load 0xe6523218c020b339 from memory into f28
fsub.d f28, f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x75d5a92865b046de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5569d54413c440b4 # load x3 with value 0x5569d54413c440b4
sd x3, 0(x2) # store 0x5569d54413c440b4 in memory
fld f29, 0(x2) # load 0x5569d54413c440b4 from memory into f29
li x3, 0xd8806cb00c0638ed # load x3 with value 0xd8806cb00c0638ed
sd x3, 0(x2) # store 0xd8806cb00c0638ed in memory
fld f30, 0(x2) # load 0xd8806cb00c0638ed from memory into f30
fsub.d f29, f29, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x253dd5e71c72e8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0a33ec01c7b23e6 # load x3 with value 0xc0a33ec01c7b23e6
sd x3, 0(x2) # store 0xc0a33ec01c7b23e6 in memory
fld f30, 0(x2) # load 0xc0a33ec01c7b23e6 from memory into f30
li x3, 0x4ddcceca7bf4a3c9 # load x3 with value 0x4ddcceca7bf4a3c9
sd x3, 0(x2) # store 0x4ddcceca7bf4a3c9 in memory
fld f14, 0(x2) # load 0x4ddcceca7bf4a3c9 from memory into f14
fsub.d f30, f30, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x1ede522f1a750aa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5190f0f6c1fb9097 # load x3 with value 0x5190f0f6c1fb9097
sd x3, 0(x2) # store 0x5190f0f6c1fb9097 in memory
fld f31, 0(x2) # load 0x5190f0f6c1fb9097 from memory into f31
li x3, 0x7787dbcfd59b3aab # load x3 with value 0x7787dbcfd59b3aab
sd x3, 0(x2) # store 0x7787dbcfd59b3aab in memory
fld f17, 0(x2) # load 0x7787dbcfd59b3aab from memory into f17
fsub.d f31, f31, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xcd5d2594087e8711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa740903a86a00939 # load x3 with value 0xa740903a86a00939
sd x3, 0(x2) # store 0xa740903a86a00939 in memory
fld f12, 0(x2) # load 0xa740903a86a00939 from memory into f12
li x3, 0x88975da63e1a9022 # load x3 with value 0x88975da63e1a9022
sd x3, 0(x2) # store 0x88975da63e1a9022 in memory
fld f0, 0(x2) # load 0x88975da63e1a9022 from memory into f0
fsub.d f0, f12, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x9f0ee4579183d1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3042fa134761aa5c # load x3 with value 0x3042fa134761aa5c
sd x3, 0(x2) # store 0x3042fa134761aa5c in memory
fld f27, 0(x2) # load 0x3042fa134761aa5c from memory into f27
li x3, 0xe171f886f48ab89b # load x3 with value 0xe171f886f48ab89b
sd x3, 0(x2) # store 0xe171f886f48ab89b in memory
fld f1, 0(x2) # load 0xe171f886f48ab89b from memory into f1
fsub.d f1, f27, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xb93a9d332489f914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea59f4d426f980ec # load x3 with value 0xea59f4d426f980ec
sd x3, 0(x2) # store 0xea59f4d426f980ec in memory
fld f2, 0(x2) # load 0xea59f4d426f980ec from memory into f2
li x3, 0x661960f0b1cd2301 # load x3 with value 0x661960f0b1cd2301
sd x3, 0(x2) # store 0x661960f0b1cd2301 in memory
fld f2, 0(x2) # load 0x661960f0b1cd2301 from memory into f2
fsub.d f2, f2, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xb35efd379625611c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd95565378c3eb8b1 # load x3 with value 0xd95565378c3eb8b1
sd x3, 0(x2) # store 0xd95565378c3eb8b1 in memory
fld f5, 0(x2) # load 0xd95565378c3eb8b1 from memory into f5
li x3, 0x6bc24dffade72542 # load x3 with value 0x6bc24dffade72542
sd x3, 0(x2) # store 0x6bc24dffade72542 in memory
fld f3, 0(x2) # load 0x6bc24dffade72542 from memory into f3
fsub.d f3, f5, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x3e814ca3d1dadf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbb3f52dfc20fbcf # load x3 with value 0xfbb3f52dfc20fbcf
sd x3, 0(x2) # store 0xfbb3f52dfc20fbcf in memory
fld f16, 0(x2) # load 0xfbb3f52dfc20fbcf from memory into f16
li x3, 0x6d721c37bf2be3b4 # load x3 with value 0x6d721c37bf2be3b4
sd x3, 0(x2) # store 0x6d721c37bf2be3b4 in memory
fld f4, 0(x2) # load 0x6d721c37bf2be3b4 from memory into f4
fsub.d f4, f16, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xe83aa4137bb15249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6f509ef77980c10 # load x3 with value 0xf6f509ef77980c10
sd x3, 0(x2) # store 0xf6f509ef77980c10 in memory
fld f14, 0(x2) # load 0xf6f509ef77980c10 from memory into f14
li x3, 0x3e44936cb4c92aa8 # load x3 with value 0x3e44936cb4c92aa8
sd x3, 0(x2) # store 0x3e44936cb4c92aa8 in memory
fld f5, 0(x2) # load 0x3e44936cb4c92aa8 from memory into f5
fsub.d f5, f14, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x1decb6cf855ef0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e412a19fd61a531 # load x3 with value 0x7e412a19fd61a531
sd x3, 0(x2) # store 0x7e412a19fd61a531 in memory
fld f11, 0(x2) # load 0x7e412a19fd61a531 from memory into f11
li x3, 0xff5ba689fbc8eb7d # load x3 with value 0xff5ba689fbc8eb7d
sd x3, 0(x2) # store 0xff5ba689fbc8eb7d in memory
fld f6, 0(x2) # load 0xff5ba689fbc8eb7d from memory into f6
fsub.d f6, f11, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x3e3eb0c0ed96e568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8c8672858e39d82 # load x3 with value 0xa8c8672858e39d82
sd x3, 0(x2) # store 0xa8c8672858e39d82 in memory
fld f30, 0(x2) # load 0xa8c8672858e39d82 from memory into f30
li x3, 0xe574da846f90741a # load x3 with value 0xe574da846f90741a
sd x3, 0(x2) # store 0xe574da846f90741a in memory
fld f7, 0(x2) # load 0xe574da846f90741a from memory into f7
fsub.d f7, f30, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x57f64f75b625f5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3443b0434d5f3c1 # load x3 with value 0xe3443b0434d5f3c1
sd x3, 0(x2) # store 0xe3443b0434d5f3c1 in memory
fld f9, 0(x2) # load 0xe3443b0434d5f3c1 from memory into f9
li x3, 0x7dc54272827ad125 # load x3 with value 0x7dc54272827ad125
sd x3, 0(x2) # store 0x7dc54272827ad125 in memory
fld f8, 0(x2) # load 0x7dc54272827ad125 from memory into f8
fsub.d f8, f9, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xea27d3311ef2514d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2358a50613f1ee55 # load x3 with value 0x2358a50613f1ee55
sd x3, 0(x2) # store 0x2358a50613f1ee55 in memory
fld f9, 0(x2) # load 0x2358a50613f1ee55 from memory into f9
li x3, 0xafaec0f7aab74864 # load x3 with value 0xafaec0f7aab74864
sd x3, 0(x2) # store 0xafaec0f7aab74864 in memory
fld f9, 0(x2) # load 0xafaec0f7aab74864 from memory into f9
fsub.d f9, f9, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x05b9eb082b8eccbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac4b71d9e0f6d06d # load x3 with value 0xac4b71d9e0f6d06d
sd x3, 0(x2) # store 0xac4b71d9e0f6d06d in memory
fld f28, 0(x2) # load 0xac4b71d9e0f6d06d from memory into f28
li x3, 0x7753f3a9ebf6df44 # load x3 with value 0x7753f3a9ebf6df44
sd x3, 0(x2) # store 0x7753f3a9ebf6df44 in memory
fld f10, 0(x2) # load 0x7753f3a9ebf6df44 from memory into f10
fsub.d f10, f28, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x74f5f61e4176b4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d883b7894dc9535 # load x3 with value 0x8d883b7894dc9535
sd x3, 0(x2) # store 0x8d883b7894dc9535 in memory
fld f8, 0(x2) # load 0x8d883b7894dc9535 from memory into f8
li x3, 0x7275e63d9e887421 # load x3 with value 0x7275e63d9e887421
sd x3, 0(x2) # store 0x7275e63d9e887421 in memory
fld f11, 0(x2) # load 0x7275e63d9e887421 from memory into f11
fsub.d f11, f8, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x644f9275ef83bfa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0bb85e69d42d6d26 # load x3 with value 0x0bb85e69d42d6d26
sd x3, 0(x2) # store 0x0bb85e69d42d6d26 in memory
fld f13, 0(x2) # load 0x0bb85e69d42d6d26 from memory into f13
li x3, 0x579665ba1e15d3c5 # load x3 with value 0x579665ba1e15d3c5
sd x3, 0(x2) # store 0x579665ba1e15d3c5 in memory
fld f12, 0(x2) # load 0x579665ba1e15d3c5 from memory into f12
fsub.d f12, f13, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xdbb2c7592dfdfb01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f8adcfa111fc28a # load x3 with value 0x3f8adcfa111fc28a
sd x3, 0(x2) # store 0x3f8adcfa111fc28a in memory
fld f12, 0(x2) # load 0x3f8adcfa111fc28a from memory into f12
li x3, 0xe6035860bc93f9a9 # load x3 with value 0xe6035860bc93f9a9
sd x3, 0(x2) # store 0xe6035860bc93f9a9 in memory
fld f13, 0(x2) # load 0xe6035860bc93f9a9 from memory into f13
fsub.d f13, f12, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xfef1626828eb4809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc843108211efc8cd # load x3 with value 0xc843108211efc8cd
sd x3, 0(x2) # store 0xc843108211efc8cd in memory
fld f5, 0(x2) # load 0xc843108211efc8cd from memory into f5
li x3, 0xde2a06a09c6489b9 # load x3 with value 0xde2a06a09c6489b9
sd x3, 0(x2) # store 0xde2a06a09c6489b9 in memory
fld f14, 0(x2) # load 0xde2a06a09c6489b9 from memory into f14
fsub.d f14, f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x2d4bf74fdd193267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82f249b8473449b8 # load x3 with value 0x82f249b8473449b8
sd x3, 0(x2) # store 0x82f249b8473449b8 in memory
fld f28, 0(x2) # load 0x82f249b8473449b8 from memory into f28
li x3, 0x66c6d0466e10be66 # load x3 with value 0x66c6d0466e10be66
sd x3, 0(x2) # store 0x66c6d0466e10be66 in memory
fld f15, 0(x2) # load 0x66c6d0466e10be66 from memory into f15
fsub.d f15, f28, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xc25a5cd33b9d0e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x052207ee17c30032 # load x3 with value 0x052207ee17c30032
sd x3, 0(x2) # store 0x052207ee17c30032 in memory
fld f25, 0(x2) # load 0x052207ee17c30032 from memory into f25
li x3, 0x6a02bf70266035a4 # load x3 with value 0x6a02bf70266035a4
sd x3, 0(x2) # store 0x6a02bf70266035a4 in memory
fld f16, 0(x2) # load 0x6a02bf70266035a4 from memory into f16
fsub.d f16, f25, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x37eebec46be1b7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a37f4c47ff85d2b # load x3 with value 0x6a37f4c47ff85d2b
sd x3, 0(x2) # store 0x6a37f4c47ff85d2b in memory
fld f6, 0(x2) # load 0x6a37f4c47ff85d2b from memory into f6
li x3, 0xff2f9f3bc5a4d6d4 # load x3 with value 0xff2f9f3bc5a4d6d4
sd x3, 0(x2) # store 0xff2f9f3bc5a4d6d4 in memory
fld f17, 0(x2) # load 0xff2f9f3bc5a4d6d4 from memory into f17
fsub.d f17, f6, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x6a0e735db72462a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fa252ae2ef27575 # load x3 with value 0x9fa252ae2ef27575
sd x3, 0(x2) # store 0x9fa252ae2ef27575 in memory
fld f5, 0(x2) # load 0x9fa252ae2ef27575 from memory into f5
li x3, 0x66539d82fff6fe8e # load x3 with value 0x66539d82fff6fe8e
sd x3, 0(x2) # store 0x66539d82fff6fe8e in memory
fld f18, 0(x2) # load 0x66539d82fff6fe8e from memory into f18
fsub.d f18, f5, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x1a960bb424eaa7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x816506890a680d14 # load x3 with value 0x816506890a680d14
sd x3, 0(x2) # store 0x816506890a680d14 in memory
fld f13, 0(x2) # load 0x816506890a680d14 from memory into f13
li x3, 0xfb7bb6d5aa80ddff # load x3 with value 0xfb7bb6d5aa80ddff
sd x3, 0(x2) # store 0xfb7bb6d5aa80ddff in memory
fld f19, 0(x2) # load 0xfb7bb6d5aa80ddff from memory into f19
fsub.d f19, f13, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x06a9e0b4b8bd6529 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6905b9c96479ec09 # load x3 with value 0x6905b9c96479ec09
sd x3, 0(x2) # store 0x6905b9c96479ec09 in memory
fld f25, 0(x2) # load 0x6905b9c96479ec09 from memory into f25
li x3, 0x52eb2c617e69a903 # load x3 with value 0x52eb2c617e69a903
sd x3, 0(x2) # store 0x52eb2c617e69a903 in memory
fld f20, 0(x2) # load 0x52eb2c617e69a903 from memory into f20
fsub.d f20, f25, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xa48bc382adce6bd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98a9b735663721e0 # load x3 with value 0x98a9b735663721e0
sd x3, 0(x2) # store 0x98a9b735663721e0 in memory
fld f4, 0(x2) # load 0x98a9b735663721e0 from memory into f4
li x3, 0xbfe04a4ad7d00fa5 # load x3 with value 0xbfe04a4ad7d00fa5
sd x3, 0(x2) # store 0xbfe04a4ad7d00fa5 in memory
fld f21, 0(x2) # load 0xbfe04a4ad7d00fa5 from memory into f21
fsub.d f21, f4, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x654c9838cd8bfa32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ed714e6cdeaa5d0 # load x3 with value 0x6ed714e6cdeaa5d0
sd x3, 0(x2) # store 0x6ed714e6cdeaa5d0 in memory
fld f21, 0(x2) # load 0x6ed714e6cdeaa5d0 from memory into f21
li x3, 0x99d3682f88c91e17 # load x3 with value 0x99d3682f88c91e17
sd x3, 0(x2) # store 0x99d3682f88c91e17 in memory
fld f22, 0(x2) # load 0x99d3682f88c91e17 from memory into f22
fsub.d f22, f21, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xe91f479691e0a6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5a580c3b6d382aa # load x3 with value 0xf5a580c3b6d382aa
sd x3, 0(x2) # store 0xf5a580c3b6d382aa in memory
fld f21, 0(x2) # load 0xf5a580c3b6d382aa from memory into f21
li x3, 0xcd0d6dfd71ea5a9b # load x3 with value 0xcd0d6dfd71ea5a9b
sd x3, 0(x2) # store 0xcd0d6dfd71ea5a9b in memory
fld f23, 0(x2) # load 0xcd0d6dfd71ea5a9b from memory into f23
fsub.d f23, f21, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x5c8003eacff7781a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98b49f0ff94375a8 # load x3 with value 0x98b49f0ff94375a8
sd x3, 0(x2) # store 0x98b49f0ff94375a8 in memory
fld f12, 0(x2) # load 0x98b49f0ff94375a8 from memory into f12
li x3, 0x830300f85281aa9e # load x3 with value 0x830300f85281aa9e
sd x3, 0(x2) # store 0x830300f85281aa9e in memory
fld f24, 0(x2) # load 0x830300f85281aa9e from memory into f24
fsub.d f24, f12, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xa5e60122becb4ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91cbe47d41562c2a # load x3 with value 0x91cbe47d41562c2a
sd x3, 0(x2) # store 0x91cbe47d41562c2a in memory
fld f1, 0(x2) # load 0x91cbe47d41562c2a from memory into f1
li x3, 0x03a3638f457fd3c3 # load x3 with value 0x03a3638f457fd3c3
sd x3, 0(x2) # store 0x03a3638f457fd3c3 in memory
fld f25, 0(x2) # load 0x03a3638f457fd3c3 from memory into f25
fsub.d f25, f1, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xdd6cff8b3b07e9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9b98f4da1cb4bdc # load x3 with value 0xb9b98f4da1cb4bdc
sd x3, 0(x2) # store 0xb9b98f4da1cb4bdc in memory
fld f31, 0(x2) # load 0xb9b98f4da1cb4bdc from memory into f31
li x3, 0xf86db4d77e77c1a9 # load x3 with value 0xf86db4d77e77c1a9
sd x3, 0(x2) # store 0xf86db4d77e77c1a9 in memory
fld f26, 0(x2) # load 0xf86db4d77e77c1a9 from memory into f26
fsub.d f26, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x457857813c4adae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8662648b235d4b6e # load x3 with value 0x8662648b235d4b6e
sd x3, 0(x2) # store 0x8662648b235d4b6e in memory
fld f16, 0(x2) # load 0x8662648b235d4b6e from memory into f16
li x3, 0xfd9345984387817f # load x3 with value 0xfd9345984387817f
sd x3, 0(x2) # store 0xfd9345984387817f in memory
fld f27, 0(x2) # load 0xfd9345984387817f from memory into f27
fsub.d f27, f16, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xb774a2e43caa17c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d39067b5c64d095 # load x3 with value 0x8d39067b5c64d095
sd x3, 0(x2) # store 0x8d39067b5c64d095 in memory
fld f20, 0(x2) # load 0x8d39067b5c64d095 from memory into f20
li x3, 0xfb3a24dd01b8c1dc # load x3 with value 0xfb3a24dd01b8c1dc
sd x3, 0(x2) # store 0xfb3a24dd01b8c1dc in memory
fld f28, 0(x2) # load 0xfb3a24dd01b8c1dc from memory into f28
fsub.d f28, f20, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xeddf435878017e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x414eeb23f56253aa # load x3 with value 0x414eeb23f56253aa
sd x3, 0(x2) # store 0x414eeb23f56253aa in memory
fld f13, 0(x2) # load 0x414eeb23f56253aa from memory into f13
li x3, 0xe126a384a8abf0ed # load x3 with value 0xe126a384a8abf0ed
sd x3, 0(x2) # store 0xe126a384a8abf0ed in memory
fld f29, 0(x2) # load 0xe126a384a8abf0ed from memory into f29
fsub.d f29, f13, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xf4c5a99f3f55b60b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52a6435c4766ec7a # load x3 with value 0x52a6435c4766ec7a
sd x3, 0(x2) # store 0x52a6435c4766ec7a in memory
fld f20, 0(x2) # load 0x52a6435c4766ec7a from memory into f20
li x3, 0xf126472c72d938a8 # load x3 with value 0xf126472c72d938a8
sd x3, 0(x2) # store 0xf126472c72d938a8 in memory
fld f30, 0(x2) # load 0xf126472c72d938a8 from memory into f30
fsub.d f30, f20, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x688010c07de06c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7faa3a16e9c9ca03 # load x3 with value 0x7faa3a16e9c9ca03
sd x3, 0(x2) # store 0x7faa3a16e9c9ca03 in memory
fld f18, 0(x2) # load 0x7faa3a16e9c9ca03 from memory into f18
li x3, 0xa90749f0a435ae53 # load x3 with value 0xa90749f0a435ae53
sd x3, 0(x2) # store 0xa90749f0a435ae53 in memory
fld f31, 0(x2) # load 0xa90749f0a435ae53 from memory into f31
fsub.d f31, f18, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x19, 0xbe92eb757c0b915a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0x31058bf0db643712 # load x3 with value 0x31058bf0db643712
sd x3, 0(x2) # store 0x31058bf0db643712 in memory
fld f23, 0(x2) # load 0x31058bf0db643712 from memory into f23
fsub.d f19, f18, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x11, 0x37801af56fea4bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0xced754c70b2b9a86 # load x3 with value 0xced754c70b2b9a86
sd x3, 0(x2) # store 0xced754c70b2b9a86 in memory
fld f15, 0(x2) # load 0xced754c70b2b9a86 from memory into f15
fsub.d f11, f13, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x16, 0x0b96581350bf9f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x4fe81786ee6d9d73 # load x3 with value 0x4fe81786ee6d9d73
sd x3, 0(x2) # store 0x4fe81786ee6d9d73 in memory
fld f20, 0(x2) # load 0x4fe81786ee6d9d73 from memory into f20
fsub.d f16, f7, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x23, 0x0836e842971b2642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
li x3, 0x2da5d8ebdc88bd06 # load x3 with value 0x2da5d8ebdc88bd06
sd x3, 0(x2) # store 0x2da5d8ebdc88bd06 in memory
fld f7, 0(x2) # load 0x2da5d8ebdc88bd06 from memory into f7
fsub.d f23, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x8, 0x58cc5e4423c0ac64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x303adbacafb613f0 # load x3 with value 0x303adbacafb613f0
sd x3, 0(x2) # store 0x303adbacafb613f0 in memory
fld f19, 0(x2) # load 0x303adbacafb613f0 from memory into f19
fsub.d f8, f16, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x20, 0x16b21e77b780a3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
li x3, 0x917718d059167bd5 # load x3 with value 0x917718d059167bd5
sd x3, 0(x2) # store 0x917718d059167bd5 in memory
fld f29, 0(x2) # load 0x917718d059167bd5 from memory into f29
fsub.d f20, f13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x18, 0xf10b183a9a494268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0xa7fdbd380961fc75 # load x3 with value 0xa7fdbd380961fc75
sd x3, 0(x2) # store 0xa7fdbd380961fc75 in memory
fld f3, 0(x2) # load 0xa7fdbd380961fc75 from memory into f3
fsub.d f18, f31, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x27, 0xd1830561331b09ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
li x3, 0x83d88c59fbccb8d3 # load x3 with value 0x83d88c59fbccb8d3
sd x3, 0(x2) # store 0x83d88c59fbccb8d3 in memory
fld f28, 0(x2) # load 0x83d88c59fbccb8d3 from memory into f28
fsub.d f27, f24, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x22, 0x353711b1e211be17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0xd8cada6d4d35923c # load x3 with value 0xd8cada6d4d35923c
sd x3, 0(x2) # store 0xd8cada6d4d35923c in memory
fld f18, 0(x2) # load 0xd8cada6d4d35923c from memory into f18
fsub.d f22, f5, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x28, 0x3cb473fb719af40f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0x7466e0548cd9e837 # load x3 with value 0x7466e0548cd9e837
sd x3, 0(x2) # store 0x7466e0548cd9e837 in memory
fld f4, 0(x2) # load 0x7466e0548cd9e837 from memory into f4
fsub.d f28, f13, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x4, 0xaa2d4f5cfd0e2768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
li x3, 0x47e59ff7089751b8 # load x3 with value 0x47e59ff7089751b8
sd x3, 0(x2) # store 0x47e59ff7089751b8 in memory
fld f26, 0(x2) # load 0x47e59ff7089751b8 from memory into f26
fsub.d f4, f29, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x8, 0xd7e586c4a5cfbac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x35f553620a8dd328 # load x3 with value 0x35f553620a8dd328
sd x3, 0(x2) # store 0x35f553620a8dd328 in memory
fld f13, 0(x2) # load 0x35f553620a8dd328 from memory into f13
fsub.d f8, f26, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x8, 0xf5b02669a5b55dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0xaa2fb2c1322c50c7 # load x3 with value 0xaa2fb2c1322c50c7
sd x3, 0(x2) # store 0xaa2fb2c1322c50c7 in memory
fld f30, 0(x2) # load 0xaa2fb2c1322c50c7 from memory into f30
fsub.d f8, f6, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x19, 0x8f8fe8182f868b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0x6f3ee20ed62fc4d0 # load x3 with value 0x6f3ee20ed62fc4d0
sd x3, 0(x2) # store 0x6f3ee20ed62fc4d0 in memory
fld f24, 0(x2) # load 0x6f3ee20ed62fc4d0 from memory into f24
fsub.d f19, f27, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x21, 0xf5726e1f55e6f67c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
li x3, 0x5261f8400b32409d # load x3 with value 0x5261f8400b32409d
sd x3, 0(x2) # store 0x5261f8400b32409d in memory
fld f14, 0(x2) # load 0x5261f8400b32409d from memory into f14
fsub.d f21, f22, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x4, 0x2d0e4ab7f7218653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x7ea36d0962413027 # load x3 with value 0x7ea36d0962413027
sd x3, 0(x2) # store 0x7ea36d0962413027 in memory
fld f18, 0(x2) # load 0x7ea36d0962413027 from memory into f18
fsub.d f4, f31, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x9, 0xecf0c36902e75619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0xef51d2bdab84ceb9 # load x3 with value 0xef51d2bdab84ceb9
sd x3, 0(x2) # store 0xef51d2bdab84ceb9 in memory
fld f14, 0(x2) # load 0xef51d2bdab84ceb9 from memory into f14
fsub.d f9, f3, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x13, 0xa631909c32ffcc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0x3a11180af60365bb # load x3 with value 0x3a11180af60365bb
sd x3, 0(x2) # store 0x3a11180af60365bb in memory
fld f12, 0(x2) # load 0x3a11180af60365bb from memory into f12
fsub.d f13, f20, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x24, 0x71de4128da202235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0xbbfe411701bf9671 # load x3 with value 0xbbfe411701bf9671
sd x3, 0(x2) # store 0xbbfe411701bf9671 in memory
fld f27, 0(x2) # load 0xbbfe411701bf9671 from memory into f27
fsub.d f24, f6, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x9, 0x0deb5e97463a34c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x7834a70424f345ae # load x3 with value 0x7834a70424f345ae
sd x3, 0(x2) # store 0x7834a70424f345ae in memory
fld f19, 0(x2) # load 0x7834a70424f345ae from memory into f19
fsub.d f9, f23, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x28, 0x22fd0fc157234293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x0ae75f5487b7cdbb # load x3 with value 0x0ae75f5487b7cdbb
sd x3, 0(x2) # store 0x0ae75f5487b7cdbb in memory
fld f2, 0(x2) # load 0x0ae75f5487b7cdbb from memory into f2
fsub.d f28, f11, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x22, 0x851c19b2d44c40cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0xa3d63074bdc7b735 # load x3 with value 0xa3d63074bdc7b735
sd x3, 0(x2) # store 0xa3d63074bdc7b735 in memory
fld f5, 0(x2) # load 0xa3d63074bdc7b735 from memory into f5
fsub.d f22, f3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x11, 0x912aa3ac1839aa9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0x3210da12f1c12168 # load x3 with value 0x3210da12f1c12168
sd x3, 0(x2) # store 0x3210da12f1c12168 in memory
fld f22, 0(x2) # load 0x3210da12f1c12168 from memory into f22
fsub.d f11, f6, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x31, 0xd445002a5b4f4e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
li x3, 0x5f6f368ccce1c9a6 # load x3 with value 0x5f6f368ccce1c9a6
sd x3, 0(x2) # store 0x5f6f368ccce1c9a6 in memory
fld f16, 0(x2) # load 0x5f6f368ccce1c9a6 from memory into f16
fsub.d f31, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x23, 0x7111d630484c3bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x457ae5e7865cb6df # load x3 with value 0x457ae5e7865cb6df
sd x3, 0(x2) # store 0x457ae5e7865cb6df in memory
fld f3, 0(x2) # load 0x457ae5e7865cb6df from memory into f3
fsub.d f23, f16, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x28, 0xef8a5314e1607417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
li x3, 0xc351c2a37b3752c3 # load x3 with value 0xc351c2a37b3752c3
sd x3, 0(x2) # store 0xc351c2a37b3752c3 in memory
fld f8, 0(x2) # load 0xc351c2a37b3752c3 from memory into f8
fsub.d f28, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x15, 0xdbbc50b4237a372d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1550bb8e11d0bdda # load x3 with value 0x1550bb8e11d0bdda
sd x3, 0(x2) # store 0x1550bb8e11d0bdda in memory
fld f31, 0(x2) # load 0x1550bb8e11d0bdda from memory into f31
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fsub.d f15, f31, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x19, 0x9c36500f7499b50a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x529bae9930e074c0 # load x3 with value 0x529bae9930e074c0
sd x3, 0(x2) # store 0x529bae9930e074c0 in memory
fld f8, 0(x2) # load 0x529bae9930e074c0 from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fsub.d f19, f8, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x12, 0xa625e69fcdbc82ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c1566928ae43719 # load x3 with value 0x2c1566928ae43719
sd x3, 0(x2) # store 0x2c1566928ae43719 in memory
fld f2, 0(x2) # load 0x2c1566928ae43719 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fsub.d f12, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x19, 0x86211b1e4facb467 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75a7fecb04da46c1 # load x3 with value 0x75a7fecb04da46c1
sd x3, 0(x2) # store 0x75a7fecb04da46c1 in memory
fld f24, 0(x2) # load 0x75a7fecb04da46c1 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fsub.d f19, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x17, 0x1ac26e19b1b7bd17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6d66c3e344182b2 # load x3 with value 0xb6d66c3e344182b2
sd x3, 0(x2) # store 0xb6d66c3e344182b2 in memory
fld f20, 0(x2) # load 0xb6d66c3e344182b2 from memory into f20
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fsub.d f17, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x15, 0x4f26f325ec22a2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f7f33c7e5a42a0c # load x3 with value 0x9f7f33c7e5a42a0c
sd x3, 0(x2) # store 0x9f7f33c7e5a42a0c in memory
fld f7, 0(x2) # load 0x9f7f33c7e5a42a0c from memory into f7
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fsub.d f15, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x9, 0x41c40066cc60ccf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x473cc081518235d5 # load x3 with value 0x473cc081518235d5
sd x3, 0(x2) # store 0x473cc081518235d5 in memory
fld f5, 0(x2) # load 0x473cc081518235d5 from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fsub.d f9, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x29, 0xe691a0890b494233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe2ab04d2c456353 # load x3 with value 0xbe2ab04d2c456353
sd x3, 0(x2) # store 0xbe2ab04d2c456353 in memory
fld f23, 0(x2) # load 0xbe2ab04d2c456353 from memory into f23
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fsub.d f29, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x21, 0xa9119f1e9b64e716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ec33a046658da61 # load x3 with value 0x6ec33a046658da61
sd x3, 0(x2) # store 0x6ec33a046658da61 in memory
fld f31, 0(x2) # load 0x6ec33a046658da61 from memory into f31
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fsub.d f21, f31, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x12, 0x50d2082c35b063da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8808f0f796bb6a62 # load x3 with value 0x8808f0f796bb6a62
sd x3, 0(x2) # store 0x8808f0f796bb6a62 in memory
fld f15, 0(x2) # load 0x8808f0f796bb6a62 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fsub.d f12, f15, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x25, 0xef78246ed891ca15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc710bd1fe91315f4 # load x3 with value 0xc710bd1fe91315f4
sd x3, 0(x2) # store 0xc710bd1fe91315f4 in memory
fld f13, 0(x2) # load 0xc710bd1fe91315f4 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
fsub.d f25, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x25, 0x2ff8ef9611790e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cb2e93392a28b2d # load x3 with value 0x7cb2e93392a28b2d
sd x3, 0(x2) # store 0x7cb2e93392a28b2d in memory
fld f2, 0(x2) # load 0x7cb2e93392a28b2d from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fsub.d f25, f2, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x2, 0x81e8818986e07cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9ff016b35a1829d # load x3 with value 0xe9ff016b35a1829d
sd x3, 0(x2) # store 0xe9ff016b35a1829d in memory
fld f29, 0(x2) # load 0xe9ff016b35a1829d from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fsub.d f2, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x23, 0x83092207b6594049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17ce1a0bac7974e6 # load x3 with value 0x17ce1a0bac7974e6
sd x3, 0(x2) # store 0x17ce1a0bac7974e6 in memory
fld f12, 0(x2) # load 0x17ce1a0bac7974e6 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fsub.d f23, f12, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x28, 0x49d92a755cea97b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9678bc74f0c3b08b # load x3 with value 0x9678bc74f0c3b08b
sd x3, 0(x2) # store 0x9678bc74f0c3b08b in memory
fld f21, 0(x2) # load 0x9678bc74f0c3b08b from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fsub.d f28, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x16, 0x2fd2bdd2ed13f906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf147e8948d55b8c # load x3 with value 0xdf147e8948d55b8c
sd x3, 0(x2) # store 0xdf147e8948d55b8c in memory
fld f29, 0(x2) # load 0xdf147e8948d55b8c from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsub.d f16, f29, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x9, 0x834e4363ab6927cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94326b336d79e702 # load x3 with value 0x94326b336d79e702
sd x3, 0(x2) # store 0x94326b336d79e702 in memory
fld f15, 0(x2) # load 0x94326b336d79e702 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fsub.d f9, f15, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x19, 0xf7fc7e79fac304b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5efde24815532c2f # load x3 with value 0x5efde24815532c2f
sd x3, 0(x2) # store 0x5efde24815532c2f in memory
fld f3, 0(x2) # load 0x5efde24815532c2f from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fsub.d f19, f3, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x19, 0x20b0559c4f2cf278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d05c1f4a4d06660 # load x3 with value 0x7d05c1f4a4d06660
sd x3, 0(x2) # store 0x7d05c1f4a4d06660 in memory
fld f14, 0(x2) # load 0x7d05c1f4a4d06660 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fsub.d f19, f14, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x20, 0xe3240c4757f9fa91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa475fe5a13470e58 # load x3 with value 0xa475fe5a13470e58
sd x3, 0(x2) # store 0xa475fe5a13470e58 in memory
fld f11, 0(x2) # load 0xa475fe5a13470e58 from memory into f11
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fsub.d f20, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x9, 0xdf23043ca74349c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x421e7de8e945c163 # load x3 with value 0x421e7de8e945c163
sd x3, 0(x2) # store 0x421e7de8e945c163 in memory
fld f13, 0(x2) # load 0x421e7de8e945c163 from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fsub.d f9, f13, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x18, 0xa2212390e455f5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8396e88dc5fcb82 # load x3 with value 0xd8396e88dc5fcb82
sd x3, 0(x2) # store 0xd8396e88dc5fcb82 in memory
fld f23, 0(x2) # load 0xd8396e88dc5fcb82 from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fsub.d f18, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x24, 0xab5593194a9380ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46a11a371b609da3 # load x3 with value 0x46a11a371b609da3
sd x3, 0(x2) # store 0x46a11a371b609da3 in memory
fld f9, 0(x2) # load 0x46a11a371b609da3 from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fsub.d f24, f9, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x15, 0x656689bb2bd69869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaf533fda77648ee # load x3 with value 0xbaf533fda77648ee
sd x3, 0(x2) # store 0xbaf533fda77648ee in memory
fld f1, 0(x2) # load 0xbaf533fda77648ee from memory into f1
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fsub.d f15, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x5, 0xdd11ebc9fa58e162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4efd9c73b996d1f7 # load x3 with value 0x4efd9c73b996d1f7
sd x3, 0(x2) # store 0x4efd9c73b996d1f7 in memory
fld f15, 0(x2) # load 0x4efd9c73b996d1f7 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fsub.d f5, f15, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x26, 0x0f376e79b163f6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa598ddce20eca5ce # load x3 with value 0xa598ddce20eca5ce
sd x3, 0(x2) # store 0xa598ddce20eca5ce in memory
fld f25, 0(x2) # load 0xa598ddce20eca5ce from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fsub.d f26, f25, f30 # perform operation

# Testcase cp_frm
li x7, 0x568830a2d7054f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1863da98fcc9beef # load x3 with value 0x1863da98fcc9beef
sd x3, 0(x2) # store 0x1863da98fcc9beef in memory
fld f19, 0(x2) # load 0x1863da98fcc9beef from memory into f19
li x3, 0x6a8b11855808e8f7 # load x3 with value 0x6a8b11855808e8f7
sd x3, 0(x2) # store 0x6a8b11855808e8f7 in memory
fld f10, 0(x2) # load 0x6a8b11855808e8f7 from memory into f10
fsub.d f7, f19, f10, dyn # perform operation
fsub.d f7, f19, f10, rdn # perform operation
fsub.d f7, f19, f10, rmm # perform operation
fsub.d f7, f19, f10, rne # perform operation
fsub.d f7, f19, f10, rtz # perform operation
fsub.d f7, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x24, 0x9de471825930f125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fsub.d f24, f30, f22, dyn # perform operation
fsub.d f24, f30, f22, rdn # perform operation
fsub.d f24, f30, f22, rmm # perform operation
fsub.d f24, f30, f22, rne # perform operation
fsub.d f24, f30, f22, rtz # perform operation
fsub.d f24, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x20, 0x716f0679031fa0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fsub.d f20, f9, f5, dyn # perform operation
fsub.d f20, f9, f5, rdn # perform operation
fsub.d f20, f9, f5, rmm # perform operation
fsub.d f20, f9, f5, rne # perform operation
fsub.d f20, f9, f5, rtz # perform operation
fsub.d f20, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x5, 0x55df45cba7d69558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fsub.d f5, f7, f17, dyn # perform operation
fsub.d f5, f7, f17, rdn # perform operation
fsub.d f5, f7, f17, rmm # perform operation
fsub.d f5, f7, f17, rne # perform operation
fsub.d f5, f7, f17, rtz # perform operation
fsub.d f5, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x22, 0xa6444ae4fb337532 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fsub.d f22, f7, f10, dyn # perform operation
fsub.d f22, f7, f10, rdn # perform operation
fsub.d f22, f7, f10, rmm # perform operation
fsub.d f22, f7, f10, rne # perform operation
fsub.d f22, f7, f10, rtz # perform operation
fsub.d f22, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x16, 0x792c0f542efbc187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fsub.d f16, f6, f1, dyn # perform operation
fsub.d f16, f6, f1, rdn # perform operation
fsub.d f16, f6, f1, rmm # perform operation
fsub.d f16, f6, f1, rne # perform operation
fsub.d f16, f6, f1, rtz # perform operation
fsub.d f16, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x8, 0x2679728e257ace0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fsub.d f8, f18, f6, dyn # perform operation
fsub.d f8, f18, f6, rdn # perform operation
fsub.d f8, f18, f6, rmm # perform operation
fsub.d f8, f18, f6, rne # perform operation
fsub.d f8, f18, f6, rtz # perform operation
fsub.d f8, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x27, 0xb74dc955efdd9fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fsub.d f27, f21, f10, dyn # perform operation
fsub.d f27, f21, f10, rdn # perform operation
fsub.d f27, f21, f10, rmm # perform operation
fsub.d f27, f21, f10, rne # perform operation
fsub.d f27, f21, f10, rtz # perform operation
fsub.d f27, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x22, 0x7dca5dd11787ce1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fsub.d f22, f26, f11, dyn # perform operation
fsub.d f22, f26, f11, rdn # perform operation
fsub.d f22, f26, f11, rmm # perform operation
fsub.d f22, f26, f11, rne # perform operation
fsub.d f22, f26, f11, rtz # perform operation
fsub.d f22, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x4, 0x5efffb82d44a235e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
fsub.d f4, f7, f15, dyn # perform operation
fsub.d f4, f7, f15, rdn # perform operation
fsub.d f4, f7, f15, rmm # perform operation
fsub.d f4, f7, f15, rne # perform operation
fsub.d f4, f7, f15, rtz # perform operation
fsub.d f4, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x31, 0xccf7492ed9a55db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fsub.d f31, f22, f5, dyn # perform operation
fsub.d f31, f22, f5, rdn # perform operation
fsub.d f31, f22, f5, rmm # perform operation
fsub.d f31, f22, f5, rne # perform operation
fsub.d f31, f22, f5, rtz # perform operation
fsub.d f31, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x7, 0xc51a0a785964a925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fsub.d f7, f22, f14, dyn # perform operation
fsub.d f7, f22, f14, rdn # perform operation
fsub.d f7, f22, f14, rmm # perform operation
fsub.d f7, f22, f14, rne # perform operation
fsub.d f7, f22, f14, rtz # perform operation
fsub.d f7, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x26, 0x0208d081aa8935c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fsub.d f26, f8, f14, dyn # perform operation
fsub.d f26, f8, f14, rdn # perform operation
fsub.d f26, f8, f14, rmm # perform operation
fsub.d f26, f8, f14, rne # perform operation
fsub.d f26, f8, f14, rtz # perform operation
fsub.d f26, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x17, 0x4cb57626d35093a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fsub.d f17, f7, f2, dyn # perform operation
fsub.d f17, f7, f2, rdn # perform operation
fsub.d f17, f7, f2, rmm # perform operation
fsub.d f17, f7, f2, rne # perform operation
fsub.d f17, f7, f2, rtz # perform operation
fsub.d f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x31, 0xb06481657ce7c580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fsub.d f31, f4, f24, dyn # perform operation
fsub.d f31, f4, f24, rdn # perform operation
fsub.d f31, f4, f24, rmm # perform operation
fsub.d f31, f4, f24, rne # perform operation
fsub.d f31, f4, f24, rtz # perform operation
fsub.d f31, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x15, 0x8afcccf9be142f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fsub.d f15, f14, f21, dyn # perform operation
fsub.d f15, f14, f21, rdn # perform operation
fsub.d f15, f14, f21, rmm # perform operation
fsub.d f15, f14, f21, rne # perform operation
fsub.d f15, f14, f21, rtz # perform operation
fsub.d f15, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x19, 0x8f91e7732ffc2c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fsub.d f19, f13, f18, dyn # perform operation
fsub.d f19, f13, f18, rdn # perform operation
fsub.d f19, f13, f18, rmm # perform operation
fsub.d f19, f13, f18, rne # perform operation
fsub.d f19, f13, f18, rtz # perform operation
fsub.d f19, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x17, 0x1baf9daae7651a9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fsub.d f17, f5, f15, dyn # perform operation
fsub.d f17, f5, f15, rdn # perform operation
fsub.d f17, f5, f15, rmm # perform operation
fsub.d f17, f5, f15, rne # perform operation
fsub.d f17, f5, f15, rtz # perform operation
fsub.d f17, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x31, 0xab018cb33965d80f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fsub.d f31, f22, f6, dyn # perform operation
fsub.d f31, f22, f6, rdn # perform operation
fsub.d f31, f22, f6, rmm # perform operation
fsub.d f31, f22, f6, rne # perform operation
fsub.d f31, f22, f6, rtz # perform operation
fsub.d f31, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x8, 0x9b104d0f7ab94709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fsub.d f8, f15, f7, dyn # perform operation
fsub.d f8, f15, f7, rdn # perform operation
fsub.d f8, f15, f7, rmm # perform operation
fsub.d f8, f15, f7, rne # perform operation
fsub.d f8, f15, f7, rtz # perform operation
fsub.d f8, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x14, 0xecfdaf04e8b586ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fsub.d f14, f11, f27, dyn # perform operation
fsub.d f14, f11, f27, rdn # perform operation
fsub.d f14, f11, f27, rmm # perform operation
fsub.d f14, f11, f27, rne # perform operation
fsub.d f14, f11, f27, rtz # perform operation
fsub.d f14, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x12, 0xb82dc63d1b6ba596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fsub.d f12, f29, f9, dyn # perform operation
fsub.d f12, f29, f9, rdn # perform operation
fsub.d f12, f29, f9, rmm # perform operation
fsub.d f12, f29, f9, rne # perform operation
fsub.d f12, f29, f9, rtz # perform operation
fsub.d f12, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x2, 0xf65ca676d51eb645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
fsub.d f2, f31, f4, dyn # perform operation
fsub.d f2, f31, f4, rdn # perform operation
fsub.d f2, f31, f4, rmm # perform operation
fsub.d f2, f31, f4, rne # perform operation
fsub.d f2, f31, f4, rtz # perform operation
fsub.d f2, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x17, 0x2010c7bdde282305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
fsub.d f17, f31, f4, dyn # perform operation
fsub.d f17, f31, f4, rdn # perform operation
fsub.d f17, f31, f4, rmm # perform operation
fsub.d f17, f31, f4, rne # perform operation
fsub.d f17, f31, f4, rtz # perform operation
fsub.d f17, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x2, 0xe243dfe6c21db307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fsub.d f2, f4, f20, dyn # perform operation
fsub.d f2, f4, f20, rdn # perform operation
fsub.d f2, f4, f20, rmm # perform operation
fsub.d f2, f4, f20, rne # perform operation
fsub.d f2, f4, f20, rtz # perform operation
fsub.d f2, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x23, 0xd6d30c3f18e51c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fsub.d f23, f24, f29, dyn # perform operation
fsub.d f23, f24, f29, rdn # perform operation
fsub.d f23, f24, f29, rmm # perform operation
fsub.d f23, f24, f29, rne # perform operation
fsub.d f23, f24, f29, rtz # perform operation
fsub.d f23, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x20, 0x129f0a9af8275266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fsub.d f20, f26, f9, dyn # perform operation
fsub.d f20, f26, f9, rdn # perform operation
fsub.d f20, f26, f9, rmm # perform operation
fsub.d f20, f26, f9, rne # perform operation
fsub.d f20, f26, f9, rtz # perform operation
fsub.d f20, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x17, 0x9c620468af1b79c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fsub.d f17, f26, f13, dyn # perform operation
fsub.d f17, f26, f13, rdn # perform operation
fsub.d f17, f26, f13, rmm # perform operation
fsub.d f17, f26, f13, rne # perform operation
fsub.d f17, f26, f13, rtz # perform operation
fsub.d f17, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x3, 0x052442c151a5c767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fsub.d f3, f18, f12, dyn # perform operation
fsub.d f3, f18, f12, rdn # perform operation
fsub.d f3, f18, f12, rmm # perform operation
fsub.d f3, f18, f12, rne # perform operation
fsub.d f3, f18, f12, rtz # perform operation
fsub.d f3, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x25, 0x349cce22086efced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
fsub.d f25, f24, f30, dyn # perform operation
fsub.d f25, f24, f30, rdn # perform operation
fsub.d f25, f24, f30, rmm # perform operation
fsub.d f25, f24, f30, rne # perform operation
fsub.d f25, f24, f30, rtz # perform operation
fsub.d f25, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x11, 0x164bbc05f8260847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fsub.d f11, f16, f25, dyn # perform operation
fsub.d f11, f16, f25, rdn # perform operation
fsub.d f11, f16, f25, rmm # perform operation
fsub.d f11, f16, f25, rne # perform operation
fsub.d f11, f16, f25, rtz # perform operation
fsub.d f11, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x1520fe6203bacece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fsub.d f28, f14, f4, dyn # perform operation
fsub.d f28, f14, f4, rdn # perform operation
fsub.d f28, f14, f4, rmm # perform operation
fsub.d f28, f14, f4, rne # perform operation
fsub.d f28, f14, f4, rtz # perform operation
fsub.d f28, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x24, 0xdf2667e541463f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fsub.d f24, f25, f13, dyn # perform operation
fsub.d f24, f25, f13, rdn # perform operation
fsub.d f24, f25, f13, rmm # perform operation
fsub.d f24, f25, f13, rne # perform operation
fsub.d f24, f25, f13, rtz # perform operation
fsub.d f24, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x6, 0x681e2ea14bca7ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fsub.d f6, f25, f1, dyn # perform operation
fsub.d f6, f25, f1, rdn # perform operation
fsub.d f6, f25, f1, rmm # perform operation
fsub.d f6, f25, f1, rne # perform operation
fsub.d f6, f25, f1, rtz # perform operation
fsub.d f6, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x13, 0x84c0f6866f8beaf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fsub.d f13, f25, f9, dyn # perform operation
fsub.d f13, f25, f9, rdn # perform operation
fsub.d f13, f25, f9, rmm # perform operation
fsub.d f13, f25, f9, rne # perform operation
fsub.d f13, f25, f9, rtz # perform operation
fsub.d f13, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x10, 0xd0b5bd8441a1fd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fsub.d f10, f17, f21, dyn # perform operation
fsub.d f10, f17, f21, rdn # perform operation
fsub.d f10, f17, f21, rmm # perform operation
fsub.d f10, f17, f21, rne # perform operation
fsub.d f10, f17, f21, rtz # perform operation
fsub.d f10, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x26, 0x26fe0e9b44a01665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fsub.d f26, f15, f9, dyn # perform operation
fsub.d f26, f15, f9, rdn # perform operation
fsub.d f26, f15, f9, rmm # perform operation
fsub.d f26, f15, f9, rne # perform operation
fsub.d f26, f15, f9, rtz # perform operation
fsub.d f26, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x26, 0x2a24552d57c14b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fsub.d f26, f28, f8, dyn # perform operation
fsub.d f26, f28, f8, rdn # perform operation
fsub.d f26, f28, f8, rmm # perform operation
fsub.d f26, f28, f8, rne # perform operation
fsub.d f26, f28, f8, rtz # perform operation
fsub.d f26, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x19, 0x876d7404a864a519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
fsub.d f19, f26, f23, dyn # perform operation
fsub.d f19, f26, f23, rdn # perform operation
fsub.d f19, f26, f23, rmm # perform operation
fsub.d f19, f26, f23, rne # perform operation
fsub.d f19, f26, f23, rtz # perform operation
fsub.d f19, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x21, 0x489fb97e1b8863fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fsub.d f21, f7, f25, dyn # perform operation
fsub.d f21, f7, f25, rdn # perform operation
fsub.d f21, f7, f25, rmm # perform operation
fsub.d f21, f7, f25, rne # perform operation
fsub.d f21, f7, f25, rtz # perform operation
fsub.d f21, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x11, 0x612824968c99f950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fsub.d f11, f30, f10, dyn # perform operation
fsub.d f11, f30, f10, rdn # perform operation
fsub.d f11, f30, f10, rmm # perform operation
fsub.d f11, f30, f10, rne # perform operation
fsub.d f11, f30, f10, rtz # perform operation
fsub.d f11, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x1, 0x08331ebb12b7adfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fsub.d f1, f11, f4, dyn # perform operation
fsub.d f1, f11, f4, rdn # perform operation
fsub.d f1, f11, f4, rmm # perform operation
fsub.d f1, f11, f4, rne # perform operation
fsub.d f1, f11, f4, rtz # perform operation
fsub.d f1, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x2, 0x7f8ef3928f805a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fsub.d f2, f11, f18, dyn # perform operation
fsub.d f2, f11, f18, rdn # perform operation
fsub.d f2, f11, f18, rmm # perform operation
fsub.d f2, f11, f18, rne # perform operation
fsub.d f2, f11, f18, rtz # perform operation
fsub.d f2, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x21, 0xcacdd7fc0dcec82c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fsub.d f21, f30, f18, dyn # perform operation
fsub.d f21, f30, f18, rdn # perform operation
fsub.d f21, f30, f18, rmm # perform operation
fsub.d f21, f30, f18, rne # perform operation
fsub.d f21, f30, f18, rtz # perform operation
fsub.d f21, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x28, 0x2406b30be85b259b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fsub.d f28, f11, f27, dyn # perform operation
fsub.d f28, f11, f27, rdn # perform operation
fsub.d f28, f11, f27, rmm # perform operation
fsub.d f28, f11, f27, rne # perform operation
fsub.d f28, f11, f27, rtz # perform operation
fsub.d f28, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x6, 0xbeac0d5187f50979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fsub.d f6, f29, f19, dyn # perform operation
fsub.d f6, f29, f19, rdn # perform operation
fsub.d f6, f29, f19, rmm # perform operation
fsub.d f6, f29, f19, rne # perform operation
fsub.d f6, f29, f19, rtz # perform operation
fsub.d f6, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x22, 0x478b866c67c79778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
fsub.d f22, f4, f21, dyn # perform operation
fsub.d f22, f4, f21, rdn # perform operation
fsub.d f22, f4, f21, rmm # perform operation
fsub.d f22, f4, f21, rne # perform operation
fsub.d f22, f4, f21, rtz # perform operation
fsub.d f22, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x21, 0xda946aa156da61ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fsub.d f21, f9, f5, dyn # perform operation
fsub.d f21, f9, f5, rdn # perform operation
fsub.d f21, f9, f5, rmm # perform operation
fsub.d f21, f9, f5, rne # perform operation
fsub.d f21, f9, f5, rtz # perform operation
fsub.d f21, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x3, 0x674f5b784d026fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fsub.d f3, f23, f21, dyn # perform operation
fsub.d f3, f23, f21, rdn # perform operation
fsub.d f3, f23, f21, rmm # perform operation
fsub.d f3, f23, f21, rne # perform operation
fsub.d f3, f23, f21, rtz # perform operation
fsub.d f3, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x2f2bda6e7136a19e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fsub.d f24, f14, f8, dyn # perform operation
fsub.d f24, f14, f8, rdn # perform operation
fsub.d f24, f14, f8, rmm # perform operation
fsub.d f24, f14, f8, rne # perform operation
fsub.d f24, f14, f8, rtz # perform operation
fsub.d f24, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x28, 0x22d63f7cc5e88883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fsub.d f28, f11, f10, dyn # perform operation
fsub.d f28, f11, f10, rdn # perform operation
fsub.d f28, f11, f10, rmm # perform operation
fsub.d f28, f11, f10, rne # perform operation
fsub.d f28, f11, f10, rtz # perform operation
fsub.d f28, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0xc5bb1ee3d17e399a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fsub.d f26, f3, f7, dyn # perform operation
fsub.d f26, f3, f7, rdn # perform operation
fsub.d f26, f3, f7, rmm # perform operation
fsub.d f26, f3, f7, rne # perform operation
fsub.d f26, f3, f7, rtz # perform operation
fsub.d f26, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x21, 0x261e7a153f1d0c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fsub.d f21, f15, f22, dyn # perform operation
fsub.d f21, f15, f22, rdn # perform operation
fsub.d f21, f15, f22, rmm # perform operation
fsub.d f21, f15, f22, rne # perform operation
fsub.d f21, f15, f22, rtz # perform operation
fsub.d f21, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x28, 0x9e629ea6259b8b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fsub.d f28, f10, f29, dyn # perform operation
fsub.d f28, f10, f29, rdn # perform operation
fsub.d f28, f10, f29, rmm # perform operation
fsub.d f28, f10, f29, rne # perform operation
fsub.d f28, f10, f29, rtz # perform operation
fsub.d f28, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x13, 0xbab3497589a829e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fsub.d f13, f20, f19, dyn # perform operation
fsub.d f13, f20, f19, rdn # perform operation
fsub.d f13, f20, f19, rmm # perform operation
fsub.d f13, f20, f19, rne # perform operation
fsub.d f13, f20, f19, rtz # perform operation
fsub.d f13, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x16, 0x56dbf767f6f071ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fsub.d f16, f1, f21, dyn # perform operation
fsub.d f16, f1, f21, rdn # perform operation
fsub.d f16, f1, f21, rmm # perform operation
fsub.d f16, f1, f21, rne # perform operation
fsub.d f16, f1, f21, rtz # perform operation
fsub.d f16, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x30, 0x7fffafaf4ea51bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fsub.d f30, f31, f23, dyn # perform operation
fsub.d f30, f31, f23, rdn # perform operation
fsub.d f30, f31, f23, rmm # perform operation
fsub.d f30, f31, f23, rne # perform operation
fsub.d f30, f31, f23, rtz # perform operation
fsub.d f30, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x25, 0x7d42bd80cb9f169c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fsub.d f25, f16, f21, dyn # perform operation
fsub.d f25, f16, f21, rdn # perform operation
fsub.d f25, f16, f21, rmm # perform operation
fsub.d f25, f16, f21, rne # perform operation
fsub.d f25, f16, f21, rtz # perform operation
fsub.d f25, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x22, 0xb802fd0a52dbb26f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fsub.d f22, f21, f1, dyn # perform operation
fsub.d f22, f21, f1, rdn # perform operation
fsub.d f22, f21, f1, rmm # perform operation
fsub.d f22, f21, f1, rne # perform operation
fsub.d f22, f21, f1, rtz # perform operation
fsub.d f22, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x26, 0x49b9038833b754b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fsub.d f26, f2, f1, dyn # perform operation
fsub.d f26, f2, f1, rdn # perform operation
fsub.d f26, f2, f1, rmm # perform operation
fsub.d f26, f2, f1, rne # perform operation
fsub.d f26, f2, f1, rtz # perform operation
fsub.d f26, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x17, 0xa6c9342448d4dc92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fsub.d f17, f30, f8, dyn # perform operation
fsub.d f17, f30, f8, rdn # perform operation
fsub.d f17, f30, f8, rmm # perform operation
fsub.d f17, f30, f8, rne # perform operation
fsub.d f17, f30, f8, rtz # perform operation
fsub.d f17, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x24, 0x5d51fd54fa48b504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fsub.d f24, f16, f14, dyn # perform operation
fsub.d f24, f16, f14, rdn # perform operation
fsub.d f24, f16, f14, rmm # perform operation
fsub.d f24, f16, f14, rne # perform operation
fsub.d f24, f16, f14, rtz # perform operation
fsub.d f24, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x17, 0xdae1122ddddc860f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fsub.d f17, f24, f26, dyn # perform operation
fsub.d f17, f24, f26, rdn # perform operation
fsub.d f17, f24, f26, rmm # perform operation
fsub.d f17, f24, f26, rne # perform operation
fsub.d f17, f24, f26, rtz # perform operation
fsub.d f17, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x24, 0xb651d649d258cd3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsub.d f24, f26, f28, dyn # perform operation
fsub.d f24, f26, f28, rdn # perform operation
fsub.d f24, f26, f28, rmm # perform operation
fsub.d f24, f26, f28, rne # perform operation
fsub.d f24, f26, f28, rtz # perform operation
fsub.d f24, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x1, 0x156dbfc20c98cbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fsub.d f1, f15, f17, dyn # perform operation
fsub.d f1, f15, f17, rdn # perform operation
fsub.d f1, f15, f17, rmm # perform operation
fsub.d f1, f15, f17, rne # perform operation
fsub.d f1, f15, f17, rtz # perform operation
fsub.d f1, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x14, 0xead269e2d7af7350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fsub.d f14, f6, f27, dyn # perform operation
fsub.d f14, f6, f27, rdn # perform operation
fsub.d f14, f6, f27, rmm # perform operation
fsub.d f14, f6, f27, rne # perform operation
fsub.d f14, f6, f27, rtz # perform operation
fsub.d f14, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x20, 0x299d768d071a339c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fsub.d f20, f17, f19, dyn # perform operation
fsub.d f20, f17, f19, rdn # perform operation
fsub.d f20, f17, f19, rmm # perform operation
fsub.d f20, f17, f19, rne # perform operation
fsub.d f20, f17, f19, rtz # perform operation
fsub.d f20, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x14, 0x1d0e22ad5b94905a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fsub.d f14, f17, f3, dyn # perform operation
fsub.d f14, f17, f3, rdn # perform operation
fsub.d f14, f17, f3, rmm # perform operation
fsub.d f14, f17, f3, rne # perform operation
fsub.d f14, f17, f3, rtz # perform operation
fsub.d f14, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x28, 0x6f644a100508f8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fsub.d f28, f6, f12, dyn # perform operation
fsub.d f28, f6, f12, rdn # perform operation
fsub.d f28, f6, f12, rmm # perform operation
fsub.d f28, f6, f12, rne # perform operation
fsub.d f28, f6, f12, rtz # perform operation
fsub.d f28, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x23, 0xee89d37d529d2e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fsub.d f23, f29, f12, dyn # perform operation
fsub.d f23, f29, f12, rdn # perform operation
fsub.d f23, f29, f12, rmm # perform operation
fsub.d f23, f29, f12, rne # perform operation
fsub.d f23, f29, f12, rtz # perform operation
fsub.d f23, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x29, 0x533cb3cefd9fdd9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fsub.d f29, f27, f3, dyn # perform operation
fsub.d f29, f27, f3, rdn # perform operation
fsub.d f29, f27, f3, rmm # perform operation
fsub.d f29, f27, f3, rne # perform operation
fsub.d f29, f27, f3, rtz # perform operation
fsub.d f29, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x11, 0xb2f761ce7ad666b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fsub.d f11, f5, f1, dyn # perform operation
fsub.d f11, f5, f1, rdn # perform operation
fsub.d f11, f5, f1, rmm # perform operation
fsub.d f11, f5, f1, rne # perform operation
fsub.d f11, f5, f1, rtz # perform operation
fsub.d f11, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x8, 0x57034d2ecde2dadb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fsub.d f8, f17, f2, dyn # perform operation
fsub.d f8, f17, f2, rdn # perform operation
fsub.d f8, f17, f2, rmm # perform operation
fsub.d f8, f17, f2, rne # perform operation
fsub.d f8, f17, f2, rtz # perform operation
fsub.d f8, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x30, 0xf0a70f1792a624c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fsub.d f30, f26, f31, dyn # perform operation
fsub.d f30, f26, f31, rdn # perform operation
fsub.d f30, f26, f31, rmm # perform operation
fsub.d f30, f26, f31, rne # perform operation
fsub.d f30, f26, f31, rtz # perform operation
fsub.d f30, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x22, 0x1e711d694dca972b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fsub.d f22, f27, f15, dyn # perform operation
fsub.d f22, f27, f15, rdn # perform operation
fsub.d f22, f27, f15, rmm # perform operation
fsub.d f22, f27, f15, rne # perform operation
fsub.d f22, f27, f15, rtz # perform operation
fsub.d f22, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x18, 0xfdbd414e64b475f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fsub.d f18, f3, f2, dyn # perform operation
fsub.d f18, f3, f2, rdn # perform operation
fsub.d f18, f3, f2, rmm # perform operation
fsub.d f18, f3, f2, rne # perform operation
fsub.d f18, f3, f2, rtz # perform operation
fsub.d f18, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x24, 0x7c3573bf326cfa30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fsub.d f24, f18, f15, dyn # perform operation
fsub.d f24, f18, f15, rdn # perform operation
fsub.d f24, f18, f15, rmm # perform operation
fsub.d f24, f18, f15, rne # perform operation
fsub.d f24, f18, f15, rtz # perform operation
fsub.d f24, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0xd2b04f3036e87df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fsub.d f2, f5, f9, dyn # perform operation
fsub.d f2, f5, f9, rdn # perform operation
fsub.d f2, f5, f9, rmm # perform operation
fsub.d f2, f5, f9, rne # perform operation
fsub.d f2, f5, f9, rtz # perform operation
fsub.d f2, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x4, 0x8773eded7c4b06c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fsub.d f4, f25, f26, dyn # perform operation
fsub.d f4, f25, f26, rdn # perform operation
fsub.d f4, f25, f26, rmm # perform operation
fsub.d f4, f25, f26, rne # perform operation
fsub.d f4, f25, f26, rtz # perform operation
fsub.d f4, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x8, 0x11260c014116a935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fsub.d f8, f16, f2, dyn # perform operation
fsub.d f8, f16, f2, rdn # perform operation
fsub.d f8, f16, f2, rmm # perform operation
fsub.d f8, f16, f2, rne # perform operation
fsub.d f8, f16, f2, rtz # perform operation
fsub.d f8, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x9, 0xbd02069ab80c4011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fsub.d f9, f17, f18, dyn # perform operation
fsub.d f9, f17, f18, rdn # perform operation
fsub.d f9, f17, f18, rmm # perform operation
fsub.d f9, f17, f18, rne # perform operation
fsub.d f9, f17, f18, rtz # perform operation
fsub.d f9, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x21, 0xcf907f4a0d73a0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fsub.d f21, f9, f1, dyn # perform operation
fsub.d f21, f9, f1, rdn # perform operation
fsub.d f21, f9, f1, rmm # perform operation
fsub.d f21, f9, f1, rne # perform operation
fsub.d f21, f9, f1, rtz # perform operation
fsub.d f21, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x7, 0xccc3528e3a2a8b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fsub.d f7, f30, f31, dyn # perform operation
fsub.d f7, f30, f31, rdn # perform operation
fsub.d f7, f30, f31, rmm # perform operation
fsub.d f7, f30, f31, rne # perform operation
fsub.d f7, f30, f31, rtz # perform operation
fsub.d f7, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x12, 0x4990d9196a56edd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fsub.d f12, f17, f15, dyn # perform operation
fsub.d f12, f17, f15, rdn # perform operation
fsub.d f12, f17, f15, rmm # perform operation
fsub.d f12, f17, f15, rne # perform operation
fsub.d f12, f17, f15, rtz # perform operation
fsub.d f12, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x13, 0x62f8355048c0dfad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
fsub.d f13, f30, f28, dyn # perform operation
fsub.d f13, f30, f28, rdn # perform operation
fsub.d f13, f30, f28, rmm # perform operation
fsub.d f13, f30, f28, rne # perform operation
fsub.d f13, f30, f28, rtz # perform operation
fsub.d f13, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x7, 0xd9a684554a09c462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fsub.d f7, f5, f21, dyn # perform operation
fsub.d f7, f5, f21, rdn # perform operation
fsub.d f7, f5, f21, rmm # perform operation
fsub.d f7, f5, f21, rne # perform operation
fsub.d f7, f5, f21, rtz # perform operation
fsub.d f7, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x24, 0x1de5d329891be47a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fsub.d f24, f4, f10, dyn # perform operation
fsub.d f24, f4, f10, rdn # perform operation
fsub.d f24, f4, f10, rmm # perform operation
fsub.d f24, f4, f10, rne # perform operation
fsub.d f24, f4, f10, rtz # perform operation
fsub.d f24, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x20, 0xf1973fc3b3068d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fsub.d f20, f31, f1, dyn # perform operation
fsub.d f20, f31, f1, rdn # perform operation
fsub.d f20, f31, f1, rmm # perform operation
fsub.d f20, f31, f1, rne # perform operation
fsub.d f20, f31, f1, rtz # perform operation
fsub.d f20, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x19, 0x5af2b21e4e0c928f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fsub.d f19, f28, f10, dyn # perform operation
fsub.d f19, f28, f10, rdn # perform operation
fsub.d f19, f28, f10, rmm # perform operation
fsub.d f19, f28, f10, rne # perform operation
fsub.d f19, f28, f10, rtz # perform operation
fsub.d f19, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0x502fa994c61861ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fsub.d f25, f15, f22, dyn # perform operation
fsub.d f25, f15, f22, rdn # perform operation
fsub.d f25, f15, f22, rmm # perform operation
fsub.d f25, f15, f22, rne # perform operation
fsub.d f25, f15, f22, rtz # perform operation
fsub.d f25, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x2, 0xb0f001044ef446f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fsub.d f2, f8, f29, dyn # perform operation
fsub.d f2, f8, f29, rdn # perform operation
fsub.d f2, f8, f29, rmm # perform operation
fsub.d f2, f8, f29, rne # perform operation
fsub.d f2, f8, f29, rtz # perform operation
fsub.d f2, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x25, 0xb1e4ecd171addb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fsub.d f25, f16, f28, dyn # perform operation
fsub.d f25, f16, f28, rdn # perform operation
fsub.d f25, f16, f28, rmm # perform operation
fsub.d f25, f16, f28, rne # perform operation
fsub.d f25, f16, f28, rtz # perform operation
fsub.d f25, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x2263c107edea9fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fsub.d f25, f27, f8, dyn # perform operation
fsub.d f25, f27, f8, rdn # perform operation
fsub.d f25, f27, f8, rmm # perform operation
fsub.d f25, f27, f8, rne # perform operation
fsub.d f25, f27, f8, rtz # perform operation
fsub.d f25, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x23, 0xf8b33402c3bca6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fsub.d f23, f9, f20, dyn # perform operation
fsub.d f23, f9, f20, rdn # perform operation
fsub.d f23, f9, f20, rmm # perform operation
fsub.d f23, f9, f20, rne # perform operation
fsub.d f23, f9, f20, rtz # perform operation
fsub.d f23, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x5, 0xf0bad6c0ad08f4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fsub.d f5, f1, f30, dyn # perform operation
fsub.d f5, f1, f30, rdn # perform operation
fsub.d f5, f1, f30, rmm # perform operation
fsub.d f5, f1, f30, rne # perform operation
fsub.d f5, f1, f30, rtz # perform operation
fsub.d f5, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x10, 0xb98e4666a2ed5c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fsub.d f10, f28, f15, dyn # perform operation
fsub.d f10, f28, f15, rdn # perform operation
fsub.d f10, f28, f15, rmm # perform operation
fsub.d f10, f28, f15, rne # perform operation
fsub.d f10, f28, f15, rtz # perform operation
fsub.d f10, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x18, 0x663b473dd8002252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fsub.d f18, f3, f23, dyn # perform operation
fsub.d f18, f3, f23, rdn # perform operation
fsub.d f18, f3, f23, rmm # perform operation
fsub.d f18, f3, f23, rne # perform operation
fsub.d f18, f3, f23, rtz # perform operation
fsub.d f18, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x10, 0x9a8e0f40c33b0eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fsub.d f10, f30, f5, dyn # perform operation
fsub.d f10, f30, f5, rdn # perform operation
fsub.d f10, f30, f5, rmm # perform operation
fsub.d f10, f30, f5, rne # perform operation
fsub.d f10, f30, f5, rtz # perform operation
fsub.d f10, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x3, 0x38c038d1b443fc82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fsub.d f3, f27, f6, dyn # perform operation
fsub.d f3, f27, f6, rdn # perform operation
fsub.d f3, f27, f6, rmm # perform operation
fsub.d f3, f27, f6, rne # perform operation
fsub.d f3, f27, f6, rtz # perform operation
fsub.d f3, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x29, 0x8881cda15af5ac71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fsub.d f29, f7, f11, dyn # perform operation
fsub.d f29, f7, f11, rdn # perform operation
fsub.d f29, f7, f11, rmm # perform operation
fsub.d f29, f7, f11, rne # perform operation
fsub.d f29, f7, f11, rtz # perform operation
fsub.d f29, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x14, 0xa848b7754939aee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fsub.d f14, f17, f6, dyn # perform operation
fsub.d f14, f17, f6, rdn # perform operation
fsub.d f14, f17, f6, rmm # perform operation
fsub.d f14, f17, f6, rne # perform operation
fsub.d f14, f17, f6, rtz # perform operation
fsub.d f14, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x954a306290bb0711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fsub.d f24, f16, f22, dyn # perform operation
fsub.d f24, f16, f22, rdn # perform operation
fsub.d f24, f16, f22, rmm # perform operation
fsub.d f24, f16, f22, rne # perform operation
fsub.d f24, f16, f22, rtz # perform operation
fsub.d f24, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x5, 0xf5f7b86f9ee23b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fsub.d f5, f28, f24, dyn # perform operation
fsub.d f5, f28, f24, rdn # perform operation
fsub.d f5, f28, f24, rmm # perform operation
fsub.d f5, f28, f24, rne # perform operation
fsub.d f5, f28, f24, rtz # perform operation
fsub.d f5, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x16, 0xf31cacf74c520434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fsub.d f16, f8, f20, dyn # perform operation
fsub.d f16, f8, f20, rdn # perform operation
fsub.d f16, f8, f20, rmm # perform operation
fsub.d f16, f8, f20, rne # perform operation
fsub.d f16, f8, f20, rtz # perform operation
fsub.d f16, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x52e9e44033a1ab50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fsub.d f25, f11, f20, dyn # perform operation
fsub.d f25, f11, f20, rdn # perform operation
fsub.d f25, f11, f20, rmm # perform operation
fsub.d f25, f11, f20, rne # perform operation
fsub.d f25, f11, f20, rtz # perform operation
fsub.d f25, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x26, 0x2cbd5a8faa098acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fsub.d f26, f28, f17, dyn # perform operation
fsub.d f26, f28, f17, rdn # perform operation
fsub.d f26, f28, f17, rmm # perform operation
fsub.d f26, f28, f17, rne # perform operation
fsub.d f26, f28, f17, rtz # perform operation
fsub.d f26, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x2, 0x979aa5dcdf79b4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fsub.d f2, f5, f15, dyn # perform operation
fsub.d f2, f5, f15, rdn # perform operation
fsub.d f2, f5, f15, rmm # perform operation
fsub.d f2, f5, f15, rne # perform operation
fsub.d f2, f5, f15, rtz # perform operation
fsub.d f2, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x11, 0x59f3b0ad5fd7ead8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fsub.d f11, f16, f27, dyn # perform operation
fsub.d f11, f16, f27, rdn # perform operation
fsub.d f11, f16, f27, rmm # perform operation
fsub.d f11, f16, f27, rne # perform operation
fsub.d f11, f16, f27, rtz # perform operation
fsub.d f11, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x10, 0x7d33770cfdbb187b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fsub.d f10, f1, f12, dyn # perform operation
fsub.d f10, f1, f12, rdn # perform operation
fsub.d f10, f1, f12, rmm # perform operation
fsub.d f10, f1, f12, rne # perform operation
fsub.d f10, f1, f12, rtz # perform operation
fsub.d f10, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x8a9b27ca113832e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fsub.d f28, f2, f21, dyn # perform operation
fsub.d f28, f2, f21, rdn # perform operation
fsub.d f28, f2, f21, rmm # perform operation
fsub.d f28, f2, f21, rne # perform operation
fsub.d f28, f2, f21, rtz # perform operation
fsub.d f28, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x29, 0xc837f70a350a1c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fsub.d f29, f15, f3, dyn # perform operation
fsub.d f29, f15, f3, rdn # perform operation
fsub.d f29, f15, f3, rmm # perform operation
fsub.d f29, f15, f3, rne # perform operation
fsub.d f29, f15, f3, rtz # perform operation
fsub.d f29, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x25, 0x8da81d6c336725af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
fsub.d f25, f2, f18, dyn # perform operation
fsub.d f25, f2, f18, rdn # perform operation
fsub.d f25, f2, f18, rmm # perform operation
fsub.d f25, f2, f18, rne # perform operation
fsub.d f25, f2, f18, rtz # perform operation
fsub.d f25, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x6, 0xf6e6fe61b756ab32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fsub.d f6, f24, f18, dyn # perform operation
fsub.d f6, f24, f18, rdn # perform operation
fsub.d f6, f24, f18, rmm # perform operation
fsub.d f6, f24, f18, rne # perform operation
fsub.d f6, f24, f18, rtz # perform operation
fsub.d f6, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x20, 0x5fbf85c20c2278a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fsub.d f20, f17, f24, dyn # perform operation
fsub.d f20, f17, f24, rdn # perform operation
fsub.d f20, f17, f24, rmm # perform operation
fsub.d f20, f17, f24, rne # perform operation
fsub.d f20, f17, f24, rtz # perform operation
fsub.d f20, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x4, 0xbbc2f439abcadfe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fsub.d f4, f10, f1, dyn # perform operation
fsub.d f4, f10, f1, rdn # perform operation
fsub.d f4, f10, f1, rmm # perform operation
fsub.d f4, f10, f1, rne # perform operation
fsub.d f4, f10, f1, rtz # perform operation
fsub.d f4, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x19, 0x09e5233d354f13c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fsub.d f19, f16, f3, dyn # perform operation
fsub.d f19, f16, f3, rdn # perform operation
fsub.d f19, f16, f3, rmm # perform operation
fsub.d f19, f16, f3, rne # perform operation
fsub.d f19, f16, f3, rtz # perform operation
fsub.d f19, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x18, 0x889bbdaaabfb1e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fsub.d f18, f10, f20, dyn # perform operation
fsub.d f18, f10, f20, rdn # perform operation
fsub.d f18, f10, f20, rmm # perform operation
fsub.d f18, f10, f20, rne # perform operation
fsub.d f18, f10, f20, rtz # perform operation
fsub.d f18, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x2, 0xb3a89293240fd26f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fsub.d f2, f21, f25, dyn # perform operation
fsub.d f2, f21, f25, rdn # perform operation
fsub.d f2, f21, f25, rmm # perform operation
fsub.d f2, f21, f25, rne # perform operation
fsub.d f2, f21, f25, rtz # perform operation
fsub.d f2, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x27, 0xcd4eb1fff6943005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fsub.d f27, f2, f15, dyn # perform operation
fsub.d f27, f2, f15, rdn # perform operation
fsub.d f27, f2, f15, rmm # perform operation
fsub.d f27, f2, f15, rne # perform operation
fsub.d f27, f2, f15, rtz # perform operation
fsub.d f27, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x8, 0x8da71565692ef35f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fsub.d f8, f30, f27, dyn # perform operation
fsub.d f8, f30, f27, rdn # perform operation
fsub.d f8, f30, f27, rmm # perform operation
fsub.d f8, f30, f27, rne # perform operation
fsub.d f8, f30, f27, rtz # perform operation
fsub.d f8, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x25, 0xd7cad937b447774d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fsub.d f25, f20, f19, dyn # perform operation
fsub.d f25, f20, f19, rdn # perform operation
fsub.d f25, f20, f19, rmm # perform operation
fsub.d f25, f20, f19, rne # perform operation
fsub.d f25, f20, f19, rtz # perform operation
fsub.d f25, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x22, 0x0607024633c74758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fsub.d f22, f5, f11, dyn # perform operation
fsub.d f22, f5, f11, rdn # perform operation
fsub.d f22, f5, f11, rmm # perform operation
fsub.d f22, f5, f11, rne # perform operation
fsub.d f22, f5, f11, rtz # perform operation
fsub.d f22, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x25, 0xd1d73453fce3e544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fsub.d f25, f19, f6, dyn # perform operation
fsub.d f25, f19, f6, rdn # perform operation
fsub.d f25, f19, f6, rmm # perform operation
fsub.d f25, f19, f6, rne # perform operation
fsub.d f25, f19, f6, rtz # perform operation
fsub.d f25, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x24, 0xa5a3a4faebf0435e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fsub.d f24, f18, f6, dyn # perform operation
fsub.d f24, f18, f6, rdn # perform operation
fsub.d f24, f18, f6, rmm # perform operation
fsub.d f24, f18, f6, rne # perform operation
fsub.d f24, f18, f6, rtz # perform operation
fsub.d f24, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x4, 0x995d5b736eb93256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fsub.d f4, f29, f31, dyn # perform operation
fsub.d f4, f29, f31, rdn # perform operation
fsub.d f4, f29, f31, rmm # perform operation
fsub.d f4, f29, f31, rne # perform operation
fsub.d f4, f29, f31, rtz # perform operation
fsub.d f4, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x7, 0x16c438b85015864b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fsub.d f7, f12, f15, dyn # perform operation
fsub.d f7, f12, f15, rdn # perform operation
fsub.d f7, f12, f15, rmm # perform operation
fsub.d f7, f12, f15, rne # perform operation
fsub.d f7, f12, f15, rtz # perform operation
fsub.d f7, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x31, 0xcf8014de1755306a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fsub.d f31, f4, f2, dyn # perform operation
fsub.d f31, f4, f2, rdn # perform operation
fsub.d f31, f4, f2, rmm # perform operation
fsub.d f31, f4, f2, rne # perform operation
fsub.d f31, f4, f2, rtz # perform operation
fsub.d f31, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x25, 0x5b4ada5e12aabed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
fsub.d f25, f14, f4, dyn # perform operation
fsub.d f25, f14, f4, rdn # perform operation
fsub.d f25, f14, f4, rmm # perform operation
fsub.d f25, f14, f4, rne # perform operation
fsub.d f25, f14, f4, rtz # perform operation
fsub.d f25, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x9, 0xd64d125d310542c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fsub.d f9, f12, f16, dyn # perform operation
fsub.d f9, f12, f16, rdn # perform operation
fsub.d f9, f12, f16, rmm # perform operation
fsub.d f9, f12, f16, rne # perform operation
fsub.d f9, f12, f16, rtz # perform operation
fsub.d f9, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0x57a3a6cdf57bdd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fsub.d f20, f1, f23, dyn # perform operation
fsub.d f20, f1, f23, rdn # perform operation
fsub.d f20, f1, f23, rmm # perform operation
fsub.d f20, f1, f23, rne # perform operation
fsub.d f20, f1, f23, rtz # perform operation
fsub.d f20, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x27, 0xbcf8cd9c6101ab50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fsub.d f27, f31, f20, dyn # perform operation
fsub.d f27, f31, f20, rdn # perform operation
fsub.d f27, f31, f20, rmm # perform operation
fsub.d f27, f31, f20, rne # perform operation
fsub.d f27, f31, f20, rtz # perform operation
fsub.d f27, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x11, 0x4926e02fd2411089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
fsub.d f11, f23, f14, dyn # perform operation
fsub.d f11, f23, f14, rdn # perform operation
fsub.d f11, f23, f14, rmm # perform operation
fsub.d f11, f23, f14, rne # perform operation
fsub.d f11, f23, f14, rtz # perform operation
fsub.d f11, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x19, 0x6bd73d7a4210eae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fsub.d f19, f27, f15, dyn # perform operation
fsub.d f19, f27, f15, rdn # perform operation
fsub.d f19, f27, f15, rmm # perform operation
fsub.d f19, f27, f15, rne # perform operation
fsub.d f19, f27, f15, rtz # perform operation
fsub.d f19, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x10, 0x34a8e2161ef17e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fsub.d f10, f15, f29, dyn # perform operation
fsub.d f10, f15, f29, rdn # perform operation
fsub.d f10, f15, f29, rmm # perform operation
fsub.d f10, f15, f29, rne # perform operation
fsub.d f10, f15, f29, rtz # perform operation
fsub.d f10, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x2, 0xea2e120062dce657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
fsub.d f2, f24, f5, dyn # perform operation
fsub.d f2, f24, f5, rdn # perform operation
fsub.d f2, f24, f5, rmm # perform operation
fsub.d f2, f24, f5, rne # perform operation
fsub.d f2, f24, f5, rtz # perform operation
fsub.d f2, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x3, 0x99ee7d02b98e28c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fsub.d f3, f18, f28, dyn # perform operation
fsub.d f3, f18, f28, rdn # perform operation
fsub.d f3, f18, f28, rmm # perform operation
fsub.d f3, f18, f28, rne # perform operation
fsub.d f3, f18, f28, rtz # perform operation
fsub.d f3, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x25, 0x324b9fd510e8e1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fsub.d f25, f5, f2, dyn # perform operation
fsub.d f25, f5, f2, rdn # perform operation
fsub.d f25, f5, f2, rmm # perform operation
fsub.d f25, f5, f2, rne # perform operation
fsub.d f25, f5, f2, rtz # perform operation
fsub.d f25, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x30, 0xa9ff362c5d0ae106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fsub.d f30, f6, f29, dyn # perform operation
fsub.d f30, f6, f29, rdn # perform operation
fsub.d f30, f6, f29, rmm # perform operation
fsub.d f30, f6, f29, rne # perform operation
fsub.d f30, f6, f29, rtz # perform operation
fsub.d f30, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x12, 0xedbf7083a3c2550d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fsub.d f12, f23, f20, dyn # perform operation
fsub.d f12, f23, f20, rdn # perform operation
fsub.d f12, f23, f20, rmm # perform operation
fsub.d f12, f23, f20, rne # perform operation
fsub.d f12, f23, f20, rtz # perform operation
fsub.d f12, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x8, 0xb2eaa272e3414dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fsub.d f8, f3, f17, dyn # perform operation
fsub.d f8, f3, f17, rdn # perform operation
fsub.d f8, f3, f17, rmm # perform operation
fsub.d f8, f3, f17, rne # perform operation
fsub.d f8, f3, f17, rtz # perform operation
fsub.d f8, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x15, 0x8c0ab7acd875a2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
fsub.d f15, f28, f8, dyn # perform operation
fsub.d f15, f28, f8, rdn # perform operation
fsub.d f15, f28, f8, rmm # perform operation
fsub.d f15, f28, f8, rne # perform operation
fsub.d f15, f28, f8, rtz # perform operation
fsub.d f15, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x12, 0xf87119c3b6cda8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fsub.d f12, f28, f22, dyn # perform operation
fsub.d f12, f28, f22, rdn # perform operation
fsub.d f12, f28, f22, rmm # perform operation
fsub.d f12, f28, f22, rne # perform operation
fsub.d f12, f28, f22, rtz # perform operation
fsub.d f12, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x21, 0x3ac54d149b7711e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fsub.d f21, f24, f7, dyn # perform operation
fsub.d f21, f24, f7, rdn # perform operation
fsub.d f21, f24, f7, rmm # perform operation
fsub.d f21, f24, f7, rne # perform operation
fsub.d f21, f24, f7, rtz # perform operation
fsub.d f21, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x16, 0x4bf4f12543ad8867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fsub.d f16, f17, f1, dyn # perform operation
fsub.d f16, f17, f1, rdn # perform operation
fsub.d f16, f17, f1, rmm # perform operation
fsub.d f16, f17, f1, rne # perform operation
fsub.d f16, f17, f1, rtz # perform operation
fsub.d f16, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x17, 0xb856230f892ea30f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fsub.d f17, f30, f5, dyn # perform operation
fsub.d f17, f30, f5, rdn # perform operation
fsub.d f17, f30, f5, rmm # perform operation
fsub.d f17, f30, f5, rne # perform operation
fsub.d f17, f30, f5, rtz # perform operation
fsub.d f17, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x23, 0xc4e6164fdc1445bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fsub.d f23, f10, f9, dyn # perform operation
fsub.d f23, f10, f9, rdn # perform operation
fsub.d f23, f10, f9, rmm # perform operation
fsub.d f23, f10, f9, rne # perform operation
fsub.d f23, f10, f9, rtz # perform operation
fsub.d f23, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x28, 0xe52bebd8be6037f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fsub.d f28, f30, f24, dyn # perform operation
fsub.d f28, f30, f24, rdn # perform operation
fsub.d f28, f30, f24, rmm # perform operation
fsub.d f28, f30, f24, rne # perform operation
fsub.d f28, f30, f24, rtz # perform operation
fsub.d f28, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x24, 0xab40443e769bb18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fsub.d f24, f5, f20, dyn # perform operation
fsub.d f24, f5, f20, rdn # perform operation
fsub.d f24, f5, f20, rmm # perform operation
fsub.d f24, f5, f20, rne # perform operation
fsub.d f24, f5, f20, rtz # perform operation
fsub.d f24, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x25, 0xed1c5eddc18c99ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fsub.d f25, f29, f23, dyn # perform operation
fsub.d f25, f29, f23, rdn # perform operation
fsub.d f25, f29, f23, rmm # perform operation
fsub.d f25, f29, f23, rne # perform operation
fsub.d f25, f29, f23, rtz # perform operation
fsub.d f25, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x1, 0xf9a7b4d37740e198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fsub.d f1, f4, f20, dyn # perform operation
fsub.d f1, f4, f20, rdn # perform operation
fsub.d f1, f4, f20, rmm # perform operation
fsub.d f1, f4, f20, rne # perform operation
fsub.d f1, f4, f20, rtz # perform operation
fsub.d f1, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x3, 0x146a329f9daaeb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fsub.d f3, f12, f19, dyn # perform operation
fsub.d f3, f12, f19, rdn # perform operation
fsub.d f3, f12, f19, rmm # perform operation
fsub.d f3, f12, f19, rne # perform operation
fsub.d f3, f12, f19, rtz # perform operation
fsub.d f3, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x26, 0x731a8e111e61e590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fsub.d f26, f15, f8, dyn # perform operation
fsub.d f26, f15, f8, rdn # perform operation
fsub.d f26, f15, f8, rmm # perform operation
fsub.d f26, f15, f8, rne # perform operation
fsub.d f26, f15, f8, rtz # perform operation
fsub.d f26, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x29, 0xb71192e16b51821c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fsub.d f29, f1, f21, dyn # perform operation
fsub.d f29, f1, f21, rdn # perform operation
fsub.d f29, f1, f21, rmm # perform operation
fsub.d f29, f1, f21, rne # perform operation
fsub.d f29, f1, f21, rtz # perform operation
fsub.d f29, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x28, 0xce239462cad6a31d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fsub.d f28, f27, f17, dyn # perform operation
fsub.d f28, f27, f17, rdn # perform operation
fsub.d f28, f27, f17, rmm # perform operation
fsub.d f28, f27, f17, rne # perform operation
fsub.d f28, f27, f17, rtz # perform operation
fsub.d f28, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x4, 0xd66f1bba9c568558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fsub.d f4, f6, f2, dyn # perform operation
fsub.d f4, f6, f2, rdn # perform operation
fsub.d f4, f6, f2, rmm # perform operation
fsub.d f4, f6, f2, rne # perform operation
fsub.d f4, f6, f2, rtz # perform operation
fsub.d f4, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x29, 0x057900f66eaf6f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fsub.d f29, f10, f25, dyn # perform operation
fsub.d f29, f10, f25, rdn # perform operation
fsub.d f29, f10, f25, rmm # perform operation
fsub.d f29, f10, f25, rne # perform operation
fsub.d f29, f10, f25, rtz # perform operation
fsub.d f29, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x3, 0x490a7b89ca144c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fsub.d f3, f7, f14, dyn # perform operation
fsub.d f3, f7, f14, rdn # perform operation
fsub.d f3, f7, f14, rmm # perform operation
fsub.d f3, f7, f14, rne # perform operation
fsub.d f3, f7, f14, rtz # perform operation
fsub.d f3, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x1, 0x706af57456828dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fsub.d f1, f22, f9, dyn # perform operation
fsub.d f1, f22, f9, rdn # perform operation
fsub.d f1, f22, f9, rmm # perform operation
fsub.d f1, f22, f9, rne # perform operation
fsub.d f1, f22, f9, rtz # perform operation
fsub.d f1, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x17, 0x82b2483e9f1837e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fsub.d f17, f18, f6, dyn # perform operation
fsub.d f17, f18, f6, rdn # perform operation
fsub.d f17, f18, f6, rmm # perform operation
fsub.d f17, f18, f6, rne # perform operation
fsub.d f17, f18, f6, rtz # perform operation
fsub.d f17, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x12, 0xeb66a6f9798bb60e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fsub.d f12, f22, f20, dyn # perform operation
fsub.d f12, f22, f20, rdn # perform operation
fsub.d f12, f22, f20, rmm # perform operation
fsub.d f12, f22, f20, rne # perform operation
fsub.d f12, f22, f20, rtz # perform operation
fsub.d f12, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x30, 0xdcabd4acc3e3e9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fsub.d f30, f16, f9, dyn # perform operation
fsub.d f30, f16, f9, rdn # perform operation
fsub.d f30, f16, f9, rmm # perform operation
fsub.d f30, f16, f9, rne # perform operation
fsub.d f30, f16, f9, rtz # perform operation
fsub.d f30, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x1, 0x223b81d2339d143f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fsub.d f1, f6, f24, dyn # perform operation
fsub.d f1, f6, f24, rdn # perform operation
fsub.d f1, f6, f24, rmm # perform operation
fsub.d f1, f6, f24, rne # perform operation
fsub.d f1, f6, f24, rtz # perform operation
fsub.d f1, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x18, 0x897b5aab9d79d285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fsub.d f18, f21, f7, dyn # perform operation
fsub.d f18, f21, f7, rdn # perform operation
fsub.d f18, f21, f7, rmm # perform operation
fsub.d f18, f21, f7, rne # perform operation
fsub.d f18, f21, f7, rtz # perform operation
fsub.d f18, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x13, 0xc34548ee966463d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fsub.d f13, f2, f21, dyn # perform operation
fsub.d f13, f2, f21, rdn # perform operation
fsub.d f13, f2, f21, rmm # perform operation
fsub.d f13, f2, f21, rne # perform operation
fsub.d f13, f2, f21, rtz # perform operation
fsub.d f13, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x16, 0x8d9bc72d22f51e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fsub.d f16, f29, f11, dyn # perform operation
fsub.d f16, f29, f11, rdn # perform operation
fsub.d f16, f29, f11, rmm # perform operation
fsub.d f16, f29, f11, rne # perform operation
fsub.d f16, f29, f11, rtz # perform operation
fsub.d f16, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x8, 0xa0754cd9d68e5268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fsub.d f8, f29, f27, dyn # perform operation
fsub.d f8, f29, f27, rdn # perform operation
fsub.d f8, f29, f27, rmm # perform operation
fsub.d f8, f29, f27, rne # perform operation
fsub.d f8, f29, f27, rtz # perform operation
fsub.d f8, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x14, 0x6280e53320ed0255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fsub.d f14, f27, f3, dyn # perform operation
fsub.d f14, f27, f3, rdn # perform operation
fsub.d f14, f27, f3, rmm # perform operation
fsub.d f14, f27, f3, rne # perform operation
fsub.d f14, f27, f3, rtz # perform operation
fsub.d f14, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x6b35782f732971eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsub.d f15, f4, f28, dyn # perform operation
fsub.d f15, f4, f28, rdn # perform operation
fsub.d f15, f4, f28, rmm # perform operation
fsub.d f15, f4, f28, rne # perform operation
fsub.d f15, f4, f28, rtz # perform operation
fsub.d f15, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x3, 0x79dd3d35c1c60a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fsub.d f3, f9, f25, dyn # perform operation
fsub.d f3, f9, f25, rdn # perform operation
fsub.d f3, f9, f25, rmm # perform operation
fsub.d f3, f9, f25, rne # perform operation
fsub.d f3, f9, f25, rtz # perform operation
fsub.d f3, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x17, 0x8904facf993ea740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fsub.d f17, f10, f12, dyn # perform operation
fsub.d f17, f10, f12, rdn # perform operation
fsub.d f17, f10, f12, rmm # perform operation
fsub.d f17, f10, f12, rne # perform operation
fsub.d f17, f10, f12, rtz # perform operation
fsub.d f17, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x20, 0xf03af328691a36bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fsub.d f20, f31, f18, dyn # perform operation
fsub.d f20, f31, f18, rdn # perform operation
fsub.d f20, f31, f18, rmm # perform operation
fsub.d f20, f31, f18, rne # perform operation
fsub.d f20, f31, f18, rtz # perform operation
fsub.d f20, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x28, 0x67d02618fedc0df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fsub.d f28, f24, f14, dyn # perform operation
fsub.d f28, f24, f14, rdn # perform operation
fsub.d f28, f24, f14, rmm # perform operation
fsub.d f28, f24, f14, rne # perform operation
fsub.d f28, f24, f14, rtz # perform operation
fsub.d f28, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x21, 0xeff84e14d4e282ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsub.d f21, f24, f6, dyn # perform operation
fsub.d f21, f24, f6, rdn # perform operation
fsub.d f21, f24, f6, rmm # perform operation
fsub.d f21, f24, f6, rne # perform operation
fsub.d f21, f24, f6, rtz # perform operation
fsub.d f21, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x29, 0x7f84835865ceef56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fsub.d f29, f2, f21, dyn # perform operation
fsub.d f29, f2, f21, rdn # perform operation
fsub.d f29, f2, f21, rmm # perform operation
fsub.d f29, f2, f21, rne # perform operation
fsub.d f29, f2, f21, rtz # perform operation
fsub.d f29, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x9, 0x35c1cdf308312b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fsub.d f9, f26, f27, dyn # perform operation
fsub.d f9, f26, f27, rdn # perform operation
fsub.d f9, f26, f27, rmm # perform operation
fsub.d f9, f26, f27, rne # perform operation
fsub.d f9, f26, f27, rtz # perform operation
fsub.d f9, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x9, 0x017d9fd88a39a114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fsub.d f9, f27, f10, dyn # perform operation
fsub.d f9, f27, f10, rdn # perform operation
fsub.d f9, f27, f10, rmm # perform operation
fsub.d f9, f27, f10, rne # perform operation
fsub.d f9, f27, f10, rtz # perform operation
fsub.d f9, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x21, 0xf8932a64d22ea556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fsub.d f21, f29, f5, dyn # perform operation
fsub.d f21, f29, f5, rdn # perform operation
fsub.d f21, f29, f5, rmm # perform operation
fsub.d f21, f29, f5, rne # perform operation
fsub.d f21, f29, f5, rtz # perform operation
fsub.d f21, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x16, 0xb5249243dc79db9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fsub.d f16, f2, f3, dyn # perform operation
fsub.d f16, f2, f3, rdn # perform operation
fsub.d f16, f2, f3, rmm # perform operation
fsub.d f16, f2, f3, rne # perform operation
fsub.d f16, f2, f3, rtz # perform operation
fsub.d f16, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x20, 0x2ea65ed1aa4b279a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fsub.d f20, f27, f29, dyn # perform operation
fsub.d f20, f27, f29, rdn # perform operation
fsub.d f20, f27, f29, rmm # perform operation
fsub.d f20, f27, f29, rne # perform operation
fsub.d f20, f27, f29, rtz # perform operation
fsub.d f20, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x31, 0xb1045cabf7291de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fsub.d f31, f20, f22, dyn # perform operation
fsub.d f31, f20, f22, rdn # perform operation
fsub.d f31, f20, f22, rmm # perform operation
fsub.d f31, f20, f22, rne # perform operation
fsub.d f31, f20, f22, rtz # perform operation
fsub.d f31, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x30, 0x3171efbb962119da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fsub.d f30, f23, f4, dyn # perform operation
fsub.d f30, f23, f4, rdn # perform operation
fsub.d f30, f23, f4, rmm # perform operation
fsub.d f30, f23, f4, rne # perform operation
fsub.d f30, f23, f4, rtz # perform operation
fsub.d f30, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x29, 0xef8b2f2e0a362a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fsub.d f29, f11, f14, dyn # perform operation
fsub.d f29, f11, f14, rdn # perform operation
fsub.d f29, f11, f14, rmm # perform operation
fsub.d f29, f11, f14, rne # perform operation
fsub.d f29, f11, f14, rtz # perform operation
fsub.d f29, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x8, 0xc5d2d785f30f9c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fsub.d f8, f12, f31, dyn # perform operation
fsub.d f8, f12, f31, rdn # perform operation
fsub.d f8, f12, f31, rmm # perform operation
fsub.d f8, f12, f31, rne # perform operation
fsub.d f8, f12, f31, rtz # perform operation
fsub.d f8, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x22, 0x19f150f8ed92dd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fsub.d f22, f18, f15, dyn # perform operation
fsub.d f22, f18, f15, rdn # perform operation
fsub.d f22, f18, f15, rmm # perform operation
fsub.d f22, f18, f15, rne # perform operation
fsub.d f22, f18, f15, rtz # perform operation
fsub.d f22, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x26, 0x4fe3815993baf007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fsub.d f26, f23, f12, dyn # perform operation
fsub.d f26, f23, f12, rdn # perform operation
fsub.d f26, f23, f12, rmm # perform operation
fsub.d f26, f23, f12, rne # perform operation
fsub.d f26, f23, f12, rtz # perform operation
fsub.d f26, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x30, 0xf1facf732157872d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fsub.d f30, f8, f2, dyn # perform operation
fsub.d f30, f8, f2, rdn # perform operation
fsub.d f30, f8, f2, rmm # perform operation
fsub.d f30, f8, f2, rne # perform operation
fsub.d f30, f8, f2, rtz # perform operation
fsub.d f30, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x25, 0xf22bb6a32835b1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fsub.d f25, f22, f6, dyn # perform operation
fsub.d f25, f22, f6, rdn # perform operation
fsub.d f25, f22, f6, rmm # perform operation
fsub.d f25, f22, f6, rne # perform operation
fsub.d f25, f22, f6, rtz # perform operation
fsub.d f25, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x30, 0x6926aaa10f068070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fsub.d f30, f21, f10, dyn # perform operation
fsub.d f30, f21, f10, rdn # perform operation
fsub.d f30, f21, f10, rmm # perform operation
fsub.d f30, f21, f10, rne # perform operation
fsub.d f30, f21, f10, rtz # perform operation
fsub.d f30, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x23, 0x836715562d2e8b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fsub.d f23, f25, f27, dyn # perform operation
fsub.d f23, f25, f27, rdn # perform operation
fsub.d f23, f25, f27, rmm # perform operation
fsub.d f23, f25, f27, rne # perform operation
fsub.d f23, f25, f27, rtz # perform operation
fsub.d f23, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x11, 0x0bfd5f1a05ce66d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fsub.d f11, f26, f25, dyn # perform operation
fsub.d f11, f26, f25, rdn # perform operation
fsub.d f11, f26, f25, rmm # perform operation
fsub.d f11, f26, f25, rne # perform operation
fsub.d f11, f26, f25, rtz # perform operation
fsub.d f11, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x5, 0xf628d1182492effd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fsub.d f5, f20, f19, dyn # perform operation
fsub.d f5, f20, f19, rdn # perform operation
fsub.d f5, f20, f19, rmm # perform operation
fsub.d f5, f20, f19, rne # perform operation
fsub.d f5, f20, f19, rtz # perform operation
fsub.d f5, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x23, 0xfb8bff8939678bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fsub.d f23, f21, f24, dyn # perform operation
fsub.d f23, f21, f24, rdn # perform operation
fsub.d f23, f21, f24, rmm # perform operation
fsub.d f23, f21, f24, rne # perform operation
fsub.d f23, f21, f24, rtz # perform operation
fsub.d f23, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x23, 0xac5d6f8a96ab4bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fsub.d f23, f13, f21, dyn # perform operation
fsub.d f23, f13, f21, rdn # perform operation
fsub.d f23, f13, f21, rmm # perform operation
fsub.d f23, f13, f21, rne # perform operation
fsub.d f23, f13, f21, rtz # perform operation
fsub.d f23, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x19, 0x069b0cd97a8d1d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fsub.d f19, f25, f17, dyn # perform operation
fsub.d f19, f25, f17, rdn # perform operation
fsub.d f19, f25, f17, rmm # perform operation
fsub.d f19, f25, f17, rne # perform operation
fsub.d f19, f25, f17, rtz # perform operation
fsub.d f19, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x11, 0xb146ec1821339267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fsub.d f11, f2, f27, dyn # perform operation
fsub.d f11, f2, f27, rdn # perform operation
fsub.d f11, f2, f27, rmm # perform operation
fsub.d f11, f2, f27, rne # perform operation
fsub.d f11, f2, f27, rtz # perform operation
fsub.d f11, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x23, 0x31ce80fc16cab060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fsub.d f23, f12, f17, dyn # perform operation
fsub.d f23, f12, f17, rdn # perform operation
fsub.d f23, f12, f17, rmm # perform operation
fsub.d f23, f12, f17, rne # perform operation
fsub.d f23, f12, f17, rtz # perform operation
fsub.d f23, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x1eb4aed27736a875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fsub.d f25, f6, f8, dyn # perform operation
fsub.d f25, f6, f8, rdn # perform operation
fsub.d f25, f6, f8, rmm # perform operation
fsub.d f25, f6, f8, rne # perform operation
fsub.d f25, f6, f8, rtz # perform operation
fsub.d f25, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x21, 0x6e55a9aeaf3b9613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fsub.d f21, f30, f27, dyn # perform operation
fsub.d f21, f30, f27, rdn # perform operation
fsub.d f21, f30, f27, rmm # perform operation
fsub.d f21, f30, f27, rne # perform operation
fsub.d f21, f30, f27, rtz # perform operation
fsub.d f21, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x14, 0x833268ee1d7f28e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fsub.d f14, f29, f7, dyn # perform operation
fsub.d f14, f29, f7, rdn # perform operation
fsub.d f14, f29, f7, rmm # perform operation
fsub.d f14, f29, f7, rne # perform operation
fsub.d f14, f29, f7, rtz # perform operation
fsub.d f14, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x18, 0xfbbbc4dffd501f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fsub.d f18, f8, f28, dyn # perform operation
fsub.d f18, f8, f28, rdn # perform operation
fsub.d f18, f8, f28, rmm # perform operation
fsub.d f18, f8, f28, rne # perform operation
fsub.d f18, f8, f28, rtz # perform operation
fsub.d f18, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x19, 0x6e0c2729b458a61d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fsub.d f19, f8, f9, dyn # perform operation
fsub.d f19, f8, f9, rdn # perform operation
fsub.d f19, f8, f9, rmm # perform operation
fsub.d f19, f8, f9, rne # perform operation
fsub.d f19, f8, f9, rtz # perform operation
fsub.d f19, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x20, 0x96f587fafcd7fbd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fsub.d f20, f29, f22, dyn # perform operation
fsub.d f20, f29, f22, rdn # perform operation
fsub.d f20, f29, f22, rmm # perform operation
fsub.d f20, f29, f22, rne # perform operation
fsub.d f20, f29, f22, rtz # perform operation
fsub.d f20, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x7, 0xc117dc13f08bd312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fsub.d f7, f8, f6, dyn # perform operation
fsub.d f7, f8, f6, rdn # perform operation
fsub.d f7, f8, f6, rmm # perform operation
fsub.d f7, f8, f6, rne # perform operation
fsub.d f7, f8, f6, rtz # perform operation
fsub.d f7, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x21, 0x1bc883cc80c21d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fsub.d f21, f5, f4, dyn # perform operation
fsub.d f21, f5, f4, rdn # perform operation
fsub.d f21, f5, f4, rmm # perform operation
fsub.d f21, f5, f4, rne # perform operation
fsub.d f21, f5, f4, rtz # perform operation
fsub.d f21, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x27, 0x483f6c9fbdf9450d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
fsub.d f27, f1, f4, dyn # perform operation
fsub.d f27, f1, f4, rdn # perform operation
fsub.d f27, f1, f4, rmm # perform operation
fsub.d f27, f1, f4, rne # perform operation
fsub.d f27, f1, f4, rtz # perform operation
fsub.d f27, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x5, 0x337f5fe040392673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fsub.d f5, f4, f24, dyn # perform operation
fsub.d f5, f4, f24, rdn # perform operation
fsub.d f5, f4, f24, rmm # perform operation
fsub.d f5, f4, f24, rne # perform operation
fsub.d f5, f4, f24, rtz # perform operation
fsub.d f5, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0xc063306397b38580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fsub.d f11, f13, f2, dyn # perform operation
fsub.d f11, f13, f2, rdn # perform operation
fsub.d f11, f13, f2, rmm # perform operation
fsub.d f11, f13, f2, rne # perform operation
fsub.d f11, f13, f2, rtz # perform operation
fsub.d f11, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0x0e73d2dd825c616e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fsub.d f14, f6, f9, dyn # perform operation
fsub.d f14, f6, f9, rdn # perform operation
fsub.d f14, f6, f9, rmm # perform operation
fsub.d f14, f6, f9, rne # perform operation
fsub.d f14, f6, f9, rtz # perform operation
fsub.d f14, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x30, 0xc7b45d2e6936f4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fsub.d f30, f20, f25, dyn # perform operation
fsub.d f30, f20, f25, rdn # perform operation
fsub.d f30, f20, f25, rmm # perform operation
fsub.d f30, f20, f25, rne # perform operation
fsub.d f30, f20, f25, rtz # perform operation
fsub.d f30, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x14, 0xbc8337b6c637b979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fsub.d f14, f20, f31, dyn # perform operation
fsub.d f14, f20, f31, rdn # perform operation
fsub.d f14, f20, f31, rmm # perform operation
fsub.d f14, f20, f31, rne # perform operation
fsub.d f14, f20, f31, rtz # perform operation
fsub.d f14, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x4, 0x50ec32698fd22795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fsub.d f4, f13, f19, dyn # perform operation
fsub.d f4, f13, f19, rdn # perform operation
fsub.d f4, f13, f19, rmm # perform operation
fsub.d f4, f13, f19, rne # perform operation
fsub.d f4, f13, f19, rtz # perform operation
fsub.d f4, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x18, 0x30544f0a4a601065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
fsub.d f18, f29, f30, dyn # perform operation
fsub.d f18, f29, f30, rdn # perform operation
fsub.d f18, f29, f30, rmm # perform operation
fsub.d f18, f29, f30, rne # perform operation
fsub.d f18, f29, f30, rtz # perform operation
fsub.d f18, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x24, 0x0906eca4d98f17fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fsub.d f24, f9, f20, dyn # perform operation
fsub.d f24, f9, f20, rdn # perform operation
fsub.d f24, f9, f20, rmm # perform operation
fsub.d f24, f9, f20, rne # perform operation
fsub.d f24, f9, f20, rtz # perform operation
fsub.d f24, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x9b439a1802bf5b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fsub.d f28, f15, f6, dyn # perform operation
fsub.d f28, f15, f6, rdn # perform operation
fsub.d f28, f15, f6, rmm # perform operation
fsub.d f28, f15, f6, rne # perform operation
fsub.d f28, f15, f6, rtz # perform operation
fsub.d f28, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x11, 0x5df9d921e0598c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fsub.d f11, f16, f6, dyn # perform operation
fsub.d f11, f16, f6, rdn # perform operation
fsub.d f11, f16, f6, rmm # perform operation
fsub.d f11, f16, f6, rne # perform operation
fsub.d f11, f16, f6, rtz # perform operation
fsub.d f11, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x15, 0x18831d365453433d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fsub.d f15, f20, f8, dyn # perform operation
fsub.d f15, f20, f8, rdn # perform operation
fsub.d f15, f20, f8, rmm # perform operation
fsub.d f15, f20, f8, rne # perform operation
fsub.d f15, f20, f8, rtz # perform operation
fsub.d f15, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x27, 0xebbbbc3b516589ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fsub.d f27, f31, f20, dyn # perform operation
fsub.d f27, f31, f20, rdn # perform operation
fsub.d f27, f31, f20, rmm # perform operation
fsub.d f27, f31, f20, rne # perform operation
fsub.d f27, f31, f20, rtz # perform operation
fsub.d f27, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x2, 0xded14344e38f0ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fsub.d f2, f5, f18, dyn # perform operation
fsub.d f2, f5, f18, rdn # perform operation
fsub.d f2, f5, f18, rmm # perform operation
fsub.d f2, f5, f18, rne # perform operation
fsub.d f2, f5, f18, rtz # perform operation
fsub.d f2, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x23, 0x5cf9db0f343b25d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fsub.d f23, f4, f19, dyn # perform operation
fsub.d f23, f4, f19, rdn # perform operation
fsub.d f23, f4, f19, rmm # perform operation
fsub.d f23, f4, f19, rne # perform operation
fsub.d f23, f4, f19, rtz # perform operation
fsub.d f23, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x18, 0x4326deca589bc150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fsub.d f18, f13, f29, dyn # perform operation
fsub.d f18, f13, f29, rdn # perform operation
fsub.d f18, f13, f29, rmm # perform operation
fsub.d f18, f13, f29, rne # perform operation
fsub.d f18, f13, f29, rtz # perform operation
fsub.d f18, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x7, 0x836348903bbd47fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fsub.d f7, f16, f13, dyn # perform operation
fsub.d f7, f16, f13, rdn # perform operation
fsub.d f7, f16, f13, rmm # perform operation
fsub.d f7, f16, f13, rne # perform operation
fsub.d f7, f16, f13, rtz # perform operation
fsub.d f7, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x11, 0xa4d77dd3ac4d0bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fsub.d f11, f25, f12, dyn # perform operation
fsub.d f11, f25, f12, rdn # perform operation
fsub.d f11, f25, f12, rmm # perform operation
fsub.d f11, f25, f12, rne # perform operation
fsub.d f11, f25, f12, rtz # perform operation
fsub.d f11, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x22, 0x230bfcf374f744f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fsub.d f22, f9, f17, dyn # perform operation
fsub.d f22, f9, f17, rdn # perform operation
fsub.d f22, f9, f17, rmm # perform operation
fsub.d f22, f9, f17, rne # perform operation
fsub.d f22, f9, f17, rtz # perform operation
fsub.d f22, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x23, 0x5a95b18f4f32c580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fsub.d f23, f4, f2, dyn # perform operation
fsub.d f23, f4, f2, rdn # perform operation
fsub.d f23, f4, f2, rmm # perform operation
fsub.d f23, f4, f2, rne # perform operation
fsub.d f23, f4, f2, rtz # perform operation
fsub.d f23, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x21, 0x85e6b69a8deb6024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fsub.d f21, f31, f4, dyn # perform operation
fsub.d f21, f31, f4, rdn # perform operation
fsub.d f21, f31, f4, rmm # perform operation
fsub.d f21, f31, f4, rne # perform operation
fsub.d f21, f31, f4, rtz # perform operation
fsub.d f21, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x26, 0x9c5804e6095e8c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fsub.d f26, f11, f28, dyn # perform operation
fsub.d f26, f11, f28, rdn # perform operation
fsub.d f26, f11, f28, rmm # perform operation
fsub.d f26, f11, f28, rne # perform operation
fsub.d f26, f11, f28, rtz # perform operation
fsub.d f26, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x18, 0x5beb83e02faeda29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fsub.d f18, f22, f10, dyn # perform operation
fsub.d f18, f22, f10, rdn # perform operation
fsub.d f18, f22, f10, rmm # perform operation
fsub.d f18, f22, f10, rne # perform operation
fsub.d f18, f22, f10, rtz # perform operation
fsub.d f18, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x18, 0x4cb0a9150e493a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fsub.d f18, f7, f19, dyn # perform operation
fsub.d f18, f7, f19, rdn # perform operation
fsub.d f18, f7, f19, rmm # perform operation
fsub.d f18, f7, f19, rne # perform operation
fsub.d f18, f7, f19, rtz # perform operation
fsub.d f18, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x26, 0x23817038f29c5d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fsub.d f26, f29, f8, dyn # perform operation
fsub.d f26, f29, f8, rdn # perform operation
fsub.d f26, f29, f8, rmm # perform operation
fsub.d f26, f29, f8, rne # perform operation
fsub.d f26, f29, f8, rtz # perform operation
fsub.d f26, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x29, 0x73508fe10da8bf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fsub.d f29, f3, f4, dyn # perform operation
fsub.d f29, f3, f4, rdn # perform operation
fsub.d f29, f3, f4, rmm # perform operation
fsub.d f29, f3, f4, rne # perform operation
fsub.d f29, f3, f4, rtz # perform operation
fsub.d f29, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x28, 0x0781a64e00727910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fsub.d f28, f22, f11, dyn # perform operation
fsub.d f28, f22, f11, rdn # perform operation
fsub.d f28, f22, f11, rmm # perform operation
fsub.d f28, f22, f11, rne # perform operation
fsub.d f28, f22, f11, rtz # perform operation
fsub.d f28, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x14, 0x4e8883dbdb2c3231 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fsub.d f14, f7, f5, dyn # perform operation
fsub.d f14, f7, f5, rdn # perform operation
fsub.d f14, f7, f5, rmm # perform operation
fsub.d f14, f7, f5, rne # perform operation
fsub.d f14, f7, f5, rtz # perform operation
fsub.d f14, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x9, 0x4e35e58d7eedd891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fsub.d f9, f22, f4, dyn # perform operation
fsub.d f9, f22, f4, rdn # perform operation
fsub.d f9, f22, f4, rmm # perform operation
fsub.d f9, f22, f4, rne # perform operation
fsub.d f9, f22, f4, rtz # perform operation
fsub.d f9, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0x50554d4ab6627b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fsub.d f2, f25, f5, dyn # perform operation
fsub.d f2, f25, f5, rdn # perform operation
fsub.d f2, f25, f5, rmm # perform operation
fsub.d f2, f25, f5, rne # perform operation
fsub.d f2, f25, f5, rtz # perform operation
fsub.d f2, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x5, 0xc3f6036918596868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fsub.d f5, f2, f19, dyn # perform operation
fsub.d f5, f2, f19, rdn # perform operation
fsub.d f5, f2, f19, rmm # perform operation
fsub.d f5, f2, f19, rne # perform operation
fsub.d f5, f2, f19, rtz # perform operation
fsub.d f5, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x17, 0x5ec5aad1dd6ff2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fsub.d f17, f13, f9, dyn # perform operation
fsub.d f17, f13, f9, rdn # perform operation
fsub.d f17, f13, f9, rmm # perform operation
fsub.d f17, f13, f9, rne # perform operation
fsub.d f17, f13, f9, rtz # perform operation
fsub.d f17, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x22, 0xee553c5626f62793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fsub.d f22, f8, f31, dyn # perform operation
fsub.d f22, f8, f31, rdn # perform operation
fsub.d f22, f8, f31, rmm # perform operation
fsub.d f22, f8, f31, rne # perform operation
fsub.d f22, f8, f31, rtz # perform operation
fsub.d f22, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x19, 0xf79db6fdcf54df1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fsub.d f19, f17, f10, dyn # perform operation
fsub.d f19, f17, f10, rdn # perform operation
fsub.d f19, f17, f10, rmm # perform operation
fsub.d f19, f17, f10, rne # perform operation
fsub.d f19, f17, f10, rtz # perform operation
fsub.d f19, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x11, 0x696aae915d6a11c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fsub.d f11, f3, f1, dyn # perform operation
fsub.d f11, f3, f1, rdn # perform operation
fsub.d f11, f3, f1, rmm # perform operation
fsub.d f11, f3, f1, rne # perform operation
fsub.d f11, f3, f1, rtz # perform operation
fsub.d f11, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x7, 0x52926d7986a4c2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fsub.d f7, f29, f23, dyn # perform operation
fsub.d f7, f29, f23, rdn # perform operation
fsub.d f7, f29, f23, rmm # perform operation
fsub.d f7, f29, f23, rne # perform operation
fsub.d f7, f29, f23, rtz # perform operation
fsub.d f7, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x28, 0x24dfe63628134e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
fsub.d f28, f9, f26, dyn # perform operation
fsub.d f28, f9, f26, rdn # perform operation
fsub.d f28, f9, f26, rmm # perform operation
fsub.d f28, f9, f26, rne # perform operation
fsub.d f28, f9, f26, rtz # perform operation
fsub.d f28, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x11, 0xd5e530de5f4db58b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fsub.d f11, f25, f31, dyn # perform operation
fsub.d f11, f25, f31, rdn # perform operation
fsub.d f11, f25, f31, rmm # perform operation
fsub.d f11, f25, f31, rne # perform operation
fsub.d f11, f25, f31, rtz # perform operation
fsub.d f11, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x9, 0x07c62d4bd2a01c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fsub.d f9, f26, f25, dyn # perform operation
fsub.d f9, f26, f25, rdn # perform operation
fsub.d f9, f26, f25, rmm # perform operation
fsub.d f9, f26, f25, rne # perform operation
fsub.d f9, f26, f25, rtz # perform operation
fsub.d f9, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x20, 0x2194c29249b25071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fsub.d f20, f17, f22, dyn # perform operation
fsub.d f20, f17, f22, rdn # perform operation
fsub.d f20, f17, f22, rmm # perform operation
fsub.d f20, f17, f22, rne # perform operation
fsub.d f20, f17, f22, rtz # perform operation
fsub.d f20, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x30, 0x55f7ae00cc30aeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fsub.d f30, f23, f7, dyn # perform operation
fsub.d f30, f23, f7, rdn # perform operation
fsub.d f30, f23, f7, rmm # perform operation
fsub.d f30, f23, f7, rne # perform operation
fsub.d f30, f23, f7, rtz # perform operation
fsub.d f30, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x14, 0x2d24c08347986303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fsub.d f14, f17, f1, dyn # perform operation
fsub.d f14, f17, f1, rdn # perform operation
fsub.d f14, f17, f1, rmm # perform operation
fsub.d f14, f17, f1, rne # perform operation
fsub.d f14, f17, f1, rtz # perform operation
fsub.d f14, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x22, 0xf05c0a683d33e10c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fsub.d f22, f25, f14, dyn # perform operation
fsub.d f22, f25, f14, rdn # perform operation
fsub.d f22, f25, f14, rmm # perform operation
fsub.d f22, f25, f14, rne # perform operation
fsub.d f22, f25, f14, rtz # perform operation
fsub.d f22, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x20, 0x0a6ba6794f71437b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fsub.d f20, f31, f1, dyn # perform operation
fsub.d f20, f31, f1, rdn # perform operation
fsub.d f20, f31, f1, rmm # perform operation
fsub.d f20, f31, f1, rne # perform operation
fsub.d f20, f31, f1, rtz # perform operation
fsub.d f20, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x14, 0xf5051216bc6d756c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fsub.d f14, f11, f8, dyn # perform operation
fsub.d f14, f11, f8, rdn # perform operation
fsub.d f14, f11, f8, rmm # perform operation
fsub.d f14, f11, f8, rne # perform operation
fsub.d f14, f11, f8, rtz # perform operation
fsub.d f14, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x15, 0x965bea727d5ae476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fsub.d f15, f5, f27, dyn # perform operation
fsub.d f15, f5, f27, rdn # perform operation
fsub.d f15, f5, f27, rmm # perform operation
fsub.d f15, f5, f27, rne # perform operation
fsub.d f15, f5, f27, rtz # perform operation
fsub.d f15, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x18, 0x7053233067d48e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fsub.d f18, f31, f22, dyn # perform operation
fsub.d f18, f31, f22, rdn # perform operation
fsub.d f18, f31, f22, rmm # perform operation
fsub.d f18, f31, f22, rne # perform operation
fsub.d f18, f31, f22, rtz # perform operation
fsub.d f18, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x29, 0xd970781d642541d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fsub.d f29, f12, f6, dyn # perform operation
fsub.d f29, f12, f6, rdn # perform operation
fsub.d f29, f12, f6, rmm # perform operation
fsub.d f29, f12, f6, rne # perform operation
fsub.d f29, f12, f6, rtz # perform operation
fsub.d f29, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x28, 0xef3d19b966a4f0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fsub.d f28, f20, f13, dyn # perform operation
fsub.d f28, f20, f13, rdn # perform operation
fsub.d f28, f20, f13, rmm # perform operation
fsub.d f28, f20, f13, rne # perform operation
fsub.d f28, f20, f13, rtz # perform operation
fsub.d f28, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x3, 0x164ae7aed0e827e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fsub.d f3, f15, f27, dyn # perform operation
fsub.d f3, f15, f27, rdn # perform operation
fsub.d f3, f15, f27, rmm # perform operation
fsub.d f3, f15, f27, rne # perform operation
fsub.d f3, f15, f27, rtz # perform operation
fsub.d f3, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x30, 0xcb6fdf8be090d803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fsub.d f30, f22, f3, dyn # perform operation
fsub.d f30, f22, f3, rdn # perform operation
fsub.d f30, f22, f3, rmm # perform operation
fsub.d f30, f22, f3, rne # perform operation
fsub.d f30, f22, f3, rtz # perform operation
fsub.d f30, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x31, 0xe54c48f799bbb063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fsub.d f31, f21, f16, dyn # perform operation
fsub.d f31, f21, f16, rdn # perform operation
fsub.d f31, f21, f16, rmm # perform operation
fsub.d f31, f21, f16, rne # perform operation
fsub.d f31, f21, f16, rtz # perform operation
fsub.d f31, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0xcccf623e7f351bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fsub.d f24, f23, f28, dyn # perform operation
fsub.d f24, f23, f28, rdn # perform operation
fsub.d f24, f23, f28, rmm # perform operation
fsub.d f24, f23, f28, rne # perform operation
fsub.d f24, f23, f28, rtz # perform operation
fsub.d f24, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x60fb620d824a9d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fsub.d f24, f7, f26, dyn # perform operation
fsub.d f24, f7, f26, rdn # perform operation
fsub.d f24, f7, f26, rmm # perform operation
fsub.d f24, f7, f26, rne # perform operation
fsub.d f24, f7, f26, rtz # perform operation
fsub.d f24, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x1, 0x5a9a4838e826e75e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fsub.d f1, f19, f4, dyn # perform operation
fsub.d f1, f19, f4, rdn # perform operation
fsub.d f1, f19, f4, rmm # perform operation
fsub.d f1, f19, f4, rne # perform operation
fsub.d f1, f19, f4, rtz # perform operation
fsub.d f1, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x10, 0xfc7199f3c7c3f0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fsub.d f10, f20, f29, dyn # perform operation
fsub.d f10, f20, f29, rdn # perform operation
fsub.d f10, f20, f29, rmm # perform operation
fsub.d f10, f20, f29, rne # perform operation
fsub.d f10, f20, f29, rtz # perform operation
fsub.d f10, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x26, 0xe16f5d9d624eab1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fsub.d f26, f2, f18, dyn # perform operation
fsub.d f26, f2, f18, rdn # perform operation
fsub.d f26, f2, f18, rmm # perform operation
fsub.d f26, f2, f18, rne # perform operation
fsub.d f26, f2, f18, rtz # perform operation
fsub.d f26, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x19, 0x0d7a7e72c4e5ccdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fsub.d f19, f1, f26, dyn # perform operation
fsub.d f19, f1, f26, rdn # perform operation
fsub.d f19, f1, f26, rmm # perform operation
fsub.d f19, f1, f26, rne # perform operation
fsub.d f19, f1, f26, rtz # perform operation
fsub.d f19, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x8, 0xc9383b1eafa6637a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fsub.d f8, f17, f25, dyn # perform operation
fsub.d f8, f17, f25, rdn # perform operation
fsub.d f8, f17, f25, rmm # perform operation
fsub.d f8, f17, f25, rne # perform operation
fsub.d f8, f17, f25, rtz # perform operation
fsub.d f8, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x7, 0x8f0c992d90516e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fsub.d f7, f19, f29, dyn # perform operation
fsub.d f7, f19, f29, rdn # perform operation
fsub.d f7, f19, f29, rmm # perform operation
fsub.d f7, f19, f29, rne # perform operation
fsub.d f7, f19, f29, rtz # perform operation
fsub.d f7, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x31, 0xc130a85e0af65f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fsub.d f31, f4, f3, dyn # perform operation
fsub.d f31, f4, f3, rdn # perform operation
fsub.d f31, f4, f3, rmm # perform operation
fsub.d f31, f4, f3, rne # perform operation
fsub.d f31, f4, f3, rtz # perform operation
fsub.d f31, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x2, 0x7d876211159af546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fsub.d f2, f9, f29, dyn # perform operation
fsub.d f2, f9, f29, rdn # perform operation
fsub.d f2, f9, f29, rmm # perform operation
fsub.d f2, f9, f29, rne # perform operation
fsub.d f2, f9, f29, rtz # perform operation
fsub.d f2, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x30, 0x6f1985df40b3057c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fsub.d f30, f18, f19, dyn # perform operation
fsub.d f30, f18, f19, rdn # perform operation
fsub.d f30, f18, f19, rmm # perform operation
fsub.d f30, f18, f19, rne # perform operation
fsub.d f30, f18, f19, rtz # perform operation
fsub.d f30, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x3, 0xe50962cb60a99794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fsub.d f3, f1, f10, dyn # perform operation
fsub.d f3, f1, f10, rdn # perform operation
fsub.d f3, f1, f10, rmm # perform operation
fsub.d f3, f1, f10, rne # perform operation
fsub.d f3, f1, f10, rtz # perform operation
fsub.d f3, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x31, 0x73c6be97c887f3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fsub.d f31, f30, f13, dyn # perform operation
fsub.d f31, f30, f13, rdn # perform operation
fsub.d f31, f30, f13, rmm # perform operation
fsub.d f31, f30, f13, rne # perform operation
fsub.d f31, f30, f13, rtz # perform operation
fsub.d f31, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x22, 0xb10b5b78e9c43a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fsub.d f22, f26, f20, dyn # perform operation
fsub.d f22, f26, f20, rdn # perform operation
fsub.d f22, f26, f20, rmm # perform operation
fsub.d f22, f26, f20, rne # perform operation
fsub.d f22, f26, f20, rtz # perform operation
fsub.d f22, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x31, 0x1a0a53f1fe9c7b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fsub.d f31, f15, f26, dyn # perform operation
fsub.d f31, f15, f26, rdn # perform operation
fsub.d f31, f15, f26, rmm # perform operation
fsub.d f31, f15, f26, rne # perform operation
fsub.d f31, f15, f26, rtz # perform operation
fsub.d f31, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x4, 0x65d49a1813326e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fsub.d f4, f7, f21, dyn # perform operation
fsub.d f4, f7, f21, rdn # perform operation
fsub.d f4, f7, f21, rmm # perform operation
fsub.d f4, f7, f21, rne # perform operation
fsub.d f4, f7, f21, rtz # perform operation
fsub.d f4, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x8, 0xddbd7a781efd758e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fsub.d f8, f4, f30, dyn # perform operation
fsub.d f8, f4, f30, rdn # perform operation
fsub.d f8, f4, f30, rmm # perform operation
fsub.d f8, f4, f30, rne # perform operation
fsub.d f8, f4, f30, rtz # perform operation
fsub.d f8, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x28, 0xa3a3d0a5e1019424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fsub.d f28, f21, f10, dyn # perform operation
fsub.d f28, f21, f10, rdn # perform operation
fsub.d f28, f21, f10, rmm # perform operation
fsub.d f28, f21, f10, rne # perform operation
fsub.d f28, f21, f10, rtz # perform operation
fsub.d f28, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x24, 0xf09187c53cd22474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fsub.d f24, f8, f30, dyn # perform operation
fsub.d f24, f8, f30, rdn # perform operation
fsub.d f24, f8, f30, rmm # perform operation
fsub.d f24, f8, f30, rne # perform operation
fsub.d f24, f8, f30, rtz # perform operation
fsub.d f24, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x15, 0xaf22e202ac643841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fsub.d f15, f2, f28, dyn # perform operation
fsub.d f15, f2, f28, rdn # perform operation
fsub.d f15, f2, f28, rmm # perform operation
fsub.d f15, f2, f28, rne # perform operation
fsub.d f15, f2, f28, rtz # perform operation
fsub.d f15, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x25, 0xc49ac1f97e09086a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
fsub.d f25, f22, f13, dyn # perform operation
fsub.d f25, f22, f13, rdn # perform operation
fsub.d f25, f22, f13, rmm # perform operation
fsub.d f25, f22, f13, rne # perform operation
fsub.d f25, f22, f13, rtz # perform operation
fsub.d f25, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x18, 0x608afdb0008bb053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fsub.d f18, f8, f5, dyn # perform operation
fsub.d f18, f8, f5, rdn # perform operation
fsub.d f18, f8, f5, rmm # perform operation
fsub.d f18, f8, f5, rne # perform operation
fsub.d f18, f8, f5, rtz # perform operation
fsub.d f18, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x31, 0x8a09178865b0bc21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fsub.d f31, f9, f29, dyn # perform operation
fsub.d f31, f9, f29, rdn # perform operation
fsub.d f31, f9, f29, rmm # perform operation
fsub.d f31, f9, f29, rne # perform operation
fsub.d f31, f9, f29, rtz # perform operation
fsub.d f31, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x14, 0x7b8d2376bedcef9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fsub.d f14, f19, f22, dyn # perform operation
fsub.d f14, f19, f22, rdn # perform operation
fsub.d f14, f19, f22, rmm # perform operation
fsub.d f14, f19, f22, rne # perform operation
fsub.d f14, f19, f22, rtz # perform operation
fsub.d f14, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x5, 0xc4aebe9338686e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fsub.d f5, f2, f17, dyn # perform operation
fsub.d f5, f2, f17, rdn # perform operation
fsub.d f5, f2, f17, rmm # perform operation
fsub.d f5, f2, f17, rne # perform operation
fsub.d f5, f2, f17, rtz # perform operation
fsub.d f5, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x26, 0x8996aeaabf3bbb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
fsub.d f26, f28, f27, dyn # perform operation
fsub.d f26, f28, f27, rdn # perform operation
fsub.d f26, f28, f27, rmm # perform operation
fsub.d f26, f28, f27, rne # perform operation
fsub.d f26, f28, f27, rtz # perform operation
fsub.d f26, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x8, 0xc4cb288809ee3d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fsub.d f8, f24, f28, dyn # perform operation
fsub.d f8, f24, f28, rdn # perform operation
fsub.d f8, f24, f28, rmm # perform operation
fsub.d f8, f24, f28, rne # perform operation
fsub.d f8, f24, f28, rtz # perform operation
fsub.d f8, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x23, 0xe089406827656c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fsub.d f23, f9, f2, dyn # perform operation
fsub.d f23, f9, f2, rdn # perform operation
fsub.d f23, f9, f2, rmm # perform operation
fsub.d f23, f9, f2, rne # perform operation
fsub.d f23, f9, f2, rtz # perform operation
fsub.d f23, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x26, 0xb3af3c92feff1ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fsub.d f26, f19, f17, dyn # perform operation
fsub.d f26, f19, f17, rdn # perform operation
fsub.d f26, f19, f17, rmm # perform operation
fsub.d f26, f19, f17, rne # perform operation
fsub.d f26, f19, f17, rtz # perform operation
fsub.d f26, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x2, 0xedf81e6a52b7bfda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fsub.d f2, f29, f11, dyn # perform operation
fsub.d f2, f29, f11, rdn # perform operation
fsub.d f2, f29, f11, rmm # perform operation
fsub.d f2, f29, f11, rne # perform operation
fsub.d f2, f29, f11, rtz # perform operation
fsub.d f2, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x6, 0xe2672499da52f930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fsub.d f6, f14, f24, dyn # perform operation
fsub.d f6, f14, f24, rdn # perform operation
fsub.d f6, f14, f24, rmm # perform operation
fsub.d f6, f14, f24, rne # perform operation
fsub.d f6, f14, f24, rtz # perform operation
fsub.d f6, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x17, 0xd688be8008de2ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fsub.d f17, f3, f19, dyn # perform operation
fsub.d f17, f3, f19, rdn # perform operation
fsub.d f17, f3, f19, rmm # perform operation
fsub.d f17, f3, f19, rne # perform operation
fsub.d f17, f3, f19, rtz # perform operation
fsub.d f17, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x20, 0x637f5649cd4a9e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fsub.d f20, f29, f1, dyn # perform operation
fsub.d f20, f29, f1, rdn # perform operation
fsub.d f20, f29, f1, rmm # perform operation
fsub.d f20, f29, f1, rne # perform operation
fsub.d f20, f29, f1, rtz # perform operation
fsub.d f20, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x29, 0x87e11089eef8b45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fsub.d f29, f7, f8, dyn # perform operation
fsub.d f29, f7, f8, rdn # perform operation
fsub.d f29, f7, f8, rmm # perform operation
fsub.d f29, f7, f8, rne # perform operation
fsub.d f29, f7, f8, rtz # perform operation
fsub.d f29, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x26, 0x3792d67e70acf91e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fsub.d f26, f21, f3, dyn # perform operation
fsub.d f26, f21, f3, rdn # perform operation
fsub.d f26, f21, f3, rmm # perform operation
fsub.d f26, f21, f3, rne # perform operation
fsub.d f26, f21, f3, rtz # perform operation
fsub.d f26, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x3, 0xc936d699d7cf642a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fsub.d f3, f10, f8, dyn # perform operation
fsub.d f3, f10, f8, rdn # perform operation
fsub.d f3, f10, f8, rmm # perform operation
fsub.d f3, f10, f8, rne # perform operation
fsub.d f3, f10, f8, rtz # perform operation
fsub.d f3, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x19, 0x05c0c1e104f942d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fsub.d f19, f21, f23, dyn # perform operation
fsub.d f19, f21, f23, rdn # perform operation
fsub.d f19, f21, f23, rmm # perform operation
fsub.d f19, f21, f23, rne # perform operation
fsub.d f19, f21, f23, rtz # perform operation
fsub.d f19, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x18, 0x78ffc0e08ef07849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fsub.d f18, f5, f1, dyn # perform operation
fsub.d f18, f5, f1, rdn # perform operation
fsub.d f18, f5, f1, rmm # perform operation
fsub.d f18, f5, f1, rne # perform operation
fsub.d f18, f5, f1, rtz # perform operation
fsub.d f18, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x3, 0x0aa9209fab9f97df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fsub.d f3, f5, f4, dyn # perform operation
fsub.d f3, f5, f4, rdn # perform operation
fsub.d f3, f5, f4, rmm # perform operation
fsub.d f3, f5, f4, rne # perform operation
fsub.d f3, f5, f4, rtz # perform operation
fsub.d f3, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x20, 0x508419f023cb0ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fsub.d f20, f5, f7, dyn # perform operation
fsub.d f20, f5, f7, rdn # perform operation
fsub.d f20, f5, f7, rmm # perform operation
fsub.d f20, f5, f7, rne # perform operation
fsub.d f20, f5, f7, rtz # perform operation
fsub.d f20, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x5, 0x11e4e23bcaf59589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fsub.d f5, f30, f25, dyn # perform operation
fsub.d f5, f30, f25, rdn # perform operation
fsub.d f5, f30, f25, rmm # perform operation
fsub.d f5, f30, f25, rne # perform operation
fsub.d f5, f30, f25, rtz # perform operation
fsub.d f5, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x1, 0xfd2041d25e269dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fsub.d f1, f7, f29, dyn # perform operation
fsub.d f1, f7, f29, rdn # perform operation
fsub.d f1, f7, f29, rmm # perform operation
fsub.d f1, f7, f29, rne # perform operation
fsub.d f1, f7, f29, rtz # perform operation
fsub.d f1, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x9, 0x478214eca0a75f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fsub.d f9, f6, f7, dyn # perform operation
fsub.d f9, f6, f7, rdn # perform operation
fsub.d f9, f6, f7, rmm # perform operation
fsub.d f9, f6, f7, rne # perform operation
fsub.d f9, f6, f7, rtz # perform operation
fsub.d f9, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x22, 0x0ef2a073f15b2f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fsub.d f22, f27, f10, dyn # perform operation
fsub.d f22, f27, f10, rdn # perform operation
fsub.d f22, f27, f10, rmm # perform operation
fsub.d f22, f27, f10, rne # perform operation
fsub.d f22, f27, f10, rtz # perform operation
fsub.d f22, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x26, 0xbfff885b999859f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fsub.d f26, f5, f2, dyn # perform operation
fsub.d f26, f5, f2, rdn # perform operation
fsub.d f26, f5, f2, rmm # perform operation
fsub.d f26, f5, f2, rne # perform operation
fsub.d f26, f5, f2, rtz # perform operation
fsub.d f26, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x10, 0xc45ced6b4973c8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fsub.d f10, f11, f1, dyn # perform operation
fsub.d f10, f11, f1, rdn # perform operation
fsub.d f10, f11, f1, rmm # perform operation
fsub.d f10, f11, f1, rne # perform operation
fsub.d f10, f11, f1, rtz # perform operation
fsub.d f10, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x11, 0x93b4940d62d964ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsub.d f11, f7, f6, dyn # perform operation
fsub.d f11, f7, f6, rdn # perform operation
fsub.d f11, f7, f6, rmm # perform operation
fsub.d f11, f7, f6, rne # perform operation
fsub.d f11, f7, f6, rtz # perform operation
fsub.d f11, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x28, 0x60c56943ea317e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fsub.d f28, f26, f27, dyn # perform operation
fsub.d f28, f26, f27, rdn # perform operation
fsub.d f28, f26, f27, rmm # perform operation
fsub.d f28, f26, f27, rne # perform operation
fsub.d f28, f26, f27, rtz # perform operation
fsub.d f28, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x5, 0x890ef899904c1e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fsub.d f5, f11, f25, dyn # perform operation
fsub.d f5, f11, f25, rdn # perform operation
fsub.d f5, f11, f25, rmm # perform operation
fsub.d f5, f11, f25, rne # perform operation
fsub.d f5, f11, f25, rtz # perform operation
fsub.d f5, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x14, 0x9d7035743efbdb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fsub.d f14, f3, f22, dyn # perform operation
fsub.d f14, f3, f22, rdn # perform operation
fsub.d f14, f3, f22, rmm # perform operation
fsub.d f14, f3, f22, rne # perform operation
fsub.d f14, f3, f22, rtz # perform operation
fsub.d f14, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x10, 0xdec5c2e97dc3684d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
fsub.d f10, f26, f7, dyn # perform operation
fsub.d f10, f26, f7, rdn # perform operation
fsub.d f10, f26, f7, rmm # perform operation
fsub.d f10, f26, f7, rne # perform operation
fsub.d f10, f26, f7, rtz # perform operation
fsub.d f10, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x6, 0x1bb236f7768d25fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fsub.d f6, f26, f22, dyn # perform operation
fsub.d f6, f26, f22, rdn # perform operation
fsub.d f6, f26, f22, rmm # perform operation
fsub.d f6, f26, f22, rne # perform operation
fsub.d f6, f26, f22, rtz # perform operation
fsub.d f6, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x1, 0x1dfe183f30ee56d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fsub.d f1, f19, f30, dyn # perform operation
fsub.d f1, f19, f30, rdn # perform operation
fsub.d f1, f19, f30, rmm # perform operation
fsub.d f1, f19, f30, rne # perform operation
fsub.d f1, f19, f30, rtz # perform operation
fsub.d f1, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x24, 0x21b7f58eca59d7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fsub.d f24, f13, f12, dyn # perform operation
fsub.d f24, f13, f12, rdn # perform operation
fsub.d f24, f13, f12, rmm # perform operation
fsub.d f24, f13, f12, rne # perform operation
fsub.d f24, f13, f12, rtz # perform operation
fsub.d f24, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x11, 0x3c52da7b485f3b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fsub.d f11, f24, f12, dyn # perform operation
fsub.d f11, f24, f12, rdn # perform operation
fsub.d f11, f24, f12, rmm # perform operation
fsub.d f11, f24, f12, rne # perform operation
fsub.d f11, f24, f12, rtz # perform operation
fsub.d f11, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x29, 0x4a6ed564616c1024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fsub.d f29, f18, f22, dyn # perform operation
fsub.d f29, f18, f22, rdn # perform operation
fsub.d f29, f18, f22, rmm # perform operation
fsub.d f29, f18, f22, rne # perform operation
fsub.d f29, f18, f22, rtz # perform operation
fsub.d f29, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x7, 0x1c5fd790ab9221f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fsub.d f7, f16, f22, dyn # perform operation
fsub.d f7, f16, f22, rdn # perform operation
fsub.d f7, f16, f22, rmm # perform operation
fsub.d f7, f16, f22, rne # perform operation
fsub.d f7, f16, f22, rtz # perform operation
fsub.d f7, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x27, 0x61526a8ed4375e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fsub.d f27, f14, f2, dyn # perform operation
fsub.d f27, f14, f2, rdn # perform operation
fsub.d f27, f14, f2, rmm # perform operation
fsub.d f27, f14, f2, rne # perform operation
fsub.d f27, f14, f2, rtz # perform operation
fsub.d f27, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x7, 0x139d6f5d82d9a64f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fsub.d f7, f29, f6, dyn # perform operation
fsub.d f7, f29, f6, rdn # perform operation
fsub.d f7, f29, f6, rmm # perform operation
fsub.d f7, f29, f6, rne # perform operation
fsub.d f7, f29, f6, rtz # perform operation
fsub.d f7, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x28, 0x0e63412284e7dcc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fsub.d f28, f21, f8, dyn # perform operation
fsub.d f28, f21, f8, rdn # perform operation
fsub.d f28, f21, f8, rmm # perform operation
fsub.d f28, f21, f8, rne # perform operation
fsub.d f28, f21, f8, rtz # perform operation
fsub.d f28, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x11, 0x1ac6fedb2e112bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fsub.d f11, f29, f18, dyn # perform operation
fsub.d f11, f29, f18, rdn # perform operation
fsub.d f11, f29, f18, rmm # perform operation
fsub.d f11, f29, f18, rne # perform operation
fsub.d f11, f29, f18, rtz # perform operation
fsub.d f11, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x23, 0xe3ecf5ae3f0ab201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fsub.d f23, f8, f15, dyn # perform operation
fsub.d f23, f8, f15, rdn # perform operation
fsub.d f23, f8, f15, rmm # perform operation
fsub.d f23, f8, f15, rne # perform operation
fsub.d f23, f8, f15, rtz # perform operation
fsub.d f23, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x20, 0x377ceb03c6febb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fsub.d f20, f10, f30, dyn # perform operation
fsub.d f20, f10, f30, rdn # perform operation
fsub.d f20, f10, f30, rmm # perform operation
fsub.d f20, f10, f30, rne # perform operation
fsub.d f20, f10, f30, rtz # perform operation
fsub.d f20, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x22, 0x5d0005c02facc082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fsub.d f22, f15, f6, dyn # perform operation
fsub.d f22, f15, f6, rdn # perform operation
fsub.d f22, f15, f6, rmm # perform operation
fsub.d f22, f15, f6, rne # perform operation
fsub.d f22, f15, f6, rtz # perform operation
fsub.d f22, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x23, 0x2ba0f9bdba87a176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fsub.d f23, f7, f8, dyn # perform operation
fsub.d f23, f7, f8, rdn # perform operation
fsub.d f23, f7, f8, rmm # perform operation
fsub.d f23, f7, f8, rne # perform operation
fsub.d f23, f7, f8, rtz # perform operation
fsub.d f23, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x22, 0xa79a779d314b2eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fsub.d f22, f7, f26, dyn # perform operation
fsub.d f22, f7, f26, rdn # perform operation
fsub.d f22, f7, f26, rmm # perform operation
fsub.d f22, f7, f26, rne # perform operation
fsub.d f22, f7, f26, rtz # perform operation
fsub.d f22, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x18, 0x93dd4f610dec11db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fsub.d f18, f23, f24, dyn # perform operation
fsub.d f18, f23, f24, rdn # perform operation
fsub.d f18, f23, f24, rmm # perform operation
fsub.d f18, f23, f24, rne # perform operation
fsub.d f18, f23, f24, rtz # perform operation
fsub.d f18, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x27, 0xbee66fdecd86f643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fsub.d f27, f24, f25, dyn # perform operation
fsub.d f27, f24, f25, rdn # perform operation
fsub.d f27, f24, f25, rmm # perform operation
fsub.d f27, f24, f25, rne # perform operation
fsub.d f27, f24, f25, rtz # perform operation
fsub.d f27, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x17, 0x36a62d1d4109d0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fsub.d f17, f15, f22, dyn # perform operation
fsub.d f17, f15, f22, rdn # perform operation
fsub.d f17, f15, f22, rmm # perform operation
fsub.d f17, f15, f22, rne # perform operation
fsub.d f17, f15, f22, rtz # perform operation
fsub.d f17, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x17, 0xe60ccf3d9f311c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fsub.d f17, f5, f30, dyn # perform operation
fsub.d f17, f5, f30, rdn # perform operation
fsub.d f17, f5, f30, rmm # perform operation
fsub.d f17, f5, f30, rne # perform operation
fsub.d f17, f5, f30, rtz # perform operation
fsub.d f17, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x7, 0x5abe3a9c5ddc4b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fsub.d f7, f31, f4, dyn # perform operation
fsub.d f7, f31, f4, rdn # perform operation
fsub.d f7, f31, f4, rmm # perform operation
fsub.d f7, f31, f4, rne # perform operation
fsub.d f7, f31, f4, rtz # perform operation
fsub.d f7, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x22, 0x5039c53175f232cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fsub.d f22, f24, f12, dyn # perform operation
fsub.d f22, f24, f12, rdn # perform operation
fsub.d f22, f24, f12, rmm # perform operation
fsub.d f22, f24, f12, rne # perform operation
fsub.d f22, f24, f12, rtz # perform operation
fsub.d f22, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x16, 0xddecceb689a8aaea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fsub.d f16, f23, f26, dyn # perform operation
fsub.d f16, f23, f26, rdn # perform operation
fsub.d f16, f23, f26, rmm # perform operation
fsub.d f16, f23, f26, rne # perform operation
fsub.d f16, f23, f26, rtz # perform operation
fsub.d f16, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x2, 0x003af3bd99d7bfd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fsub.d f2, f17, f11, dyn # perform operation
fsub.d f2, f17, f11, rdn # perform operation
fsub.d f2, f17, f11, rmm # perform operation
fsub.d f2, f17, f11, rne # perform operation
fsub.d f2, f17, f11, rtz # perform operation
fsub.d f2, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x12, 0x5efebefa827aa6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fsub.d f12, f8, f31, dyn # perform operation
fsub.d f12, f8, f31, rdn # perform operation
fsub.d f12, f8, f31, rmm # perform operation
fsub.d f12, f8, f31, rne # perform operation
fsub.d f12, f8, f31, rtz # perform operation
fsub.d f12, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x1, 0x892f21090e7c13d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fsub.d f1, f23, f16, dyn # perform operation
fsub.d f1, f23, f16, rdn # perform operation
fsub.d f1, f23, f16, rmm # perform operation
fsub.d f1, f23, f16, rne # perform operation
fsub.d f1, f23, f16, rtz # perform operation
fsub.d f1, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x31, 0xb584f4ea925acbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fsub.d f31, f6, f9, dyn # perform operation
fsub.d f31, f6, f9, rdn # perform operation
fsub.d f31, f6, f9, rmm # perform operation
fsub.d f31, f6, f9, rne # perform operation
fsub.d f31, f6, f9, rtz # perform operation
fsub.d f31, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x1, 0xd5c4240b57ac5971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fsub.d f1, f25, f31, dyn # perform operation
fsub.d f1, f25, f31, rdn # perform operation
fsub.d f1, f25, f31, rmm # perform operation
fsub.d f1, f25, f31, rne # perform operation
fsub.d f1, f25, f31, rtz # perform operation
fsub.d f1, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x12, 0x593bbcafb8170719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fsub.d f12, f9, f16, dyn # perform operation
fsub.d f12, f9, f16, rdn # perform operation
fsub.d f12, f9, f16, rmm # perform operation
fsub.d f12, f9, f16, rne # perform operation
fsub.d f12, f9, f16, rtz # perform operation
fsub.d f12, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x29, 0xb2759a1b1ac08ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fsub.d f29, f20, f13, dyn # perform operation
fsub.d f29, f20, f13, rdn # perform operation
fsub.d f29, f20, f13, rmm # perform operation
fsub.d f29, f20, f13, rne # perform operation
fsub.d f29, f20, f13, rtz # perform operation
fsub.d f29, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x4, 0xb21cf5131eddc0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fsub.d f4, f14, f8, dyn # perform operation
fsub.d f4, f14, f8, rdn # perform operation
fsub.d f4, f14, f8, rmm # perform operation
fsub.d f4, f14, f8, rne # perform operation
fsub.d f4, f14, f8, rtz # perform operation
fsub.d f4, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x16, 0x6e486d212a5cbf2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fsub.d f16, f10, f29, dyn # perform operation
fsub.d f16, f10, f29, rdn # perform operation
fsub.d f16, f10, f29, rmm # perform operation
fsub.d f16, f10, f29, rne # perform operation
fsub.d f16, f10, f29, rtz # perform operation
fsub.d f16, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x3, 0xf6c7d5b339ee01d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fsub.d f3, f31, f5, dyn # perform operation
fsub.d f3, f31, f5, rdn # perform operation
fsub.d f3, f31, f5, rmm # perform operation
fsub.d f3, f31, f5, rne # perform operation
fsub.d f3, f31, f5, rtz # perform operation
fsub.d f3, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x23, 0x6a3060cb6d8b57ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fsub.d f23, f15, f3, dyn # perform operation
fsub.d f23, f15, f3, rdn # perform operation
fsub.d f23, f15, f3, rmm # perform operation
fsub.d f23, f15, f3, rne # perform operation
fsub.d f23, f15, f3, rtz # perform operation
fsub.d f23, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x18, 0xa0189cbb64677691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fsub.d f18, f15, f27, dyn # perform operation
fsub.d f18, f15, f27, rdn # perform operation
fsub.d f18, f15, f27, rmm # perform operation
fsub.d f18, f15, f27, rne # perform operation
fsub.d f18, f15, f27, rtz # perform operation
fsub.d f18, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x2, 0x9dab17b6456ebda2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fsub.d f2, f6, f19, dyn # perform operation
fsub.d f2, f6, f19, rdn # perform operation
fsub.d f2, f6, f19, rmm # perform operation
fsub.d f2, f6, f19, rne # perform operation
fsub.d f2, f6, f19, rtz # perform operation
fsub.d f2, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x27, 0x0c8a15a9cedcdf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fsub.d f27, f5, f4, dyn # perform operation
fsub.d f27, f5, f4, rdn # perform operation
fsub.d f27, f5, f4, rmm # perform operation
fsub.d f27, f5, f4, rne # perform operation
fsub.d f27, f5, f4, rtz # perform operation
fsub.d f27, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x26, 0xd23ee24c0a5f0a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fsub.d f26, f7, f16, dyn # perform operation
fsub.d f26, f7, f16, rdn # perform operation
fsub.d f26, f7, f16, rmm # perform operation
fsub.d f26, f7, f16, rne # perform operation
fsub.d f26, f7, f16, rtz # perform operation
fsub.d f26, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x9, 0x68bc71da35e51af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fsub.d f9, f10, f21, dyn # perform operation
fsub.d f9, f10, f21, rdn # perform operation
fsub.d f9, f10, f21, rmm # perform operation
fsub.d f9, f10, f21, rne # perform operation
fsub.d f9, f10, f21, rtz # perform operation
fsub.d f9, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x21, 0x965a675fc92c0414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fsub.d f21, f12, f25, dyn # perform operation
fsub.d f21, f12, f25, rdn # perform operation
fsub.d f21, f12, f25, rmm # perform operation
fsub.d f21, f12, f25, rne # perform operation
fsub.d f21, f12, f25, rtz # perform operation
fsub.d f21, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x10, 0x5e65745125048ede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fsub.d f10, f2, f25, dyn # perform operation
fsub.d f10, f2, f25, rdn # perform operation
fsub.d f10, f2, f25, rmm # perform operation
fsub.d f10, f2, f25, rne # perform operation
fsub.d f10, f2, f25, rtz # perform operation
fsub.d f10, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x29, 0xf390162459563344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fsub.d f29, f13, f19, dyn # perform operation
fsub.d f29, f13, f19, rdn # perform operation
fsub.d f29, f13, f19, rmm # perform operation
fsub.d f29, f13, f19, rne # perform operation
fsub.d f29, f13, f19, rtz # perform operation
fsub.d f29, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x15, 0x729be5bcc993dd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fsub.d f15, f19, f4, dyn # perform operation
fsub.d f15, f19, f4, rdn # perform operation
fsub.d f15, f19, f4, rmm # perform operation
fsub.d f15, f19, f4, rne # perform operation
fsub.d f15, f19, f4, rtz # perform operation
fsub.d f15, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x4, 0xb9a86a83b4ac60d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fsub.d f4, f30, f8, dyn # perform operation
fsub.d f4, f30, f8, rdn # perform operation
fsub.d f4, f30, f8, rmm # perform operation
fsub.d f4, f30, f8, rne # perform operation
fsub.d f4, f30, f8, rtz # perform operation
fsub.d f4, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x8, 0xb6dec9f711f44e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fsub.d f8, f17, f2, dyn # perform operation
fsub.d f8, f17, f2, rdn # perform operation
fsub.d f8, f17, f2, rmm # perform operation
fsub.d f8, f17, f2, rne # perform operation
fsub.d f8, f17, f2, rtz # perform operation
fsub.d f8, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x22, 0x62c1684a69fa5a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fsub.d f22, f26, f6, dyn # perform operation
fsub.d f22, f26, f6, rdn # perform operation
fsub.d f22, f26, f6, rmm # perform operation
fsub.d f22, f26, f6, rne # perform operation
fsub.d f22, f26, f6, rtz # perform operation
fsub.d f22, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x24, 0x05b6652e93642a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fsub.d f24, f9, f25, dyn # perform operation
fsub.d f24, f9, f25, rdn # perform operation
fsub.d f24, f9, f25, rmm # perform operation
fsub.d f24, f9, f25, rne # perform operation
fsub.d f24, f9, f25, rtz # perform operation
fsub.d f24, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x13, 0x4b2b0b86e8672eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fsub.d f13, f22, f27, dyn # perform operation
fsub.d f13, f22, f27, rdn # perform operation
fsub.d f13, f22, f27, rmm # perform operation
fsub.d f13, f22, f27, rne # perform operation
fsub.d f13, f22, f27, rtz # perform operation
fsub.d f13, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x16, 0xccf23ccaae239c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fsub.d f16, f25, f17, dyn # perform operation
fsub.d f16, f25, f17, rdn # perform operation
fsub.d f16, f25, f17, rmm # perform operation
fsub.d f16, f25, f17, rne # perform operation
fsub.d f16, f25, f17, rtz # perform operation
fsub.d f16, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x2, 0xc123cfe3e0c7cd89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fsub.d f2, f6, f29, dyn # perform operation
fsub.d f2, f6, f29, rdn # perform operation
fsub.d f2, f6, f29, rmm # perform operation
fsub.d f2, f6, f29, rne # perform operation
fsub.d f2, f6, f29, rtz # perform operation
fsub.d f2, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x18, 0x60504d51030066b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fsub.d f18, f11, f7, dyn # perform operation
fsub.d f18, f11, f7, rdn # perform operation
fsub.d f18, f11, f7, rmm # perform operation
fsub.d f18, f11, f7, rne # perform operation
fsub.d f18, f11, f7, rtz # perform operation
fsub.d f18, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x3, 0xd9ea58cc7d534c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fsub.d f3, f25, f15, dyn # perform operation
fsub.d f3, f25, f15, rdn # perform operation
fsub.d f3, f25, f15, rmm # perform operation
fsub.d f3, f25, f15, rne # perform operation
fsub.d f3, f25, f15, rtz # perform operation
fsub.d f3, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x28, 0xea9a07daa5972877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
fsub.d f28, f10, f18, dyn # perform operation
fsub.d f28, f10, f18, rdn # perform operation
fsub.d f28, f10, f18, rmm # perform operation
fsub.d f28, f10, f18, rne # perform operation
fsub.d f28, f10, f18, rtz # perform operation
fsub.d f28, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x12, 0x670e3cb2920f5be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fsub.d f12, f19, f7, dyn # perform operation
fsub.d f12, f19, f7, rdn # perform operation
fsub.d f12, f19, f7, rmm # perform operation
fsub.d f12, f19, f7, rne # perform operation
fsub.d f12, f19, f7, rtz # perform operation
fsub.d f12, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x30, 0x03d9e19154c0bc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fsub.d f30, f20, f23, dyn # perform operation
fsub.d f30, f20, f23, rdn # perform operation
fsub.d f30, f20, f23, rmm # perform operation
fsub.d f30, f20, f23, rne # perform operation
fsub.d f30, f20, f23, rtz # perform operation
fsub.d f30, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x30, 0x41065fd6f1dab036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fsub.d f30, f7, f2, dyn # perform operation
fsub.d f30, f7, f2, rdn # perform operation
fsub.d f30, f7, f2, rmm # perform operation
fsub.d f30, f7, f2, rne # perform operation
fsub.d f30, f7, f2, rtz # perform operation
fsub.d f30, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x11, 0x59af5ee9c449582a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fsub.d f11, f10, f29, dyn # perform operation
fsub.d f11, f10, f29, rdn # perform operation
fsub.d f11, f10, f29, rmm # perform operation
fsub.d f11, f10, f29, rne # perform operation
fsub.d f11, f10, f29, rtz # perform operation
fsub.d f11, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x25, 0x22c4f53cda62329d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fsub.d f25, f16, f12, dyn # perform operation
fsub.d f25, f16, f12, rdn # perform operation
fsub.d f25, f16, f12, rmm # perform operation
fsub.d f25, f16, f12, rne # perform operation
fsub.d f25, f16, f12, rtz # perform operation
fsub.d f25, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x1, 0xe8babc0bea5c96ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fsub.d f1, f16, f22, dyn # perform operation
fsub.d f1, f16, f22, rdn # perform operation
fsub.d f1, f16, f22, rmm # perform operation
fsub.d f1, f16, f22, rne # perform operation
fsub.d f1, f16, f22, rtz # perform operation
fsub.d f1, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x31, 0x9a50c07a77cb63a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fsub.d f31, f13, f12, dyn # perform operation
fsub.d f31, f13, f12, rdn # perform operation
fsub.d f31, f13, f12, rmm # perform operation
fsub.d f31, f13, f12, rne # perform operation
fsub.d f31, f13, f12, rtz # perform operation
fsub.d f31, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x14, 0x6fae93ced04799a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fsub.d f14, f28, f16, dyn # perform operation
fsub.d f14, f28, f16, rdn # perform operation
fsub.d f14, f28, f16, rmm # perform operation
fsub.d f14, f28, f16, rne # perform operation
fsub.d f14, f28, f16, rtz # perform operation
fsub.d f14, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x20, 0x7b759062f557aea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fsub.d f20, f31, f23, dyn # perform operation
fsub.d f20, f31, f23, rdn # perform operation
fsub.d f20, f31, f23, rmm # perform operation
fsub.d f20, f31, f23, rne # perform operation
fsub.d f20, f31, f23, rtz # perform operation
fsub.d f20, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x6, 0xa5035a07906a6a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fsub.d f6, f15, f31, dyn # perform operation
fsub.d f6, f15, f31, rdn # perform operation
fsub.d f6, f15, f31, rmm # perform operation
fsub.d f6, f15, f31, rne # perform operation
fsub.d f6, f15, f31, rtz # perform operation
fsub.d f6, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x5, 0x2acad3661110929f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fsub.d f5, f10, f28, dyn # perform operation
fsub.d f5, f10, f28, rdn # perform operation
fsub.d f5, f10, f28, rmm # perform operation
fsub.d f5, f10, f28, rne # perform operation
fsub.d f5, f10, f28, rtz # perform operation
fsub.d f5, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x18, 0x587ed5ce45722a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fsub.d f18, f26, f1, dyn # perform operation
fsub.d f18, f26, f1, rdn # perform operation
fsub.d f18, f26, f1, rmm # perform operation
fsub.d f18, f26, f1, rne # perform operation
fsub.d f18, f26, f1, rtz # perform operation
fsub.d f18, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x18, 0x2366223183970162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fsub.d f18, f21, f31, dyn # perform operation
fsub.d f18, f21, f31, rdn # perform operation
fsub.d f18, f21, f31, rmm # perform operation
fsub.d f18, f21, f31, rne # perform operation
fsub.d f18, f21, f31, rtz # perform operation
fsub.d f18, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x31, 0x49c986abf945246f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fsub.d f31, f21, f8, dyn # perform operation
fsub.d f31, f21, f8, rdn # perform operation
fsub.d f31, f21, f8, rmm # perform operation
fsub.d f31, f21, f8, rne # perform operation
fsub.d f31, f21, f8, rtz # perform operation
fsub.d f31, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x26, 0x7b074ce2c173382b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fsub.d f26, f14, f4, dyn # perform operation
fsub.d f26, f14, f4, rdn # perform operation
fsub.d f26, f14, f4, rmm # perform operation
fsub.d f26, f14, f4, rne # perform operation
fsub.d f26, f14, f4, rtz # perform operation
fsub.d f26, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x5, 0x414e13245e856c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fsub.d f5, f7, f12, dyn # perform operation
fsub.d f5, f7, f12, rdn # perform operation
fsub.d f5, f7, f12, rmm # perform operation
fsub.d f5, f7, f12, rne # perform operation
fsub.d f5, f7, f12, rtz # perform operation
fsub.d f5, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0x12e6be2b474ff11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fsub.d f25, f30, f22, dyn # perform operation
fsub.d f25, f30, f22, rdn # perform operation
fsub.d f25, f30, f22, rmm # perform operation
fsub.d f25, f30, f22, rne # perform operation
fsub.d f25, f30, f22, rtz # perform operation
fsub.d f25, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x25, 0x041425bb98ad94fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fsub.d f25, f6, f27, dyn # perform operation
fsub.d f25, f6, f27, rdn # perform operation
fsub.d f25, f6, f27, rmm # perform operation
fsub.d f25, f6, f27, rne # perform operation
fsub.d f25, f6, f27, rtz # perform operation
fsub.d f25, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x17, 0x485695dbc925d6d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fsub.d f17, f4, f20, dyn # perform operation
fsub.d f17, f4, f20, rdn # perform operation
fsub.d f17, f4, f20, rmm # perform operation
fsub.d f17, f4, f20, rne # perform operation
fsub.d f17, f4, f20, rtz # perform operation
fsub.d f17, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x18, 0xbb273809913325a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fsub.d f18, f23, f3, dyn # perform operation
fsub.d f18, f23, f3, rdn # perform operation
fsub.d f18, f23, f3, rmm # perform operation
fsub.d f18, f23, f3, rne # perform operation
fsub.d f18, f23, f3, rtz # perform operation
fsub.d f18, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x23, 0xa5bb1b6e4067ac2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fsub.d f23, f16, f17, dyn # perform operation
fsub.d f23, f16, f17, rdn # perform operation
fsub.d f23, f16, f17, rmm # perform operation
fsub.d f23, f16, f17, rne # perform operation
fsub.d f23, f16, f17, rtz # perform operation
fsub.d f23, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x12, 0xdc21158ef9d8283c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fsub.d f12, f18, f3, dyn # perform operation
fsub.d f12, f18, f3, rdn # perform operation
fsub.d f12, f18, f3, rmm # perform operation
fsub.d f12, f18, f3, rne # perform operation
fsub.d f12, f18, f3, rtz # perform operation
fsub.d f12, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x14, 0x83456dee765f752c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fsub.d f14, f6, f1, dyn # perform operation
fsub.d f14, f6, f1, rdn # perform operation
fsub.d f14, f6, f1, rmm # perform operation
fsub.d f14, f6, f1, rne # perform operation
fsub.d f14, f6, f1, rtz # perform operation
fsub.d f14, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x31, 0x785ce125536eb975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fsub.d f31, f19, f21, dyn # perform operation
fsub.d f31, f19, f21, rdn # perform operation
fsub.d f31, f19, f21, rmm # perform operation
fsub.d f31, f19, f21, rne # perform operation
fsub.d f31, f19, f21, rtz # perform operation
fsub.d f31, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x21, 0xe379f15e0c05c4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fsub.d f21, f23, f13, dyn # perform operation
fsub.d f21, f23, f13, rdn # perform operation
fsub.d f21, f23, f13, rmm # perform operation
fsub.d f21, f23, f13, rne # perform operation
fsub.d f21, f23, f13, rtz # perform operation
fsub.d f21, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x26, 0xd9bead33cf9790fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fsub.d f26, f8, f24, dyn # perform operation
fsub.d f26, f8, f24, rdn # perform operation
fsub.d f26, f8, f24, rmm # perform operation
fsub.d f26, f8, f24, rne # perform operation
fsub.d f26, f8, f24, rtz # perform operation
fsub.d f26, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x26, 0x13258516d758db3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fsub.d f26, f6, f4, dyn # perform operation
fsub.d f26, f6, f4, rdn # perform operation
fsub.d f26, f6, f4, rmm # perform operation
fsub.d f26, f6, f4, rne # perform operation
fsub.d f26, f6, f4, rtz # perform operation
fsub.d f26, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x11, 0x25e3fb886e38cc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fsub.d f11, f27, f31, dyn # perform operation
fsub.d f11, f27, f31, rdn # perform operation
fsub.d f11, f27, f31, rmm # perform operation
fsub.d f11, f27, f31, rne # perform operation
fsub.d f11, f27, f31, rtz # perform operation
fsub.d f11, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x6, 0x923b986e42af5bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fsub.d f6, f31, f29, dyn # perform operation
fsub.d f6, f31, f29, rdn # perform operation
fsub.d f6, f31, f29, rmm # perform operation
fsub.d f6, f31, f29, rne # perform operation
fsub.d f6, f31, f29, rtz # perform operation
fsub.d f6, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x20, 0x1232acd309d52508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fsub.d f20, f6, f18, dyn # perform operation
fsub.d f20, f6, f18, rdn # perform operation
fsub.d f20, f6, f18, rmm # perform operation
fsub.d f20, f6, f18, rne # perform operation
fsub.d f20, f6, f18, rtz # perform operation
fsub.d f20, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0x6a47741453297308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fsub.d f22, f30, f6, dyn # perform operation
fsub.d f22, f30, f6, rdn # perform operation
fsub.d f22, f30, f6, rmm # perform operation
fsub.d f22, f30, f6, rne # perform operation
fsub.d f22, f30, f6, rtz # perform operation
fsub.d f22, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x27, 0x5e05ea940ca875a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fsub.d f27, f9, f29, dyn # perform operation
fsub.d f27, f9, f29, rdn # perform operation
fsub.d f27, f9, f29, rmm # perform operation
fsub.d f27, f9, f29, rne # perform operation
fsub.d f27, f9, f29, rtz # perform operation
fsub.d f27, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x16, 0xc10df48af239b475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fsub.d f16, f5, f2, dyn # perform operation
fsub.d f16, f5, f2, rdn # perform operation
fsub.d f16, f5, f2, rmm # perform operation
fsub.d f16, f5, f2, rne # perform operation
fsub.d f16, f5, f2, rtz # perform operation
fsub.d f16, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x8, 0xea31bdbeabe36978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fsub.d f8, f1, f14, dyn # perform operation
fsub.d f8, f1, f14, rdn # perform operation
fsub.d f8, f1, f14, rmm # perform operation
fsub.d f8, f1, f14, rne # perform operation
fsub.d f8, f1, f14, rtz # perform operation
fsub.d f8, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x17, 0xf0b728483d54a151 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fsub.d f17, f19, f8, dyn # perform operation
fsub.d f17, f19, f8, rdn # perform operation
fsub.d f17, f19, f8, rmm # perform operation
fsub.d f17, f19, f8, rne # perform operation
fsub.d f17, f19, f8, rtz # perform operation
fsub.d f17, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x30, 0x9253af4b9405ae93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fsub.d f30, f11, f3, dyn # perform operation
fsub.d f30, f11, f3, rdn # perform operation
fsub.d f30, f11, f3, rmm # perform operation
fsub.d f30, f11, f3, rne # perform operation
fsub.d f30, f11, f3, rtz # perform operation
fsub.d f30, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x2, 0xe01afc81f43f98a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fsub.d f2, f17, f3, dyn # perform operation
fsub.d f2, f17, f3, rdn # perform operation
fsub.d f2, f17, f3, rmm # perform operation
fsub.d f2, f17, f3, rne # perform operation
fsub.d f2, f17, f3, rtz # perform operation
fsub.d f2, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x31, 0x11cc1e873aeb4ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fsub.d f31, f24, f20, dyn # perform operation
fsub.d f31, f24, f20, rdn # perform operation
fsub.d f31, f24, f20, rmm # perform operation
fsub.d f31, f24, f20, rne # perform operation
fsub.d f31, f24, f20, rtz # perform operation
fsub.d f31, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x30, 0x2a6487eaa17f4b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fsub.d f30, f2, f14, dyn # perform operation
fsub.d f30, f2, f14, rdn # perform operation
fsub.d f30, f2, f14, rmm # perform operation
fsub.d f30, f2, f14, rne # perform operation
fsub.d f30, f2, f14, rtz # perform operation
fsub.d f30, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x2, 0xfd1e24015d4b23a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fsub.d f2, f12, f11, dyn # perform operation
fsub.d f2, f12, f11, rdn # perform operation
fsub.d f2, f12, f11, rmm # perform operation
fsub.d f2, f12, f11, rne # perform operation
fsub.d f2, f12, f11, rtz # perform operation
fsub.d f2, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x7, 0xc98931e0c9a04a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fsub.d f7, f13, f21, dyn # perform operation
fsub.d f7, f13, f21, rdn # perform operation
fsub.d f7, f13, f21, rmm # perform operation
fsub.d f7, f13, f21, rne # perform operation
fsub.d f7, f13, f21, rtz # perform operation
fsub.d f7, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x4, 0x59553d6f44de71ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fsub.d f4, f1, f13, dyn # perform operation
fsub.d f4, f1, f13, rdn # perform operation
fsub.d f4, f1, f13, rmm # perform operation
fsub.d f4, f1, f13, rne # perform operation
fsub.d f4, f1, f13, rtz # perform operation
fsub.d f4, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x9, 0xdb2fe4cc9b6ed5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fsub.d f9, f18, f16, dyn # perform operation
fsub.d f9, f18, f16, rdn # perform operation
fsub.d f9, f18, f16, rmm # perform operation
fsub.d f9, f18, f16, rne # perform operation
fsub.d f9, f18, f16, rtz # perform operation
fsub.d f9, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x18, 0x711a02e8ba1ec1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fsub.d f18, f27, f11, dyn # perform operation
fsub.d f18, f27, f11, rdn # perform operation
fsub.d f18, f27, f11, rmm # perform operation
fsub.d f18, f27, f11, rne # perform operation
fsub.d f18, f27, f11, rtz # perform operation
fsub.d f18, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x21, 0x59437b4ab31232ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fsub.d f21, f10, f5, dyn # perform operation
fsub.d f21, f10, f5, rdn # perform operation
fsub.d f21, f10, f5, rmm # perform operation
fsub.d f21, f10, f5, rne # perform operation
fsub.d f21, f10, f5, rtz # perform operation
fsub.d f21, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x13, 0xa4719a8753f59b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fsub.d f13, f14, f1, dyn # perform operation
fsub.d f13, f14, f1, rdn # perform operation
fsub.d f13, f14, f1, rmm # perform operation
fsub.d f13, f14, f1, rne # perform operation
fsub.d f13, f14, f1, rtz # perform operation
fsub.d f13, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x1, 0x93799de600000f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fsub.d f1, f8, f7, dyn # perform operation
fsub.d f1, f8, f7, rdn # perform operation
fsub.d f1, f8, f7, rmm # perform operation
fsub.d f1, f8, f7, rne # perform operation
fsub.d f1, f8, f7, rtz # perform operation
fsub.d f1, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x23, 0x95f4199efaf99111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fsub.d f23, f10, f22, dyn # perform operation
fsub.d f23, f10, f22, rdn # perform operation
fsub.d f23, f10, f22, rmm # perform operation
fsub.d f23, f10, f22, rne # perform operation
fsub.d f23, f10, f22, rtz # perform operation
fsub.d f23, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x23, 0xa2033674693f93f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fsub.d f23, f5, f9, dyn # perform operation
fsub.d f23, f5, f9, rdn # perform operation
fsub.d f23, f5, f9, rmm # perform operation
fsub.d f23, f5, f9, rne # perform operation
fsub.d f23, f5, f9, rtz # perform operation
fsub.d f23, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x18, 0x33805f0988bf6944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fsub.d f18, f25, f31, dyn # perform operation
fsub.d f18, f25, f31, rdn # perform operation
fsub.d f18, f25, f31, rmm # perform operation
fsub.d f18, f25, f31, rne # perform operation
fsub.d f18, f25, f31, rtz # perform operation
fsub.d f18, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x31, 0x3b595091add925eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fsub.d f31, f17, f19, dyn # perform operation
fsub.d f31, f17, f19, rdn # perform operation
fsub.d f31, f17, f19, rmm # perform operation
fsub.d f31, f17, f19, rne # perform operation
fsub.d f31, f17, f19, rtz # perform operation
fsub.d f31, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x24, 0x03fac68765c4a5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fsub.d f24, f28, f12, dyn # perform operation
fsub.d f24, f28, f12, rdn # perform operation
fsub.d f24, f28, f12, rmm # perform operation
fsub.d f24, f28, f12, rne # perform operation
fsub.d f24, f28, f12, rtz # perform operation
fsub.d f24, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x20, 0xe4780844848f7293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fsub.d f20, f22, f30, dyn # perform operation
fsub.d f20, f22, f30, rdn # perform operation
fsub.d f20, f22, f30, rmm # perform operation
fsub.d f20, f22, f30, rne # perform operation
fsub.d f20, f22, f30, rtz # perform operation
fsub.d f20, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x14, 0x3841a4a98b1fd2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fsub.d f14, f15, f28, dyn # perform operation
fsub.d f14, f15, f28, rdn # perform operation
fsub.d f14, f15, f28, rmm # perform operation
fsub.d f14, f15, f28, rne # perform operation
fsub.d f14, f15, f28, rtz # perform operation
fsub.d f14, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x23, 0x125b376078ac361a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fsub.d f23, f5, f28, dyn # perform operation
fsub.d f23, f5, f28, rdn # perform operation
fsub.d f23, f5, f28, rmm # perform operation
fsub.d f23, f5, f28, rne # perform operation
fsub.d f23, f5, f28, rtz # perform operation
fsub.d f23, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x23, 0xcf6025baf267564d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fsub.d f23, f7, f11, dyn # perform operation
fsub.d f23, f7, f11, rdn # perform operation
fsub.d f23, f7, f11, rmm # perform operation
fsub.d f23, f7, f11, rne # perform operation
fsub.d f23, f7, f11, rtz # perform operation
fsub.d f23, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x23, 0xb9cd6e64f6c54d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fsub.d f23, f16, f5, dyn # perform operation
fsub.d f23, f16, f5, rdn # perform operation
fsub.d f23, f16, f5, rmm # perform operation
fsub.d f23, f16, f5, rne # perform operation
fsub.d f23, f16, f5, rtz # perform operation
fsub.d f23, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x10, 0xb7a80aa1a4a53e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fsub.d f10, f28, f2, dyn # perform operation
fsub.d f10, f28, f2, rdn # perform operation
fsub.d f10, f28, f2, rmm # perform operation
fsub.d f10, f28, f2, rne # perform operation
fsub.d f10, f28, f2, rtz # perform operation
fsub.d f10, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x4, 0x3b6bc388ead61df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fsub.d f4, f20, f8, dyn # perform operation
fsub.d f4, f20, f8, rdn # perform operation
fsub.d f4, f20, f8, rmm # perform operation
fsub.d f4, f20, f8, rne # perform operation
fsub.d f4, f20, f8, rtz # perform operation
fsub.d f4, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x31, 0x80602fccd0da9a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
fsub.d f31, f28, f9, dyn # perform operation
fsub.d f31, f28, f9, rdn # perform operation
fsub.d f31, f28, f9, rmm # perform operation
fsub.d f31, f28, f9, rne # perform operation
fsub.d f31, f28, f9, rtz # perform operation
fsub.d f31, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x3, 0x6052475d76d2cf6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fsub.d f3, f24, f21, dyn # perform operation
fsub.d f3, f24, f21, rdn # perform operation
fsub.d f3, f24, f21, rmm # perform operation
fsub.d f3, f24, f21, rne # perform operation
fsub.d f3, f24, f21, rtz # perform operation
fsub.d f3, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x27, 0x552431980d7bab51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fsub.d f27, f5, f8, dyn # perform operation
fsub.d f27, f5, f8, rdn # perform operation
fsub.d f27, f5, f8, rmm # perform operation
fsub.d f27, f5, f8, rne # perform operation
fsub.d f27, f5, f8, rtz # perform operation
fsub.d f27, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x29, 0x2cdf5b984fbe41e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fsub.d f29, f1, f11, dyn # perform operation
fsub.d f29, f1, f11, rdn # perform operation
fsub.d f29, f1, f11, rmm # perform operation
fsub.d f29, f1, f11, rne # perform operation
fsub.d f29, f1, f11, rtz # perform operation
fsub.d f29, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x1, 0x4d2d741be6975220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fsub.d f1, f19, f2, dyn # perform operation
fsub.d f1, f19, f2, rdn # perform operation
fsub.d f1, f19, f2, rmm # perform operation
fsub.d f1, f19, f2, rne # perform operation
fsub.d f1, f19, f2, rtz # perform operation
fsub.d f1, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x17, 0x760d2b346a73b053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fsub.d f17, f18, f3, dyn # perform operation
fsub.d f17, f18, f3, rdn # perform operation
fsub.d f17, f18, f3, rmm # perform operation
fsub.d f17, f18, f3, rne # perform operation
fsub.d f17, f18, f3, rtz # perform operation
fsub.d f17, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x5, 0x3270330e9ca859b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fsub.d f5, f27, f19, dyn # perform operation
fsub.d f5, f27, f19, rdn # perform operation
fsub.d f5, f27, f19, rmm # perform operation
fsub.d f5, f27, f19, rne # perform operation
fsub.d f5, f27, f19, rtz # perform operation
fsub.d f5, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x17, 0xbec770052337b9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fsub.d f17, f13, f6, dyn # perform operation
fsub.d f17, f13, f6, rdn # perform operation
fsub.d f17, f13, f6, rmm # perform operation
fsub.d f17, f13, f6, rne # perform operation
fsub.d f17, f13, f6, rtz # perform operation
fsub.d f17, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x4, 0x74fa6cbc850654e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fsub.d f4, f13, f16, dyn # perform operation
fsub.d f4, f13, f16, rdn # perform operation
fsub.d f4, f13, f16, rmm # perform operation
fsub.d f4, f13, f16, rne # perform operation
fsub.d f4, f13, f16, rtz # perform operation
fsub.d f4, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x3, 0xed557d04852b8839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fsub.d f3, f17, f25, dyn # perform operation
fsub.d f3, f17, f25, rdn # perform operation
fsub.d f3, f17, f25, rmm # perform operation
fsub.d f3, f17, f25, rne # perform operation
fsub.d f3, f17, f25, rtz # perform operation
fsub.d f3, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x6, 0x6f5cd7bf9ff4c783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fsub.d f6, f3, f20, dyn # perform operation
fsub.d f6, f3, f20, rdn # perform operation
fsub.d f6, f3, f20, rmm # perform operation
fsub.d f6, f3, f20, rne # perform operation
fsub.d f6, f3, f20, rtz # perform operation
fsub.d f6, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x2, 0x440b14dd0147c9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fsub.d f2, f20, f14, dyn # perform operation
fsub.d f2, f20, f14, rdn # perform operation
fsub.d f2, f20, f14, rmm # perform operation
fsub.d f2, f20, f14, rne # perform operation
fsub.d f2, f20, f14, rtz # perform operation
fsub.d f2, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x22, 0x4679c3a806beafe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fsub.d f22, f21, f5, dyn # perform operation
fsub.d f22, f21, f5, rdn # perform operation
fsub.d f22, f21, f5, rmm # perform operation
fsub.d f22, f21, f5, rne # perform operation
fsub.d f22, f21, f5, rtz # perform operation
fsub.d f22, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x28, 0xd25c832d43dd1c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fsub.d f28, f2, f10, dyn # perform operation
fsub.d f28, f2, f10, rdn # perform operation
fsub.d f28, f2, f10, rmm # perform operation
fsub.d f28, f2, f10, rne # perform operation
fsub.d f28, f2, f10, rtz # perform operation
fsub.d f28, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x6, 0x6a6bb5e8c7df17e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fsub.d f6, f23, f29, dyn # perform operation
fsub.d f6, f23, f29, rdn # perform operation
fsub.d f6, f23, f29, rmm # perform operation
fsub.d f6, f23, f29, rne # perform operation
fsub.d f6, f23, f29, rtz # perform operation
fsub.d f6, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x12, 0xb712044e13d41ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fsub.d f12, f5, f10, dyn # perform operation
fsub.d f12, f5, f10, rdn # perform operation
fsub.d f12, f5, f10, rmm # perform operation
fsub.d f12, f5, f10, rne # perform operation
fsub.d f12, f5, f10, rtz # perform operation
fsub.d f12, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x22, 0x5b914975dfd8b348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fsub.d f22, f2, f20, dyn # perform operation
fsub.d f22, f2, f20, rdn # perform operation
fsub.d f22, f2, f20, rmm # perform operation
fsub.d f22, f2, f20, rne # perform operation
fsub.d f22, f2, f20, rtz # perform operation
fsub.d f22, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x24, 0x50702753be1b086d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fsub.d f24, f8, f9, dyn # perform operation
fsub.d f24, f8, f9, rdn # perform operation
fsub.d f24, f8, f9, rmm # perform operation
fsub.d f24, f8, f9, rne # perform operation
fsub.d f24, f8, f9, rtz # perform operation
fsub.d f24, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x20, 0xe6ae8732030c9294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fsub.d f20, f2, f3, dyn # perform operation
fsub.d f20, f2, f3, rdn # perform operation
fsub.d f20, f2, f3, rmm # perform operation
fsub.d f20, f2, f3, rne # perform operation
fsub.d f20, f2, f3, rtz # perform operation
fsub.d f20, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x18, 0x1a88f4d326710708 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fsub.d f18, f15, f10, dyn # perform operation
fsub.d f18, f15, f10, rdn # perform operation
fsub.d f18, f15, f10, rmm # perform operation
fsub.d f18, f15, f10, rne # perform operation
fsub.d f18, f15, f10, rtz # perform operation
fsub.d f18, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x26, 0x30e4b44bdd6f3edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fsub.d f26, f6, f29, dyn # perform operation
fsub.d f26, f6, f29, rdn # perform operation
fsub.d f26, f6, f29, rmm # perform operation
fsub.d f26, f6, f29, rne # perform operation
fsub.d f26, f6, f29, rtz # perform operation
fsub.d f26, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x3, 0xec3e87c3f9e617ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fsub.d f3, f26, f13, dyn # perform operation
fsub.d f3, f26, f13, rdn # perform operation
fsub.d f3, f26, f13, rmm # perform operation
fsub.d f3, f26, f13, rne # perform operation
fsub.d f3, f26, f13, rtz # perform operation
fsub.d f3, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x21, 0xd030fbe9c06a6cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fsub.d f21, f28, f7, dyn # perform operation
fsub.d f21, f28, f7, rdn # perform operation
fsub.d f21, f28, f7, rmm # perform operation
fsub.d f21, f28, f7, rne # perform operation
fsub.d f21, f28, f7, rtz # perform operation
fsub.d f21, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x5, 0x44171047d9f5a18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fsub.d f5, f8, f30, dyn # perform operation
fsub.d f5, f8, f30, rdn # perform operation
fsub.d f5, f8, f30, rmm # perform operation
fsub.d f5, f8, f30, rne # perform operation
fsub.d f5, f8, f30, rtz # perform operation
fsub.d f5, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x21, 0x94eeb31c4e2b7ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fsub.d f21, f26, f12, dyn # perform operation
fsub.d f21, f26, f12, rdn # perform operation
fsub.d f21, f26, f12, rmm # perform operation
fsub.d f21, f26, f12, rne # perform operation
fsub.d f21, f26, f12, rtz # perform operation
fsub.d f21, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x10, 0x8297fadf83cd22b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fsub.d f10, f17, f29, dyn # perform operation
fsub.d f10, f17, f29, rdn # perform operation
fsub.d f10, f17, f29, rmm # perform operation
fsub.d f10, f17, f29, rne # perform operation
fsub.d f10, f17, f29, rtz # perform operation
fsub.d f10, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x30, 0x7e34ac7dbc69129b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fsub.d f30, f6, f5, dyn # perform operation
fsub.d f30, f6, f5, rdn # perform operation
fsub.d f30, f6, f5, rmm # perform operation
fsub.d f30, f6, f5, rne # perform operation
fsub.d f30, f6, f5, rtz # perform operation
fsub.d f30, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x1, 0xf4d00c931569aef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fsub.d f1, f16, f20, dyn # perform operation
fsub.d f1, f16, f20, rdn # perform operation
fsub.d f1, f16, f20, rmm # perform operation
fsub.d f1, f16, f20, rne # perform operation
fsub.d f1, f16, f20, rtz # perform operation
fsub.d f1, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x2, 0xb39299b5f8f2a8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fsub.d f2, f8, f23, dyn # perform operation
fsub.d f2, f8, f23, rdn # perform operation
fsub.d f2, f8, f23, rmm # perform operation
fsub.d f2, f8, f23, rne # perform operation
fsub.d f2, f8, f23, rtz # perform operation
fsub.d f2, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x30, 0x84c4bc978aaf031a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fsub.d f30, f18, f19, dyn # perform operation
fsub.d f30, f18, f19, rdn # perform operation
fsub.d f30, f18, f19, rmm # perform operation
fsub.d f30, f18, f19, rne # perform operation
fsub.d f30, f18, f19, rtz # perform operation
fsub.d f30, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x15, 0x0b8bddf278f601df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fsub.d f15, f13, f31, dyn # perform operation
fsub.d f15, f13, f31, rdn # perform operation
fsub.d f15, f13, f31, rmm # perform operation
fsub.d f15, f13, f31, rne # perform operation
fsub.d f15, f13, f31, rtz # perform operation
fsub.d f15, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x7, 0xdd0e913a76921145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fsub.d f7, f24, f27, dyn # perform operation
fsub.d f7, f24, f27, rdn # perform operation
fsub.d f7, f24, f27, rmm # perform operation
fsub.d f7, f24, f27, rne # perform operation
fsub.d f7, f24, f27, rtz # perform operation
fsub.d f7, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x18, 0xbd8cf69358812b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fsub.d f18, f20, f23, dyn # perform operation
fsub.d f18, f20, f23, rdn # perform operation
fsub.d f18, f20, f23, rmm # perform operation
fsub.d f18, f20, f23, rne # perform operation
fsub.d f18, f20, f23, rtz # perform operation
fsub.d f18, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x29, 0x247f2f647f3cf16e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fsub.d f29, f12, f7, dyn # perform operation
fsub.d f29, f12, f7, rdn # perform operation
fsub.d f29, f12, f7, rmm # perform operation
fsub.d f29, f12, f7, rne # perform operation
fsub.d f29, f12, f7, rtz # perform operation
fsub.d f29, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x13, 0x5e22202961addcf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fsub.d f13, f20, f2, dyn # perform operation
fsub.d f13, f20, f2, rdn # perform operation
fsub.d f13, f20, f2, rmm # perform operation
fsub.d f13, f20, f2, rne # perform operation
fsub.d f13, f20, f2, rtz # perform operation
fsub.d f13, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x16, 0xb81c49c5cc2de74a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fsub.d f16, f12, f18, dyn # perform operation
fsub.d f16, f12, f18, rdn # perform operation
fsub.d f16, f12, f18, rmm # perform operation
fsub.d f16, f12, f18, rne # perform operation
fsub.d f16, f12, f18, rtz # perform operation
fsub.d f16, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x26, 0x5d1c078c5690c017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fsub.d f26, f18, f25, dyn # perform operation
fsub.d f26, f18, f25, rdn # perform operation
fsub.d f26, f18, f25, rmm # perform operation
fsub.d f26, f18, f25, rne # perform operation
fsub.d f26, f18, f25, rtz # perform operation
fsub.d f26, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x15, 0x80f5c2ca7b7d4f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fsub.d f15, f5, f30, dyn # perform operation
fsub.d f15, f5, f30, rdn # perform operation
fsub.d f15, f5, f30, rmm # perform operation
fsub.d f15, f5, f30, rne # perform operation
fsub.d f15, f5, f30, rtz # perform operation
fsub.d f15, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x17, 0xb7ed328eea4fd17d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fsub.d f17, f26, f28, dyn # perform operation
fsub.d f17, f26, f28, rdn # perform operation
fsub.d f17, f26, f28, rmm # perform operation
fsub.d f17, f26, f28, rne # perform operation
fsub.d f17, f26, f28, rtz # perform operation
fsub.d f17, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x19, 0x8f447fe7c0f7b7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fsub.d f19, f15, f16, dyn # perform operation
fsub.d f19, f15, f16, rdn # perform operation
fsub.d f19, f15, f16, rmm # perform operation
fsub.d f19, f15, f16, rne # perform operation
fsub.d f19, f15, f16, rtz # perform operation
fsub.d f19, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x6, 0x8101e5583c4b662d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fsub.d f6, f22, f29, dyn # perform operation
fsub.d f6, f22, f29, rdn # perform operation
fsub.d f6, f22, f29, rmm # perform operation
fsub.d f6, f22, f29, rne # perform operation
fsub.d f6, f22, f29, rtz # perform operation
fsub.d f6, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x12, 0x1f1e968f000b5a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fsub.d f12, f10, f13, dyn # perform operation
fsub.d f12, f10, f13, rdn # perform operation
fsub.d f12, f10, f13, rmm # perform operation
fsub.d f12, f10, f13, rne # perform operation
fsub.d f12, f10, f13, rtz # perform operation
fsub.d f12, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x4, 0xe5a03214d3aa9767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fsub.d f4, f16, f19, dyn # perform operation
fsub.d f4, f16, f19, rdn # perform operation
fsub.d f4, f16, f19, rmm # perform operation
fsub.d f4, f16, f19, rne # perform operation
fsub.d f4, f16, f19, rtz # perform operation
fsub.d f4, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x16, 0xa0b239592ee5a8e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fsub.d f16, f2, f30, dyn # perform operation
fsub.d f16, f2, f30, rdn # perform operation
fsub.d f16, f2, f30, rmm # perform operation
fsub.d f16, f2, f30, rne # perform operation
fsub.d f16, f2, f30, rtz # perform operation
fsub.d f16, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x6, 0x91cff4cfc0c3e2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fsub.d f6, f20, f24, dyn # perform operation
fsub.d f6, f20, f24, rdn # perform operation
fsub.d f6, f20, f24, rmm # perform operation
fsub.d f6, f20, f24, rne # perform operation
fsub.d f6, f20, f24, rtz # perform operation
fsub.d f6, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x11, 0x55c417d4fe3008ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fsub.d f11, f25, f10, dyn # perform operation
fsub.d f11, f25, f10, rdn # perform operation
fsub.d f11, f25, f10, rmm # perform operation
fsub.d f11, f25, f10, rne # perform operation
fsub.d f11, f25, f10, rtz # perform operation
fsub.d f11, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x20, 0xebfb2a40ceadd4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fsub.d f20, f31, f19, dyn # perform operation
fsub.d f20, f31, f19, rdn # perform operation
fsub.d f20, f31, f19, rmm # perform operation
fsub.d f20, f31, f19, rne # perform operation
fsub.d f20, f31, f19, rtz # perform operation
fsub.d f20, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x9, 0x0df2146508a3fc17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fsub.d f9, f14, f1, dyn # perform operation
fsub.d f9, f14, f1, rdn # perform operation
fsub.d f9, f14, f1, rmm # perform operation
fsub.d f9, f14, f1, rne # perform operation
fsub.d f9, f14, f1, rtz # perform operation
fsub.d f9, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x3, 0xf1c5146f0ceba1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fsub.d f3, f23, f29, dyn # perform operation
fsub.d f3, f23, f29, rdn # perform operation
fsub.d f3, f23, f29, rmm # perform operation
fsub.d f3, f23, f29, rne # perform operation
fsub.d f3, f23, f29, rtz # perform operation
fsub.d f3, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x20, 0x8aae099ec1990e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fsub.d f20, f9, f8, dyn # perform operation
fsub.d f20, f9, f8, rdn # perform operation
fsub.d f20, f9, f8, rmm # perform operation
fsub.d f20, f9, f8, rne # perform operation
fsub.d f20, f9, f8, rtz # perform operation
fsub.d f20, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x6, 0x86df0da46919beb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fsub.d f6, f12, f17, dyn # perform operation
fsub.d f6, f12, f17, rdn # perform operation
fsub.d f6, f12, f17, rmm # perform operation
fsub.d f6, f12, f17, rne # perform operation
fsub.d f6, f12, f17, rtz # perform operation
fsub.d f6, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x10, 0x0b4a85f70403f148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fsub.d f10, f17, f11, dyn # perform operation
fsub.d f10, f17, f11, rdn # perform operation
fsub.d f10, f17, f11, rmm # perform operation
fsub.d f10, f17, f11, rne # perform operation
fsub.d f10, f17, f11, rtz # perform operation
fsub.d f10, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x12, 0xd6cfb9d1563d25e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fsub.d f12, f5, f20, dyn # perform operation
fsub.d f12, f5, f20, rdn # perform operation
fsub.d f12, f5, f20, rmm # perform operation
fsub.d f12, f5, f20, rne # perform operation
fsub.d f12, f5, f20, rtz # perform operation
fsub.d f12, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x8, 0xc9d1b0d935f70e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fsub.d f8, f12, f1, dyn # perform operation
fsub.d f8, f12, f1, rdn # perform operation
fsub.d f8, f12, f1, rmm # perform operation
fsub.d f8, f12, f1, rne # perform operation
fsub.d f8, f12, f1, rtz # perform operation
fsub.d f8, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x24, 0xbdb3410bdea21ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fsub.d f24, f19, f2, dyn # perform operation
fsub.d f24, f19, f2, rdn # perform operation
fsub.d f24, f19, f2, rmm # perform operation
fsub.d f24, f19, f2, rne # perform operation
fsub.d f24, f19, f2, rtz # perform operation
fsub.d f24, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x10, 0x5779dd43bec8d3db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fsub.d f10, f27, f24, dyn # perform operation
fsub.d f10, f27, f24, rdn # perform operation
fsub.d f10, f27, f24, rmm # perform operation
fsub.d f10, f27, f24, rne # perform operation
fsub.d f10, f27, f24, rtz # perform operation
fsub.d f10, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x21, 0xdd1151ef693f727a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fsub.d f21, f13, f23, dyn # perform operation
fsub.d f21, f13, f23, rdn # perform operation
fsub.d f21, f13, f23, rmm # perform operation
fsub.d f21, f13, f23, rne # perform operation
fsub.d f21, f13, f23, rtz # perform operation
fsub.d f21, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x21, 0x7676073ebdcdc0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fsub.d f21, f14, f12, dyn # perform operation
fsub.d f21, f14, f12, rdn # perform operation
fsub.d f21, f14, f12, rmm # perform operation
fsub.d f21, f14, f12, rne # perform operation
fsub.d f21, f14, f12, rtz # perform operation
fsub.d f21, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x16, 0x680df5a43c9450e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fsub.d f16, f18, f29, dyn # perform operation
fsub.d f16, f18, f29, rdn # perform operation
fsub.d f16, f18, f29, rmm # perform operation
fsub.d f16, f18, f29, rne # perform operation
fsub.d f16, f18, f29, rtz # perform operation
fsub.d f16, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x23, 0xb15a7639cb843157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fsub.d f23, f4, f8, dyn # perform operation
fsub.d f23, f4, f8, rdn # perform operation
fsub.d f23, f4, f8, rmm # perform operation
fsub.d f23, f4, f8, rne # perform operation
fsub.d f23, f4, f8, rtz # perform operation
fsub.d f23, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x29, 0x5e9d625b144e6ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fsub.d f29, f4, f10, dyn # perform operation
fsub.d f29, f4, f10, rdn # perform operation
fsub.d f29, f4, f10, rmm # perform operation
fsub.d f29, f4, f10, rne # perform operation
fsub.d f29, f4, f10, rtz # perform operation
fsub.d f29, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x28, 0x319f55db7f81a744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fsub.d f28, f31, f29, dyn # perform operation
fsub.d f28, f31, f29, rdn # perform operation
fsub.d f28, f31, f29, rmm # perform operation
fsub.d f28, f31, f29, rne # perform operation
fsub.d f28, f31, f29, rtz # perform operation
fsub.d f28, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x25, 0x18415cb36518fe4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fsub.d f25, f31, f1, dyn # perform operation
fsub.d f25, f31, f1, rdn # perform operation
fsub.d f25, f31, f1, rmm # perform operation
fsub.d f25, f31, f1, rne # perform operation
fsub.d f25, f31, f1, rtz # perform operation
fsub.d f25, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x24, 0xa0eed21e9e0f39da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
fsub.d f24, f2, f18, dyn # perform operation
fsub.d f24, f2, f18, rdn # perform operation
fsub.d f24, f2, f18, rmm # perform operation
fsub.d f24, f2, f18, rne # perform operation
fsub.d f24, f2, f18, rtz # perform operation
fsub.d f24, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x13, 0xb98b223c7bdf925e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fsub.d f13, f6, f29, dyn # perform operation
fsub.d f13, f6, f29, rdn # perform operation
fsub.d f13, f6, f29, rmm # perform operation
fsub.d f13, f6, f29, rne # perform operation
fsub.d f13, f6, f29, rtz # perform operation
fsub.d f13, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x16, 0xd644c6bc7c61656b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fsub.d f16, f19, f11, dyn # perform operation
fsub.d f16, f19, f11, rdn # perform operation
fsub.d f16, f19, f11, rmm # perform operation
fsub.d f16, f19, f11, rne # perform operation
fsub.d f16, f19, f11, rtz # perform operation
fsub.d f16, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x16, 0x5dbb65f8660bf2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fsub.d f16, f28, f31, dyn # perform operation
fsub.d f16, f28, f31, rdn # perform operation
fsub.d f16, f28, f31, rmm # perform operation
fsub.d f16, f28, f31, rne # perform operation
fsub.d f16, f28, f31, rtz # perform operation
fsub.d f16, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x23, 0x55a103b7d44e3eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fsub.d f23, f31, f24, dyn # perform operation
fsub.d f23, f31, f24, rdn # perform operation
fsub.d f23, f31, f24, rmm # perform operation
fsub.d f23, f31, f24, rne # perform operation
fsub.d f23, f31, f24, rtz # perform operation
fsub.d f23, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x7, 0xee8f8ea47c098945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fsub.d f7, f23, f11, dyn # perform operation
fsub.d f7, f23, f11, rdn # perform operation
fsub.d f7, f23, f11, rmm # perform operation
fsub.d f7, f23, f11, rne # perform operation
fsub.d f7, f23, f11, rtz # perform operation
fsub.d f7, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x13, 0x61ab51d5ba9ac6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fsub.d f13, f12, f9, dyn # perform operation
fsub.d f13, f12, f9, rdn # perform operation
fsub.d f13, f12, f9, rmm # perform operation
fsub.d f13, f12, f9, rne # perform operation
fsub.d f13, f12, f9, rtz # perform operation
fsub.d f13, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x6, 0x347780f48569e080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fsub.d f6, f28, f31, dyn # perform operation
fsub.d f6, f28, f31, rdn # perform operation
fsub.d f6, f28, f31, rmm # perform operation
fsub.d f6, f28, f31, rne # perform operation
fsub.d f6, f28, f31, rtz # perform operation
fsub.d f6, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x5, 0x6a064055b9e8263d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fsub.d f5, f8, f23, dyn # perform operation
fsub.d f5, f8, f23, rdn # perform operation
fsub.d f5, f8, f23, rmm # perform operation
fsub.d f5, f8, f23, rne # perform operation
fsub.d f5, f8, f23, rtz # perform operation
fsub.d f5, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0xf6f8290d5eec6215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fsub.d f17, f7, f30, dyn # perform operation
fsub.d f17, f7, f30, rdn # perform operation
fsub.d f17, f7, f30, rmm # perform operation
fsub.d f17, f7, f30, rne # perform operation
fsub.d f17, f7, f30, rtz # perform operation
fsub.d f17, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x31, 0x4d0605dec269997c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fsub.d f31, f3, f6, dyn # perform operation
fsub.d f31, f3, f6, rdn # perform operation
fsub.d f31, f3, f6, rmm # perform operation
fsub.d f31, f3, f6, rne # perform operation
fsub.d f31, f3, f6, rtz # perform operation
fsub.d f31, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x12, 0x685706ea1525103e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fsub.d f12, f7, f28, dyn # perform operation
fsub.d f12, f7, f28, rdn # perform operation
fsub.d f12, f7, f28, rmm # perform operation
fsub.d f12, f7, f28, rne # perform operation
fsub.d f12, f7, f28, rtz # perform operation
fsub.d f12, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x8, 0xd4a788d0f550a82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fsub.d f8, f24, f6, dyn # perform operation
fsub.d f8, f24, f6, rdn # perform operation
fsub.d f8, f24, f6, rmm # perform operation
fsub.d f8, f24, f6, rne # perform operation
fsub.d f8, f24, f6, rtz # perform operation
fsub.d f8, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x6, 0x20e5c957e483d17a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fsub.d f6, f30, f17, dyn # perform operation
fsub.d f6, f30, f17, rdn # perform operation
fsub.d f6, f30, f17, rmm # perform operation
fsub.d f6, f30, f17, rne # perform operation
fsub.d f6, f30, f17, rtz # perform operation
fsub.d f6, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x31, 0x32c1d750da623493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fsub.d f31, f30, f19, dyn # perform operation
fsub.d f31, f30, f19, rdn # perform operation
fsub.d f31, f30, f19, rmm # perform operation
fsub.d f31, f30, f19, rne # perform operation
fsub.d f31, f30, f19, rtz # perform operation
fsub.d f31, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x13, 0xcc882f4101554ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fsub.d f13, f24, f7, dyn # perform operation
fsub.d f13, f24, f7, rdn # perform operation
fsub.d f13, f24, f7, rmm # perform operation
fsub.d f13, f24, f7, rne # perform operation
fsub.d f13, f24, f7, rtz # perform operation
fsub.d f13, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x12, 0x1a2aedc50a963804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fsub.d f12, f7, f5, dyn # perform operation
fsub.d f12, f7, f5, rdn # perform operation
fsub.d f12, f7, f5, rmm # perform operation
fsub.d f12, f7, f5, rne # perform operation
fsub.d f12, f7, f5, rtz # perform operation
fsub.d f12, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x9, 0x5bc4890cc7da6925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fsub.d f9, f7, f10, dyn # perform operation
fsub.d f9, f7, f10, rdn # perform operation
fsub.d f9, f7, f10, rmm # perform operation
fsub.d f9, f7, f10, rne # perform operation
fsub.d f9, f7, f10, rtz # perform operation
fsub.d f9, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x18, 0x2aae2fde35315730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fsub.d f18, f29, f20, dyn # perform operation
fsub.d f18, f29, f20, rdn # perform operation
fsub.d f18, f29, f20, rmm # perform operation
fsub.d f18, f29, f20, rne # perform operation
fsub.d f18, f29, f20, rtz # perform operation
fsub.d f18, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x15, 0xaea76538a9ff1191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fsub.d f15, f10, f21, dyn # perform operation
fsub.d f15, f10, f21, rdn # perform operation
fsub.d f15, f10, f21, rmm # perform operation
fsub.d f15, f10, f21, rne # perform operation
fsub.d f15, f10, f21, rtz # perform operation
fsub.d f15, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x24, 0x4887a7dcc8feb035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fsub.d f24, f19, f16, dyn # perform operation
fsub.d f24, f19, f16, rdn # perform operation
fsub.d f24, f19, f16, rmm # perform operation
fsub.d f24, f19, f16, rne # perform operation
fsub.d f24, f19, f16, rtz # perform operation
fsub.d f24, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x3, 0xcee55eb9882bcf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fsub.d f3, f19, f29, dyn # perform operation
fsub.d f3, f19, f29, rdn # perform operation
fsub.d f3, f19, f29, rmm # perform operation
fsub.d f3, f19, f29, rne # perform operation
fsub.d f3, f19, f29, rtz # perform operation
fsub.d f3, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x16, 0x7ddd4defba984f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fsub.d f16, f19, f22, dyn # perform operation
fsub.d f16, f19, f22, rdn # perform operation
fsub.d f16, f19, f22, rmm # perform operation
fsub.d f16, f19, f22, rne # perform operation
fsub.d f16, f19, f22, rtz # perform operation
fsub.d f16, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x25, 0x22f5633e565c061c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fsub.d f25, f3, f16, dyn # perform operation
fsub.d f25, f3, f16, rdn # perform operation
fsub.d f25, f3, f16, rmm # perform operation
fsub.d f25, f3, f16, rne # perform operation
fsub.d f25, f3, f16, rtz # perform operation
fsub.d f25, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x16, 0xea257497699a7ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsub.d f16, f11, f28, dyn # perform operation
fsub.d f16, f11, f28, rdn # perform operation
fsub.d f16, f11, f28, rmm # perform operation
fsub.d f16, f11, f28, rne # perform operation
fsub.d f16, f11, f28, rtz # perform operation
fsub.d f16, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x9, 0xc020f8418f1189a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fsub.d f9, f27, f26, dyn # perform operation
fsub.d f9, f27, f26, rdn # perform operation
fsub.d f9, f27, f26, rmm # perform operation
fsub.d f9, f27, f26, rne # perform operation
fsub.d f9, f27, f26, rtz # perform operation
fsub.d f9, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x17, 0x11d776091eb6406f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fsub.d f17, f1, f20, dyn # perform operation
fsub.d f17, f1, f20, rdn # perform operation
fsub.d f17, f1, f20, rmm # perform operation
fsub.d f17, f1, f20, rne # perform operation
fsub.d f17, f1, f20, rtz # perform operation
fsub.d f17, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x4, 0xd0c1aaf00843a845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fsub.d f4, f13, f11, dyn # perform operation
fsub.d f4, f13, f11, rdn # perform operation
fsub.d f4, f13, f11, rmm # perform operation
fsub.d f4, f13, f11, rne # perform operation
fsub.d f4, f13, f11, rtz # perform operation
fsub.d f4, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x7, 0xdce563ff0b7a3457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fsub.d f7, f17, f14, dyn # perform operation
fsub.d f7, f17, f14, rdn # perform operation
fsub.d f7, f17, f14, rmm # perform operation
fsub.d f7, f17, f14, rne # perform operation
fsub.d f7, f17, f14, rtz # perform operation
fsub.d f7, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x13, 0xcb11e6a1d1f67dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsub.d f13, f19, f6, dyn # perform operation
fsub.d f13, f19, f6, rdn # perform operation
fsub.d f13, f19, f6, rmm # perform operation
fsub.d f13, f19, f6, rne # perform operation
fsub.d f13, f19, f6, rtz # perform operation
fsub.d f13, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x8, 0x2d946691beda8e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fsub.d f8, f30, f27, dyn # perform operation
fsub.d f8, f30, f27, rdn # perform operation
fsub.d f8, f30, f27, rmm # perform operation
fsub.d f8, f30, f27, rne # perform operation
fsub.d f8, f30, f27, rtz # perform operation
fsub.d f8, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x24, 0x7b5f50be7a9bf46e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fsub.d f24, f8, f2, dyn # perform operation
fsub.d f24, f8, f2, rdn # perform operation
fsub.d f24, f8, f2, rmm # perform operation
fsub.d f24, f8, f2, rne # perform operation
fsub.d f24, f8, f2, rtz # perform operation
fsub.d f24, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x29, 0x9aacb0e2b35c1260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fsub.d f29, f13, f14, dyn # perform operation
fsub.d f29, f13, f14, rdn # perform operation
fsub.d f29, f13, f14, rmm # perform operation
fsub.d f29, f13, f14, rne # perform operation
fsub.d f29, f13, f14, rtz # perform operation
fsub.d f29, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x11, 0x0e8d397fefc00554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fsub.d f11, f14, f25, dyn # perform operation
fsub.d f11, f14, f25, rdn # perform operation
fsub.d f11, f14, f25, rmm # perform operation
fsub.d f11, f14, f25, rne # perform operation
fsub.d f11, f14, f25, rtz # perform operation
fsub.d f11, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x23, 0xce307ece59858d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fsub.d f23, f3, f18, dyn # perform operation
fsub.d f23, f3, f18, rdn # perform operation
fsub.d f23, f3, f18, rmm # perform operation
fsub.d f23, f3, f18, rne # perform operation
fsub.d f23, f3, f18, rtz # perform operation
fsub.d f23, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x4, 0xd67609b5e96a02be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fsub.d f4, f10, f29, dyn # perform operation
fsub.d f4, f10, f29, rdn # perform operation
fsub.d f4, f10, f29, rmm # perform operation
fsub.d f4, f10, f29, rne # perform operation
fsub.d f4, f10, f29, rtz # perform operation
fsub.d f4, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x16, 0x83b7a919eb6f6014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fsub.d f16, f4, f18, dyn # perform operation
fsub.d f16, f4, f18, rdn # perform operation
fsub.d f16, f4, f18, rmm # perform operation
fsub.d f16, f4, f18, rne # perform operation
fsub.d f16, f4, f18, rtz # perform operation
fsub.d f16, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x14, 0x3f2d38e26f209854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fsub.d f14, f8, f17, dyn # perform operation
fsub.d f14, f8, f17, rdn # perform operation
fsub.d f14, f8, f17, rmm # perform operation
fsub.d f14, f8, f17, rne # perform operation
fsub.d f14, f8, f17, rtz # perform operation
fsub.d f14, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x27, 0xbcbb3cd0be38a153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fsub.d f27, f13, f29, dyn # perform operation
fsub.d f27, f13, f29, rdn # perform operation
fsub.d f27, f13, f29, rmm # perform operation
fsub.d f27, f13, f29, rne # perform operation
fsub.d f27, f13, f29, rtz # perform operation
fsub.d f27, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x26, 0xd2e57be5b3558358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fsub.d f26, f31, f5, dyn # perform operation
fsub.d f26, f31, f5, rdn # perform operation
fsub.d f26, f31, f5, rmm # perform operation
fsub.d f26, f31, f5, rne # perform operation
fsub.d f26, f31, f5, rtz # perform operation
fsub.d f26, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x11, 0xc6c74d236fcf77d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fsub.d f11, f29, f7, dyn # perform operation
fsub.d f11, f29, f7, rdn # perform operation
fsub.d f11, f29, f7, rmm # perform operation
fsub.d f11, f29, f7, rne # perform operation
fsub.d f11, f29, f7, rtz # perform operation
fsub.d f11, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x26, 0xac2d86d34290bcca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fsub.d f26, f17, f8, dyn # perform operation
fsub.d f26, f17, f8, rdn # perform operation
fsub.d f26, f17, f8, rmm # perform operation
fsub.d f26, f17, f8, rne # perform operation
fsub.d f26, f17, f8, rtz # perform operation
fsub.d f26, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x14, 0x4363fac4bf345020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fsub.d f14, f21, f18, dyn # perform operation
fsub.d f14, f21, f18, rdn # perform operation
fsub.d f14, f21, f18, rmm # perform operation
fsub.d f14, f21, f18, rne # perform operation
fsub.d f14, f21, f18, rtz # perform operation
fsub.d f14, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x6, 0x2221579384021616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fsub.d f6, f22, f17, dyn # perform operation
fsub.d f6, f22, f17, rdn # perform operation
fsub.d f6, f22, f17, rmm # perform operation
fsub.d f6, f22, f17, rne # perform operation
fsub.d f6, f22, f17, rtz # perform operation
fsub.d f6, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x2, 0x537a11d2399c50f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fsub.d f2, f12, f16, dyn # perform operation
fsub.d f2, f12, f16, rdn # perform operation
fsub.d f2, f12, f16, rmm # perform operation
fsub.d f2, f12, f16, rne # perform operation
fsub.d f2, f12, f16, rtz # perform operation
fsub.d f2, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x23, 0x3264df269cddcbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fsub.d f23, f11, f27, dyn # perform operation
fsub.d f23, f11, f27, rdn # perform operation
fsub.d f23, f11, f27, rmm # perform operation
fsub.d f23, f11, f27, rne # perform operation
fsub.d f23, f11, f27, rtz # perform operation
fsub.d f23, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x11, 0xe88154243e37d018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fsub.d f11, f25, f21, dyn # perform operation
fsub.d f11, f25, f21, rdn # perform operation
fsub.d f11, f25, f21, rmm # perform operation
fsub.d f11, f25, f21, rne # perform operation
fsub.d f11, f25, f21, rtz # perform operation
fsub.d f11, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x27, 0xee194b7da0befa85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fsub.d f27, f22, f11, dyn # perform operation
fsub.d f27, f22, f11, rdn # perform operation
fsub.d f27, f22, f11, rmm # perform operation
fsub.d f27, f22, f11, rne # perform operation
fsub.d f27, f22, f11, rtz # perform operation
fsub.d f27, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x1, 0xd0f4f4c709f70099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fsub.d f1, f4, f24, dyn # perform operation
fsub.d f1, f4, f24, rdn # perform operation
fsub.d f1, f4, f24, rmm # perform operation
fsub.d f1, f4, f24, rne # perform operation
fsub.d f1, f4, f24, rtz # perform operation
fsub.d f1, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x22, 0x294d79b8b40f4d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fsub.d f22, f12, f11, dyn # perform operation
fsub.d f22, f12, f11, rdn # perform operation
fsub.d f22, f12, f11, rmm # perform operation
fsub.d f22, f12, f11, rne # perform operation
fsub.d f22, f12, f11, rtz # perform operation
fsub.d f22, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x31, 0x37a345a41f0f2ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fsub.d f31, f3, f6, dyn # perform operation
fsub.d f31, f3, f6, rdn # perform operation
fsub.d f31, f3, f6, rmm # perform operation
fsub.d f31, f3, f6, rne # perform operation
fsub.d f31, f3, f6, rtz # perform operation
fsub.d f31, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x6, 0x74476c2430732b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fsub.d f6, f8, f24, dyn # perform operation
fsub.d f6, f8, f24, rdn # perform operation
fsub.d f6, f8, f24, rmm # perform operation
fsub.d f6, f8, f24, rne # perform operation
fsub.d f6, f8, f24, rtz # perform operation
fsub.d f6, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x4, 0x088e22388cbcd5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fsub.d f4, f31, f26, dyn # perform operation
fsub.d f4, f31, f26, rdn # perform operation
fsub.d f4, f31, f26, rmm # perform operation
fsub.d f4, f31, f26, rne # perform operation
fsub.d f4, f31, f26, rtz # perform operation
fsub.d f4, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x11, 0xbfa6efc009614f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fsub.d f11, f26, f13, dyn # perform operation
fsub.d f11, f26, f13, rdn # perform operation
fsub.d f11, f26, f13, rmm # perform operation
fsub.d f11, f26, f13, rne # perform operation
fsub.d f11, f26, f13, rtz # perform operation
fsub.d f11, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x7, 0x548f12cac4d4373d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fsub.d f7, f29, f17, dyn # perform operation
fsub.d f7, f29, f17, rdn # perform operation
fsub.d f7, f29, f17, rmm # perform operation
fsub.d f7, f29, f17, rne # perform operation
fsub.d f7, f29, f17, rtz # perform operation
fsub.d f7, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x31, 0x96f9af876e25d1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fsub.d f31, f14, f8, dyn # perform operation
fsub.d f31, f14, f8, rdn # perform operation
fsub.d f31, f14, f8, rmm # perform operation
fsub.d f31, f14, f8, rne # perform operation
fsub.d f31, f14, f8, rtz # perform operation
fsub.d f31, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x12, 0xe9d2030a5c120d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fsub.d f12, f22, f15, dyn # perform operation
fsub.d f12, f22, f15, rdn # perform operation
fsub.d f12, f22, f15, rmm # perform operation
fsub.d f12, f22, f15, rne # perform operation
fsub.d f12, f22, f15, rtz # perform operation
fsub.d f12, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x9, 0x40d719b0e2b5bccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fsub.d f9, f18, f23, dyn # perform operation
fsub.d f9, f18, f23, rdn # perform operation
fsub.d f9, f18, f23, rmm # perform operation
fsub.d f9, f18, f23, rne # perform operation
fsub.d f9, f18, f23, rtz # perform operation
fsub.d f9, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x5, 0x0374399f00dbe250 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fsub.d f5, f15, f31, dyn # perform operation
fsub.d f5, f15, f31, rdn # perform operation
fsub.d f5, f15, f31, rmm # perform operation
fsub.d f5, f15, f31, rne # perform operation
fsub.d f5, f15, f31, rtz # perform operation
fsub.d f5, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x20, 0x484d3c9904515d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fsub.d f20, f11, f23, dyn # perform operation
fsub.d f20, f11, f23, rdn # perform operation
fsub.d f20, f11, f23, rmm # perform operation
fsub.d f20, f11, f23, rne # perform operation
fsub.d f20, f11, f23, rtz # perform operation
fsub.d f20, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x9, 0x3768e9324f87e955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fsub.d f9, f12, f22, dyn # perform operation
fsub.d f9, f12, f22, rdn # perform operation
fsub.d f9, f12, f22, rmm # perform operation
fsub.d f9, f12, f22, rne # perform operation
fsub.d f9, f12, f22, rtz # perform operation
fsub.d f9, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x26, 0x88419ddfd9fc1b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fsub.d f26, f28, f5, dyn # perform operation
fsub.d f26, f28, f5, rdn # perform operation
fsub.d f26, f28, f5, rmm # perform operation
fsub.d f26, f28, f5, rne # perform operation
fsub.d f26, f28, f5, rtz # perform operation
fsub.d f26, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x21, 0x98e0a90be7ff109d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fsub.d f21, f13, f17, dyn # perform operation
fsub.d f21, f13, f17, rdn # perform operation
fsub.d f21, f13, f17, rmm # perform operation
fsub.d f21, f13, f17, rne # perform operation
fsub.d f21, f13, f17, rtz # perform operation
fsub.d f21, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0x2286ea4b958f6334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fsub.d f10, f19, f3, dyn # perform operation
fsub.d f10, f19, f3, rdn # perform operation
fsub.d f10, f19, f3, rmm # perform operation
fsub.d f10, f19, f3, rne # perform operation
fsub.d f10, f19, f3, rtz # perform operation
fsub.d f10, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0x22d14ceb4b0e5388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fsub.d f26, f19, f21, dyn # perform operation
fsub.d f26, f19, f21, rdn # perform operation
fsub.d f26, f19, f21, rmm # perform operation
fsub.d f26, f19, f21, rne # perform operation
fsub.d f26, f19, f21, rtz # perform operation
fsub.d f26, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x20, 0x9b6b86bcb10cbbca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fsub.d f20, f17, f11, dyn # perform operation
fsub.d f20, f17, f11, rdn # perform operation
fsub.d f20, f17, f11, rmm # perform operation
fsub.d f20, f17, f11, rne # perform operation
fsub.d f20, f17, f11, rtz # perform operation
fsub.d f20, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x5, 0x4d8d15048836bd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fsub.d f5, f11, f13, dyn # perform operation
fsub.d f5, f11, f13, rdn # perform operation
fsub.d f5, f11, f13, rmm # perform operation
fsub.d f5, f11, f13, rne # perform operation
fsub.d f5, f11, f13, rtz # perform operation
fsub.d f5, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x6, 0x9f641b7bff477b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fsub.d f6, f5, f1, dyn # perform operation
fsub.d f6, f5, f1, rdn # perform operation
fsub.d f6, f5, f1, rmm # perform operation
fsub.d f6, f5, f1, rne # perform operation
fsub.d f6, f5, f1, rtz # perform operation
fsub.d f6, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x18, 0x688642cdb22f036f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fsub.d f18, f6, f31, dyn # perform operation
fsub.d f18, f6, f31, rdn # perform operation
fsub.d f18, f6, f31, rmm # perform operation
fsub.d f18, f6, f31, rne # perform operation
fsub.d f18, f6, f31, rtz # perform operation
fsub.d f18, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x4, 0x5fb475ba0e7e0a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fsub.d f4, f24, f12, dyn # perform operation
fsub.d f4, f24, f12, rdn # perform operation
fsub.d f4, f24, f12, rmm # perform operation
fsub.d f4, f24, f12, rne # perform operation
fsub.d f4, f24, f12, rtz # perform operation
fsub.d f4, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x18, 0xf015fb45e4b52cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fsub.d f18, f26, f13, dyn # perform operation
fsub.d f18, f26, f13, rdn # perform operation
fsub.d f18, f26, f13, rmm # perform operation
fsub.d f18, f26, f13, rne # perform operation
fsub.d f18, f26, f13, rtz # perform operation
fsub.d f18, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x2, 0xe0a665c6b5d80524 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fsub.d f2, f17, f30, dyn # perform operation
fsub.d f2, f17, f30, rdn # perform operation
fsub.d f2, f17, f30, rmm # perform operation
fsub.d f2, f17, f30, rne # perform operation
fsub.d f2, f17, f30, rtz # perform operation
fsub.d f2, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x27, 0x9720076fa4287b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fsub.d f27, f21, f29, dyn # perform operation
fsub.d f27, f21, f29, rdn # perform operation
fsub.d f27, f21, f29, rmm # perform operation
fsub.d f27, f21, f29, rne # perform operation
fsub.d f27, f21, f29, rtz # perform operation
fsub.d f27, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x20, 0xee53bdb0930e13e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fsub.d f20, f11, f21, dyn # perform operation
fsub.d f20, f11, f21, rdn # perform operation
fsub.d f20, f11, f21, rmm # perform operation
fsub.d f20, f11, f21, rne # perform operation
fsub.d f20, f11, f21, rtz # perform operation
fsub.d f20, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x20, 0xa2ef9bee9419f964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fsub.d f20, f4, f25, dyn # perform operation
fsub.d f20, f4, f25, rdn # perform operation
fsub.d f20, f4, f25, rmm # perform operation
fsub.d f20, f4, f25, rne # perform operation
fsub.d f20, f4, f25, rtz # perform operation
fsub.d f20, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x19, 0xeb86c8f95829d759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fsub.d f19, f2, f25, dyn # perform operation
fsub.d f19, f2, f25, rdn # perform operation
fsub.d f19, f2, f25, rmm # perform operation
fsub.d f19, f2, f25, rne # perform operation
fsub.d f19, f2, f25, rtz # perform operation
fsub.d f19, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x24, 0x48563d51221ec67a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fsub.d f24, f6, f27, dyn # perform operation
fsub.d f24, f6, f27, rdn # perform operation
fsub.d f24, f6, f27, rmm # perform operation
fsub.d f24, f6, f27, rne # perform operation
fsub.d f24, f6, f27, rtz # perform operation
fsub.d f24, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x17, 0x64aaa67b1b511082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fsub.d f17, f23, f25, dyn # perform operation
fsub.d f17, f23, f25, rdn # perform operation
fsub.d f17, f23, f25, rmm # perform operation
fsub.d f17, f23, f25, rne # perform operation
fsub.d f17, f23, f25, rtz # perform operation
fsub.d f17, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x18, 0x2fe6fcb319532802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fsub.d f18, f4, f30, dyn # perform operation
fsub.d f18, f4, f30, rdn # perform operation
fsub.d f18, f4, f30, rmm # perform operation
fsub.d f18, f4, f30, rne # perform operation
fsub.d f18, f4, f30, rtz # perform operation
fsub.d f18, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x9, 0xdbaa608cd6358583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fsub.d f9, f24, f23, dyn # perform operation
fsub.d f9, f24, f23, rdn # perform operation
fsub.d f9, f24, f23, rmm # perform operation
fsub.d f9, f24, f23, rne # perform operation
fsub.d f9, f24, f23, rtz # perform operation
fsub.d f9, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x26, 0x42c19ca4a74e1d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fsub.d f26, f22, f20, dyn # perform operation
fsub.d f26, f22, f20, rdn # perform operation
fsub.d f26, f22, f20, rmm # perform operation
fsub.d f26, f22, f20, rne # perform operation
fsub.d f26, f22, f20, rtz # perform operation
fsub.d f26, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x7, 0x6b566a28556ce257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fsub.d f7, f4, f16, dyn # perform operation
fsub.d f7, f4, f16, rdn # perform operation
fsub.d f7, f4, f16, rmm # perform operation
fsub.d f7, f4, f16, rne # perform operation
fsub.d f7, f4, f16, rtz # perform operation
fsub.d f7, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x2, 0x90ac6c25f1a0f0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fsub.d f2, f20, f29, dyn # perform operation
fsub.d f2, f20, f29, rdn # perform operation
fsub.d f2, f20, f29, rmm # perform operation
fsub.d f2, f20, f29, rne # perform operation
fsub.d f2, f20, f29, rtz # perform operation
fsub.d f2, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x14, 0xb5d21982b2b49956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fsub.d f14, f6, f4, dyn # perform operation
fsub.d f14, f6, f4, rdn # perform operation
fsub.d f14, f6, f4, rmm # perform operation
fsub.d f14, f6, f4, rne # perform operation
fsub.d f14, f6, f4, rtz # perform operation
fsub.d f14, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0x4dc48100f59913d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fsub.d f4, f13, f16, dyn # perform operation
fsub.d f4, f13, f16, rdn # perform operation
fsub.d f4, f13, f16, rmm # perform operation
fsub.d f4, f13, f16, rne # perform operation
fsub.d f4, f13, f16, rtz # perform operation
fsub.d f4, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x29, 0xaaf2b32fd243bca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fsub.d f29, f1, f4, dyn # perform operation
fsub.d f29, f1, f4, rdn # perform operation
fsub.d f29, f1, f4, rmm # perform operation
fsub.d f29, f1, f4, rne # perform operation
fsub.d f29, f1, f4, rtz # perform operation
fsub.d f29, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x4, 0xd94ad675adbe330a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fsub.d f4, f17, f29, dyn # perform operation
fsub.d f4, f17, f29, rdn # perform operation
fsub.d f4, f17, f29, rmm # perform operation
fsub.d f4, f17, f29, rne # perform operation
fsub.d f4, f17, f29, rtz # perform operation
fsub.d f4, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f4, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f4, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f4, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f4, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f4, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x26, 0xaea63ab914611e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
fsub.d f26, f4, f8, dyn # perform operation
fsub.d f26, f4, f8, rdn # perform operation
fsub.d f26, f4, f8, rmm # perform operation
fsub.d f26, f4, f8, rne # perform operation
fsub.d f26, f4, f8, rtz # perform operation
fsub.d f26, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x8, 0x810c723240df10d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fsub.d f8, f27, f23, dyn # perform operation
fsub.d f8, f27, f23, rdn # perform operation
fsub.d f8, f27, f23, rmm # perform operation
fsub.d f8, f27, f23, rne # perform operation
fsub.d f8, f27, f23, rtz # perform operation
fsub.d f8, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x31, 0xdb617f1a5f07b209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fsub.d f31, f3, f7, dyn # perform operation
fsub.d f31, f3, f7, rdn # perform operation
fsub.d f31, f3, f7, rmm # perform operation
fsub.d f31, f3, f7, rne # perform operation
fsub.d f31, f3, f7, rtz # perform operation
fsub.d f31, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x11, 0x2034e3f3cbade2da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fsub.d f11, f7, f26, dyn # perform operation
fsub.d f11, f7, f26, rdn # perform operation
fsub.d f11, f7, f26, rmm # perform operation
fsub.d f11, f7, f26, rne # perform operation
fsub.d f11, f7, f26, rtz # perform operation
fsub.d f11, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x27, 0x04f7878d49a70da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fsub.d f27, f31, f29, dyn # perform operation
fsub.d f27, f31, f29, rdn # perform operation
fsub.d f27, f31, f29, rmm # perform operation
fsub.d f27, f31, f29, rne # perform operation
fsub.d f27, f31, f29, rtz # perform operation
fsub.d f27, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x16, 0x51bc38ad681947ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fsub.d f16, f27, f1, dyn # perform operation
fsub.d f16, f27, f1, rdn # perform operation
fsub.d f16, f27, f1, rmm # perform operation
fsub.d f16, f27, f1, rne # perform operation
fsub.d f16, f27, f1, rtz # perform operation
fsub.d f16, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x18, 0xce15eb2452adab38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fsub.d f18, f11, f20, dyn # perform operation
fsub.d f18, f11, f20, rdn # perform operation
fsub.d f18, f11, f20, rmm # perform operation
fsub.d f18, f11, f20, rne # perform operation
fsub.d f18, f11, f20, rtz # perform operation
fsub.d f18, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x7, 0x077e487a40dcbea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fsub.d f7, f9, f14, dyn # perform operation
fsub.d f7, f9, f14, rdn # perform operation
fsub.d f7, f9, f14, rmm # perform operation
fsub.d f7, f9, f14, rne # perform operation
fsub.d f7, f9, f14, rtz # perform operation
fsub.d f7, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x29, 0x474a6df35176bc6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fsub.d f29, f31, f11, dyn # perform operation
fsub.d f29, f31, f11, rdn # perform operation
fsub.d f29, f31, f11, rmm # perform operation
fsub.d f29, f31, f11, rne # perform operation
fsub.d f29, f31, f11, rtz # perform operation
fsub.d f29, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x1, 0x71831c33c576e48d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fsub.d f1, f7, f4, dyn # perform operation
fsub.d f1, f7, f4, rdn # perform operation
fsub.d f1, f7, f4, rmm # perform operation
fsub.d f1, f7, f4, rne # perform operation
fsub.d f1, f7, f4, rtz # perform operation
fsub.d f1, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x7, 0x923713663a74a17e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fsub.d f7, f3, f31, dyn # perform operation
fsub.d f7, f3, f31, rdn # perform operation
fsub.d f7, f3, f31, rmm # perform operation
fsub.d f7, f3, f31, rne # perform operation
fsub.d f7, f3, f31, rtz # perform operation
fsub.d f7, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x19, 0x4f5dbb7f0f09015b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fsub.d f19, f3, f10, dyn # perform operation
fsub.d f19, f3, f10, rdn # perform operation
fsub.d f19, f3, f10, rmm # perform operation
fsub.d f19, f3, f10, rne # perform operation
fsub.d f19, f3, f10, rtz # perform operation
fsub.d f19, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x7, 0x12faadaa9afba794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fsub.d f7, f18, f29, dyn # perform operation
fsub.d f7, f18, f29, rdn # perform operation
fsub.d f7, f18, f29, rmm # perform operation
fsub.d f7, f18, f29, rne # perform operation
fsub.d f7, f18, f29, rtz # perform operation
fsub.d f7, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x17, 0xd8368ede6d70a00d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fsub.d f17, f24, f21, dyn # perform operation
fsub.d f17, f24, f21, rdn # perform operation
fsub.d f17, f24, f21, rmm # perform operation
fsub.d f17, f24, f21, rne # perform operation
fsub.d f17, f24, f21, rtz # perform operation
fsub.d f17, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x2, 0x631986ce2f5ffefe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fsub.d f2, f16, f20, dyn # perform operation
fsub.d f2, f16, f20, rdn # perform operation
fsub.d f2, f16, f20, rmm # perform operation
fsub.d f2, f16, f20, rne # perform operation
fsub.d f2, f16, f20, rtz # perform operation
fsub.d f2, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f2, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f2, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f2, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f2, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f2, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x19, 0xb492692374c71756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fsub.d f19, f17, f30, dyn # perform operation
fsub.d f19, f17, f30, rdn # perform operation
fsub.d f19, f17, f30, rmm # perform operation
fsub.d f19, f17, f30, rne # perform operation
fsub.d f19, f17, f30, rtz # perform operation
fsub.d f19, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x5, 0x0c41d2e9a4843519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fsub.d f5, f24, f6, dyn # perform operation
fsub.d f5, f24, f6, rdn # perform operation
fsub.d f5, f24, f6, rmm # perform operation
fsub.d f5, f24, f6, rne # perform operation
fsub.d f5, f24, f6, rtz # perform operation
fsub.d f5, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x20, 0x8952712e2f67ad22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fsub.d f20, f18, f6, dyn # perform operation
fsub.d f20, f18, f6, rdn # perform operation
fsub.d f20, f18, f6, rmm # perform operation
fsub.d f20, f18, f6, rne # perform operation
fsub.d f20, f18, f6, rtz # perform operation
fsub.d f20, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x11, 0x8a8b89320a98dfb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fsub.d f11, f2, f1, dyn # perform operation
fsub.d f11, f2, f1, rdn # perform operation
fsub.d f11, f2, f1, rmm # perform operation
fsub.d f11, f2, f1, rne # perform operation
fsub.d f11, f2, f1, rtz # perform operation
fsub.d f11, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x10, 0x34f1fb51036df10c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fsub.d f10, f15, f28, dyn # perform operation
fsub.d f10, f15, f28, rdn # perform operation
fsub.d f10, f15, f28, rmm # perform operation
fsub.d f10, f15, f28, rne # perform operation
fsub.d f10, f15, f28, rtz # perform operation
fsub.d f10, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x25, 0x5db54f2102cbaf3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fsub.d f25, f10, f7, dyn # perform operation
fsub.d f25, f10, f7, rdn # perform operation
fsub.d f25, f10, f7, rmm # perform operation
fsub.d f25, f10, f7, rne # perform operation
fsub.d f25, f10, f7, rtz # perform operation
fsub.d f25, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x6, 0x819b598bf3a15be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fsub.d f6, f11, f25, dyn # perform operation
fsub.d f6, f11, f25, rdn # perform operation
fsub.d f6, f11, f25, rmm # perform operation
fsub.d f6, f11, f25, rne # perform operation
fsub.d f6, f11, f25, rtz # perform operation
fsub.d f6, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x15, 0x8389ca3fa5feec76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fsub.d f15, f22, f2, dyn # perform operation
fsub.d f15, f22, f2, rdn # perform operation
fsub.d f15, f22, f2, rmm # perform operation
fsub.d f15, f22, f2, rne # perform operation
fsub.d f15, f22, f2, rtz # perform operation
fsub.d f15, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x8, 0x5efbb10ed8f988ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fsub.d f8, f17, f20, dyn # perform operation
fsub.d f8, f17, f20, rdn # perform operation
fsub.d f8, f17, f20, rmm # perform operation
fsub.d f8, f17, f20, rne # perform operation
fsub.d f8, f17, f20, rtz # perform operation
fsub.d f8, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x16, 0xb5a7caa060abbb82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fsub.d f16, f12, f2, dyn # perform operation
fsub.d f16, f12, f2, rdn # perform operation
fsub.d f16, f12, f2, rmm # perform operation
fsub.d f16, f12, f2, rne # perform operation
fsub.d f16, f12, f2, rtz # perform operation
fsub.d f16, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x11, 0x6313ef6365790259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fsub.d f11, f9, f15, dyn # perform operation
fsub.d f11, f9, f15, rdn # perform operation
fsub.d f11, f9, f15, rmm # perform operation
fsub.d f11, f9, f15, rne # perform operation
fsub.d f11, f9, f15, rtz # perform operation
fsub.d f11, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x7, 0x15525123fbe38005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fsub.d f7, f3, f2, dyn # perform operation
fsub.d f7, f3, f2, rdn # perform operation
fsub.d f7, f3, f2, rmm # perform operation
fsub.d f7, f3, f2, rne # perform operation
fsub.d f7, f3, f2, rtz # perform operation
fsub.d f7, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x22, 0xb6816484519ce258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fsub.d f22, f17, f12, dyn # perform operation
fsub.d f22, f17, f12, rdn # perform operation
fsub.d f22, f17, f12, rmm # perform operation
fsub.d f22, f17, f12, rne # perform operation
fsub.d f22, f17, f12, rtz # perform operation
fsub.d f22, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x5, 0xa2d3da58135e55a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fsub.d f5, f30, f28, dyn # perform operation
fsub.d f5, f30, f28, rdn # perform operation
fsub.d f5, f30, f28, rmm # perform operation
fsub.d f5, f30, f28, rne # perform operation
fsub.d f5, f30, f28, rtz # perform operation
fsub.d f5, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x26, 0x00c2bc61acd2a8a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fsub.d f26, f29, f23, dyn # perform operation
fsub.d f26, f29, f23, rdn # perform operation
fsub.d f26, f29, f23, rmm # perform operation
fsub.d f26, f29, f23, rne # perform operation
fsub.d f26, f29, f23, rtz # perform operation
fsub.d f26, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x28, 0x604e59c19194b782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fsub.d f28, f27, f21, dyn # perform operation
fsub.d f28, f27, f21, rdn # perform operation
fsub.d f28, f27, f21, rmm # perform operation
fsub.d f28, f27, f21, rne # perform operation
fsub.d f28, f27, f21, rtz # perform operation
fsub.d f28, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x9, 0x22c65945e621d1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fsub.d f9, f19, f31, dyn # perform operation
fsub.d f9, f19, f31, rdn # perform operation
fsub.d f9, f19, f31, rmm # perform operation
fsub.d f9, f19, f31, rne # perform operation
fsub.d f9, f19, f31, rtz # perform operation
fsub.d f9, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x5, 0xf558e8dfdb9b1b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fsub.d f5, f7, f17, dyn # perform operation
fsub.d f5, f7, f17, rdn # perform operation
fsub.d f5, f7, f17, rmm # perform operation
fsub.d f5, f7, f17, rne # perform operation
fsub.d f5, f7, f17, rtz # perform operation
fsub.d f5, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x9, 0x2a38fff718fe94a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fsub.d f9, f26, f21, dyn # perform operation
fsub.d f9, f26, f21, rdn # perform operation
fsub.d f9, f26, f21, rmm # perform operation
fsub.d f9, f26, f21, rne # perform operation
fsub.d f9, f26, f21, rtz # perform operation
fsub.d f9, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f9, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f9, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f9, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f9, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f9, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x28, 0x17408719a77bf727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fsub.d f28, f7, f17, dyn # perform operation
fsub.d f28, f7, f17, rdn # perform operation
fsub.d f28, f7, f17, rmm # perform operation
fsub.d f28, f7, f17, rne # perform operation
fsub.d f28, f7, f17, rtz # perform operation
fsub.d f28, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x11, 0xfdaca0480cf3a9ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fsub.d f11, f2, f24, dyn # perform operation
fsub.d f11, f2, f24, rdn # perform operation
fsub.d f11, f2, f24, rmm # perform operation
fsub.d f11, f2, f24, rne # perform operation
fsub.d f11, f2, f24, rtz # perform operation
fsub.d f11, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x30, 0xcacc0d30b0d15e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fsub.d f30, f31, f10, dyn # perform operation
fsub.d f30, f31, f10, rdn # perform operation
fsub.d f30, f31, f10, rmm # perform operation
fsub.d f30, f31, f10, rne # perform operation
fsub.d f30, f31, f10, rtz # perform operation
fsub.d f30, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x31, 0xab98035969fa20a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fsub.d f31, f30, f26, dyn # perform operation
fsub.d f31, f30, f26, rdn # perform operation
fsub.d f31, f30, f26, rmm # perform operation
fsub.d f31, f30, f26, rne # perform operation
fsub.d f31, f30, f26, rtz # perform operation
fsub.d f31, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x22, 0x3613112af6946463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fsub.d f22, f9, f15, dyn # perform operation
fsub.d f22, f9, f15, rdn # perform operation
fsub.d f22, f9, f15, rmm # perform operation
fsub.d f22, f9, f15, rne # perform operation
fsub.d f22, f9, f15, rtz # perform operation
fsub.d f22, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x12, 0x96c9e8d0a42ee629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fsub.d f12, f30, f20, dyn # perform operation
fsub.d f12, f30, f20, rdn # perform operation
fsub.d f12, f30, f20, rmm # perform operation
fsub.d f12, f30, f20, rne # perform operation
fsub.d f12, f30, f20, rtz # perform operation
fsub.d f12, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x19, 0xa37c94bea1dc2a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fsub.d f19, f9, f27, dyn # perform operation
fsub.d f19, f9, f27, rdn # perform operation
fsub.d f19, f9, f27, rmm # perform operation
fsub.d f19, f9, f27, rne # perform operation
fsub.d f19, f9, f27, rtz # perform operation
fsub.d f19, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x11, 0xa2035a0ee2596212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fsub.d f11, f10, f24, dyn # perform operation
fsub.d f11, f10, f24, rdn # perform operation
fsub.d f11, f10, f24, rmm # perform operation
fsub.d f11, f10, f24, rne # perform operation
fsub.d f11, f10, f24, rtz # perform operation
fsub.d f11, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x13, 0xadfd2eb4013ad656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fsub.d f13, f15, f20, dyn # perform operation
fsub.d f13, f15, f20, rdn # perform operation
fsub.d f13, f15, f20, rmm # perform operation
fsub.d f13, f15, f20, rne # perform operation
fsub.d f13, f15, f20, rtz # perform operation
fsub.d f13, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f13, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f13, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f13, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f13, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f13, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x11, 0x394d7a2d39f3ecd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fsub.d f11, f7, f12, dyn # perform operation
fsub.d f11, f7, f12, rdn # perform operation
fsub.d f11, f7, f12, rmm # perform operation
fsub.d f11, f7, f12, rne # perform operation
fsub.d f11, f7, f12, rtz # perform operation
fsub.d f11, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x17, 0xea4c387d5c66955b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fsub.d f17, f31, f1, dyn # perform operation
fsub.d f17, f31, f1, rdn # perform operation
fsub.d f17, f31, f1, rmm # perform operation
fsub.d f17, f31, f1, rne # perform operation
fsub.d f17, f31, f1, rtz # perform operation
fsub.d f17, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x12, 0x216f3b7e44f5c83a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fsub.d f12, f6, f29, dyn # perform operation
fsub.d f12, f6, f29, rdn # perform operation
fsub.d f12, f6, f29, rmm # perform operation
fsub.d f12, f6, f29, rne # perform operation
fsub.d f12, f6, f29, rtz # perform operation
fsub.d f12, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f12, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f12, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f12, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f12, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f12, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x24, 0xaa97a8cf6afbcbd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fsub.d f24, f5, f3, dyn # perform operation
fsub.d f24, f5, f3, rdn # perform operation
fsub.d f24, f5, f3, rmm # perform operation
fsub.d f24, f5, f3, rne # perform operation
fsub.d f24, f5, f3, rtz # perform operation
fsub.d f24, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x27, 0xe11aef5e762bbfcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fsub.d f27, f4, f5, dyn # perform operation
fsub.d f27, f4, f5, rdn # perform operation
fsub.d f27, f4, f5, rmm # perform operation
fsub.d f27, f4, f5, rne # perform operation
fsub.d f27, f4, f5, rtz # perform operation
fsub.d f27, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x26, 0xedff46d08218c148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fsub.d f26, f3, f27, dyn # perform operation
fsub.d f26, f3, f27, rdn # perform operation
fsub.d f26, f3, f27, rmm # perform operation
fsub.d f26, f3, f27, rne # perform operation
fsub.d f26, f3, f27, rtz # perform operation
fsub.d f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x17, 0x34b74a49e81f37e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fsub.d f17, f16, f5, dyn # perform operation
fsub.d f17, f16, f5, rdn # perform operation
fsub.d f17, f16, f5, rmm # perform operation
fsub.d f17, f16, f5, rne # perform operation
fsub.d f17, f16, f5, rtz # perform operation
fsub.d f17, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x11, 0x21d0277f4f50c814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fsub.d f11, f26, f29, dyn # perform operation
fsub.d f11, f26, f29, rdn # perform operation
fsub.d f11, f26, f29, rmm # perform operation
fsub.d f11, f26, f29, rne # perform operation
fsub.d f11, f26, f29, rtz # perform operation
fsub.d f11, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x27, 0x53dba8c3ef35b970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fsub.d f27, f1, f12, dyn # perform operation
fsub.d f27, f1, f12, rdn # perform operation
fsub.d f27, f1, f12, rmm # perform operation
fsub.d f27, f1, f12, rne # perform operation
fsub.d f27, f1, f12, rtz # perform operation
fsub.d f27, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x3, 0x04803ed9d850d758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fsub.d f3, f2, f5, dyn # perform operation
fsub.d f3, f2, f5, rdn # perform operation
fsub.d f3, f2, f5, rmm # perform operation
fsub.d f3, f2, f5, rne # perform operation
fsub.d f3, f2, f5, rtz # perform operation
fsub.d f3, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x23, 0x5e91773b324bd5e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fsub.d f23, f16, f14, dyn # perform operation
fsub.d f23, f16, f14, rdn # perform operation
fsub.d f23, f16, f14, rmm # perform operation
fsub.d f23, f16, f14, rne # perform operation
fsub.d f23, f16, f14, rtz # perform operation
fsub.d f23, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x14, 0xa82ee080a01810f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fsub.d f14, f5, f27, dyn # perform operation
fsub.d f14, f5, f27, rdn # perform operation
fsub.d f14, f5, f27, rmm # perform operation
fsub.d f14, f5, f27, rne # perform operation
fsub.d f14, f5, f27, rtz # perform operation
fsub.d f14, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x1, 0xd0e5e39edc0ae39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fsub.d f1, f7, f5, dyn # perform operation
fsub.d f1, f7, f5, rdn # perform operation
fsub.d f1, f7, f5, rmm # perform operation
fsub.d f1, f7, f5, rne # perform operation
fsub.d f1, f7, f5, rtz # perform operation
fsub.d f1, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x26, 0xd6a3927c16997f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fsub.d f26, f7, f10, dyn # perform operation
fsub.d f26, f7, f10, rdn # perform operation
fsub.d f26, f7, f10, rmm # perform operation
fsub.d f26, f7, f10, rne # perform operation
fsub.d f26, f7, f10, rtz # perform operation
fsub.d f26, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x17, 0xfe3f6989c3a426e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fsub.d f17, f4, f2, dyn # perform operation
fsub.d f17, f4, f2, rdn # perform operation
fsub.d f17, f4, f2, rmm # perform operation
fsub.d f17, f4, f2, rne # perform operation
fsub.d f17, f4, f2, rtz # perform operation
fsub.d f17, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x16, 0xac219de996fe181c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fsub.d f16, f15, f7, dyn # perform operation
fsub.d f16, f15, f7, rdn # perform operation
fsub.d f16, f15, f7, rmm # perform operation
fsub.d f16, f15, f7, rne # perform operation
fsub.d f16, f15, f7, rtz # perform operation
fsub.d f16, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x3, 0x4059ef95fdf1001b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fsub.d f3, f4, f11, dyn # perform operation
fsub.d f3, f4, f11, rdn # perform operation
fsub.d f3, f4, f11, rmm # perform operation
fsub.d f3, f4, f11, rne # perform operation
fsub.d f3, f4, f11, rtz # perform operation
fsub.d f3, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f3, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f3, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f3, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f3, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f3, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x16, 0xa1b77335ca67be9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fsub.d f16, f5, f19, dyn # perform operation
fsub.d f16, f5, f19, rdn # perform operation
fsub.d f16, f5, f19, rmm # perform operation
fsub.d f16, f5, f19, rne # perform operation
fsub.d f16, f5, f19, rtz # perform operation
fsub.d f16, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x22, 0x883d60656c4de7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fsub.d f22, f3, f29, dyn # perform operation
fsub.d f22, f3, f29, rdn # perform operation
fsub.d f22, f3, f29, rmm # perform operation
fsub.d f22, f3, f29, rne # perform operation
fsub.d f22, f3, f29, rtz # perform operation
fsub.d f22, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x25, 0xd5692f12155f0d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fsub.d f25, f23, f2, dyn # perform operation
fsub.d f25, f23, f2, rdn # perform operation
fsub.d f25, f23, f2, rmm # perform operation
fsub.d f25, f23, f2, rne # perform operation
fsub.d f25, f23, f2, rtz # perform operation
fsub.d f25, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x31, 0xd703da63252f4632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fsub.d f31, f22, f13, dyn # perform operation
fsub.d f31, f22, f13, rdn # perform operation
fsub.d f31, f22, f13, rmm # perform operation
fsub.d f31, f22, f13, rne # perform operation
fsub.d f31, f22, f13, rtz # perform operation
fsub.d f31, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x27, 0x3ad622f0241c9fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fsub.d f27, f3, f13, dyn # perform operation
fsub.d f27, f3, f13, rdn # perform operation
fsub.d f27, f3, f13, rmm # perform operation
fsub.d f27, f3, f13, rne # perform operation
fsub.d f27, f3, f13, rtz # perform operation
fsub.d f27, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f27, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f27, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f27, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f27, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f27, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x25, 0x21d967da0a1742cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fsub.d f25, f14, f27, dyn # perform operation
fsub.d f25, f14, f27, rdn # perform operation
fsub.d f25, f14, f27, rmm # perform operation
fsub.d f25, f14, f27, rne # perform operation
fsub.d f25, f14, f27, rtz # perform operation
fsub.d f25, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x25, 0x331bc09fa1c85e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fsub.d f25, f13, f17, dyn # perform operation
fsub.d f25, f13, f17, rdn # perform operation
fsub.d f25, f13, f17, rmm # perform operation
fsub.d f25, f13, f17, rne # perform operation
fsub.d f25, f13, f17, rtz # perform operation
fsub.d f25, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x26, 0xc80f5b679c31a744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fsub.d f26, f13, f19, dyn # perform operation
fsub.d f26, f13, f19, rdn # perform operation
fsub.d f26, f13, f19, rmm # perform operation
fsub.d f26, f13, f19, rne # perform operation
fsub.d f26, f13, f19, rtz # perform operation
fsub.d f26, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x11, 0xd5495a4dde103b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fsub.d f11, f16, f26, dyn # perform operation
fsub.d f11, f16, f26, rdn # perform operation
fsub.d f11, f16, f26, rmm # perform operation
fsub.d f11, f16, f26, rne # perform operation
fsub.d f11, f16, f26, rtz # perform operation
fsub.d f11, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x7, 0xde71025c04e39009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fsub.d f7, f21, f4, dyn # perform operation
fsub.d f7, f21, f4, rdn # perform operation
fsub.d f7, f21, f4, rmm # perform operation
fsub.d f7, f21, f4, rne # perform operation
fsub.d f7, f21, f4, rtz # perform operation
fsub.d f7, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f7, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f7, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f7, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f7, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f7, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x24, 0x4a8f41514501c9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
fsub.d f24, f11, f7, dyn # perform operation
fsub.d f24, f11, f7, rdn # perform operation
fsub.d f24, f11, f7, rmm # perform operation
fsub.d f24, f11, f7, rne # perform operation
fsub.d f24, f11, f7, rtz # perform operation
fsub.d f24, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x26, 0x98f298716947573a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fsub.d f26, f9, f24, dyn # perform operation
fsub.d f26, f9, f24, rdn # perform operation
fsub.d f26, f9, f24, rmm # perform operation
fsub.d f26, f9, f24, rne # perform operation
fsub.d f26, f9, f24, rtz # perform operation
fsub.d f26, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x23, 0xc1d00e206aa5a893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fsub.d f23, f12, f14, dyn # perform operation
fsub.d f23, f12, f14, rdn # perform operation
fsub.d f23, f12, f14, rmm # perform operation
fsub.d f23, f12, f14, rne # perform operation
fsub.d f23, f12, f14, rtz # perform operation
fsub.d f23, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f23, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f23, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f23, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f23, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f23, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x16, 0x0929c84ef3e7c547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fsub.d f16, f29, f25, dyn # perform operation
fsub.d f16, f29, f25, rdn # perform operation
fsub.d f16, f29, f25, rmm # perform operation
fsub.d f16, f29, f25, rne # perform operation
fsub.d f16, f29, f25, rtz # perform operation
fsub.d f16, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x21, 0x1e736e8917fc139c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fsub.d f21, f25, f2, dyn # perform operation
fsub.d f21, f25, f2, rdn # perform operation
fsub.d f21, f25, f2, rmm # perform operation
fsub.d f21, f25, f2, rne # perform operation
fsub.d f21, f25, f2, rtz # perform operation
fsub.d f21, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x20, 0x0e0a2eb7d557a0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fsub.d f20, f30, f15, dyn # perform operation
fsub.d f20, f30, f15, rdn # perform operation
fsub.d f20, f30, f15, rmm # perform operation
fsub.d f20, f30, f15, rne # perform operation
fsub.d f20, f30, f15, rtz # perform operation
fsub.d f20, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x14, 0xfff07a979b5b1796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fsub.d f14, f22, f12, dyn # perform operation
fsub.d f14, f22, f12, rdn # perform operation
fsub.d f14, f22, f12, rmm # perform operation
fsub.d f14, f22, f12, rne # perform operation
fsub.d f14, f22, f12, rtz # perform operation
fsub.d f14, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x1, 0x9699c05178f063c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fsub.d f1, f24, f8, dyn # perform operation
fsub.d f1, f24, f8, rdn # perform operation
fsub.d f1, f24, f8, rmm # perform operation
fsub.d f1, f24, f8, rne # perform operation
fsub.d f1, f24, f8, rtz # perform operation
fsub.d f1, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x17, 0x5730c82806552e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fsub.d f17, f18, f12, dyn # perform operation
fsub.d f17, f18, f12, rdn # perform operation
fsub.d f17, f18, f12, rmm # perform operation
fsub.d f17, f18, f12, rne # perform operation
fsub.d f17, f18, f12, rtz # perform operation
fsub.d f17, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f17, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f17, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f17, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f17, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f17, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x8, 0xe206133ee121ca31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fsub.d f8, f25, f6, dyn # perform operation
fsub.d f8, f25, f6, rdn # perform operation
fsub.d f8, f25, f6, rmm # perform operation
fsub.d f8, f25, f6, rne # perform operation
fsub.d f8, f25, f6, rtz # perform operation
fsub.d f8, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x1, 0x3ae40f21ab1e5ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fsub.d f1, f27, f7, dyn # perform operation
fsub.d f1, f27, f7, rdn # perform operation
fsub.d f1, f27, f7, rmm # perform operation
fsub.d f1, f27, f7, rne # perform operation
fsub.d f1, f27, f7, rtz # perform operation
fsub.d f1, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f1, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f1, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f1, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f1, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f1, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x5, 0xc37abab3368e70bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fsub.d f5, f8, f28, dyn # perform operation
fsub.d f5, f8, f28, rdn # perform operation
fsub.d f5, f8, f28, rmm # perform operation
fsub.d f5, f8, f28, rne # perform operation
fsub.d f5, f8, f28, rtz # perform operation
fsub.d f5, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f5, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f5, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f5, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f5, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f5, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x6, 0x203de4122805d1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fsub.d f6, f11, f15, dyn # perform operation
fsub.d f6, f11, f15, rdn # perform operation
fsub.d f6, f11, f15, rmm # perform operation
fsub.d f6, f11, f15, rne # perform operation
fsub.d f6, f11, f15, rtz # perform operation
fsub.d f6, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f6, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f6, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f6, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f6, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f6, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x30, 0x5618a95b779855f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fsub.d f30, f16, f24, dyn # perform operation
fsub.d f30, f16, f24, rdn # perform operation
fsub.d f30, f16, f24, rmm # perform operation
fsub.d f30, f16, f24, rne # perform operation
fsub.d f30, f16, f24, rtz # perform operation
fsub.d f30, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x30, 0xc50c98b977b36ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fsub.d f30, f8, f17, dyn # perform operation
fsub.d f30, f8, f17, rdn # perform operation
fsub.d f30, f8, f17, rmm # perform operation
fsub.d f30, f8, f17, rne # perform operation
fsub.d f30, f8, f17, rtz # perform operation
fsub.d f30, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f30, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f30, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f30, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f30, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f30, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x29, 0x65b83a62394a166c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fsub.d f29, f25, f27, dyn # perform operation
fsub.d f29, f25, f27, rdn # perform operation
fsub.d f29, f25, f27, rmm # perform operation
fsub.d f29, f25, f27, rne # perform operation
fsub.d f29, f25, f27, rtz # perform operation
fsub.d f29, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f29, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f29, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f29, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f29, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f29, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x28, 0x22cd904f57e0941e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fsub.d f28, f12, f31, dyn # perform operation
fsub.d f28, f12, f31, rdn # perform operation
fsub.d f28, f12, f31, rmm # perform operation
fsub.d f28, f12, f31, rne # perform operation
fsub.d f28, f12, f31, rtz # perform operation
fsub.d f28, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f28, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f28, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f28, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f28, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f28, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x11, 0xc64dcfa49154db24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fsub.d f11, f19, f29, dyn # perform operation
fsub.d f11, f19, f29, rdn # perform operation
fsub.d f11, f19, f29, rmm # perform operation
fsub.d f11, f19, f29, rne # perform operation
fsub.d f11, f19, f29, rtz # perform operation
fsub.d f11, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x8, 0xa117bde66b3263e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fsub.d f8, f3, f11, dyn # perform operation
fsub.d f8, f3, f11, rdn # perform operation
fsub.d f8, f3, f11, rmm # perform operation
fsub.d f8, f3, f11, rne # perform operation
fsub.d f8, f3, f11, rtz # perform operation
fsub.d f8, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f8, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f8, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f8, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f8, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f8, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x21, 0xcfca03396f41646d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fsub.d f21, f1, f30, dyn # perform operation
fsub.d f21, f1, f30, rdn # perform operation
fsub.d f21, f1, f30, rmm # perform operation
fsub.d f21, f1, f30, rne # perform operation
fsub.d f21, f1, f30, rtz # perform operation
fsub.d f21, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f21, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f21, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f21, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f21, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f21, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x14, 0x04dde8e8a34a0e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fsub.d f14, f8, f12, dyn # perform operation
fsub.d f14, f8, f12, rdn # perform operation
fsub.d f14, f8, f12, rmm # perform operation
fsub.d f14, f8, f12, rne # perform operation
fsub.d f14, f8, f12, rtz # perform operation
fsub.d f14, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x25, 0xb845f3df1bb2063f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fsub.d f25, f24, f16, dyn # perform operation
fsub.d f25, f24, f16, rdn # perform operation
fsub.d f25, f24, f16, rmm # perform operation
fsub.d f25, f24, f16, rne # perform operation
fsub.d f25, f24, f16, rtz # perform operation
fsub.d f25, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x18, 0xc2af47537b7afcb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fsub.d f18, f24, f9, dyn # perform operation
fsub.d f18, f24, f9, rdn # perform operation
fsub.d f18, f24, f9, rmm # perform operation
fsub.d f18, f24, f9, rne # perform operation
fsub.d f18, f24, f9, rtz # perform operation
fsub.d f18, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x11, 0x334945c1f0d62a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fsub.d f11, f13, f2, dyn # perform operation
fsub.d f11, f13, f2, rdn # perform operation
fsub.d f11, f13, f2, rmm # perform operation
fsub.d f11, f13, f2, rne # perform operation
fsub.d f11, f13, f2, rtz # perform operation
fsub.d f11, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f11, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f11, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x10, 0xe86aca2e17b09162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fsub.d f10, f21, f5, dyn # perform operation
fsub.d f10, f21, f5, rdn # perform operation
fsub.d f10, f21, f5, rmm # perform operation
fsub.d f10, f21, f5, rne # perform operation
fsub.d f10, f21, f5, rtz # perform operation
fsub.d f10, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f10, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f10, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f10, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f10, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f10, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x14, 0x82b9d80b5e911ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fsub.d f14, f2, f20, dyn # perform operation
fsub.d f14, f2, f20, rdn # perform operation
fsub.d f14, f2, f20, rmm # perform operation
fsub.d f14, f2, f20, rne # perform operation
fsub.d f14, f2, f20, rtz # perform operation
fsub.d f14, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f14, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f14, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f14, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f14, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f14, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x16, 0x5605001a456e327a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fsub.d f16, f4, f19, dyn # perform operation
fsub.d f16, f4, f19, rdn # perform operation
fsub.d f16, f4, f19, rmm # perform operation
fsub.d f16, f4, f19, rne # perform operation
fsub.d f16, f4, f19, rtz # perform operation
fsub.d f16, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f16, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f16, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f16, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f16, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f16, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x15, 0x50966904edb41d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fsub.d f15, f14, f27, dyn # perform operation
fsub.d f15, f14, f27, rdn # perform operation
fsub.d f15, f14, f27, rmm # perform operation
fsub.d f15, f14, f27, rne # perform operation
fsub.d f15, f14, f27, rtz # perform operation
fsub.d f15, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x25, 0xa507271a2b89bc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fsub.d f25, f4, f17, dyn # perform operation
fsub.d f25, f4, f17, rdn # perform operation
fsub.d f25, f4, f17, rmm # perform operation
fsub.d f25, f4, f17, rne # perform operation
fsub.d f25, f4, f17, rtz # perform operation
fsub.d f25, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x15, 0xb1470177d244fd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fsub.d f15, f31, f18, dyn # perform operation
fsub.d f15, f31, f18, rdn # perform operation
fsub.d f15, f31, f18, rmm # perform operation
fsub.d f15, f31, f18, rne # perform operation
fsub.d f15, f31, f18, rtz # perform operation
fsub.d f15, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f15, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f15, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x26, 0x7ddb9113a57db51e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fsub.d f26, f5, f9, dyn # perform operation
fsub.d f26, f5, f9, rdn # perform operation
fsub.d f26, f5, f9, rmm # perform operation
fsub.d f26, f5, f9, rne # perform operation
fsub.d f26, f5, f9, rtz # perform operation
fsub.d f26, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f26, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f26, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f26, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f26, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f26, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x25, 0x042c04c091383949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fsub.d f25, f31, f14, dyn # perform operation
fsub.d f25, f31, f14, rdn # perform operation
fsub.d f25, f31, f14, rmm # perform operation
fsub.d f25, f31, f14, rne # perform operation
fsub.d f25, f31, f14, rtz # perform operation
fsub.d f25, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x24, 0xfd39f4cf598d23f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
fsub.d f24, f25, f1, dyn # perform operation
fsub.d f24, f25, f1, rdn # perform operation
fsub.d f24, f25, f1, rmm # perform operation
fsub.d f24, f25, f1, rne # perform operation
fsub.d f24, f25, f1, rtz # perform operation
fsub.d f24, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f24, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f24, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f24, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f24, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f24, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x22, 0xca0648a28c43a115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fsub.d f22, f18, f20, dyn # perform operation
fsub.d f22, f18, f20, rdn # perform operation
fsub.d f22, f18, f20, rmm # perform operation
fsub.d f22, f18, f20, rne # perform operation
fsub.d f22, f18, f20, rtz # perform operation
fsub.d f22, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f22, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f22, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x20, 0xd73600908ce9ffdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fsub.d f20, f8, f17, dyn # perform operation
fsub.d f20, f8, f17, rdn # perform operation
fsub.d f20, f8, f17, rmm # perform operation
fsub.d f20, f8, f17, rne # perform operation
fsub.d f20, f8, f17, rtz # perform operation
fsub.d f20, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f20, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f20, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f20, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f20, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f20, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x25, 0xdb9b5454d33c90cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fsub.d f25, f2, f26, dyn # perform operation
fsub.d f25, f2, f26, rdn # perform operation
fsub.d f25, f2, f26, rmm # perform operation
fsub.d f25, f2, f26, rne # perform operation
fsub.d f25, f2, f26, rtz # perform operation
fsub.d f25, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f25, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f25, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f25, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f25, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f25, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x31, 0xc50b1ac316c37692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fsub.d f31, f5, f9, dyn # perform operation
fsub.d f31, f5, f9, rdn # perform operation
fsub.d f31, f5, f9, rmm # perform operation
fsub.d f31, f5, f9, rne # perform operation
fsub.d f31, f5, f9, rtz # perform operation
fsub.d f31, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f31, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f31, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f31, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f31, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f31, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x19, 0xc92dd39a6448f327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fsub.d f19, f1, f4, dyn # perform operation
fsub.d f19, f1, f4, rdn # perform operation
fsub.d f19, f1, f4, rmm # perform operation
fsub.d f19, f1, f4, rne # perform operation
fsub.d f19, f1, f4, rtz # perform operation
fsub.d f19, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f19, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f19, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f19, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f19, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f19, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x18, 0xf4f665e131c99776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fsub.d f18, f16, f5, dyn # perform operation
fsub.d f18, f16, f5, rdn # perform operation
fsub.d f18, f16, f5, rmm # perform operation
fsub.d f18, f16, f5, rne # perform operation
fsub.d f18, f16, f5, rtz # perform operation
fsub.d f18, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.d f18, f16, f5 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x8eb060a59173e2ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x847757e508123f43 # load x3 with value 0x847757e508123f43
sd x3, 0(x2) # store 0x847757e508123f43 in memory
fld f1, 0(x2) # load 0x847757e508123f43 from memory into f1
li x3, 0x627e7b77c3cb0585 # load x3 with value 0x627e7b77c3cb0585
sd x3, 0(x2) # store 0x627e7b77c3cb0585 in memory
fld f10, 0(x2) # load 0x627e7b77c3cb0585 from memory into f10
fsub.d f0, f1, f10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5e464113cb5dc471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bf74be4d2ac13dd # load x3 with value 0x1bf74be4d2ac13dd
sd x3, 0(x2) # store 0x1bf74be4d2ac13dd in memory
fld f22, 0(x2) # load 0x1bf74be4d2ac13dd from memory into f22
li x3, 0x99d88efdfdce3fa3 # load x3 with value 0x99d88efdfdce3fa3
sd x3, 0(x2) # store 0x99d88efdfdce3fa3 in memory
fld f30, 0(x2) # load 0x99d88efdfdce3fa3 from memory into f30
fsub.d f1, f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x92627fe08c325975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6135c7763e2a228 # load x3 with value 0xc6135c7763e2a228
sd x3, 0(x2) # store 0xc6135c7763e2a228 in memory
fld f5, 0(x2) # load 0xc6135c7763e2a228 from memory into f5
li x3, 0x70597c201e09c769 # load x3 with value 0x70597c201e09c769
sd x3, 0(x2) # store 0x70597c201e09c769 in memory
fld f13, 0(x2) # load 0x70597c201e09c769 from memory into f13
fsub.d f2, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x9a92e863fc29a1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2229e90e65c91b59 # load x3 with value 0x2229e90e65c91b59
sd x3, 0(x2) # store 0x2229e90e65c91b59 in memory
fld f1, 0(x2) # load 0x2229e90e65c91b59 from memory into f1
li x3, 0x0cc631e598e6e2ee # load x3 with value 0x0cc631e598e6e2ee
sd x3, 0(x2) # store 0x0cc631e598e6e2ee in memory
fld f14, 0(x2) # load 0x0cc631e598e6e2ee from memory into f14
fsub.d f3, f1, f14 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x101f1bf8205bbf67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdda780e32dd3a9b9 # load x3 with value 0xdda780e32dd3a9b9
sd x3, 0(x2) # store 0xdda780e32dd3a9b9 in memory
fld f9, 0(x2) # load 0xdda780e32dd3a9b9 from memory into f9
li x3, 0x3bfc91915992823d # load x3 with value 0x3bfc91915992823d
sd x3, 0(x2) # store 0x3bfc91915992823d in memory
fld f10, 0(x2) # load 0x3bfc91915992823d from memory into f10
fsub.d f4, f9, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x5bd2c97e5c5daaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x123271a4ec0734a3 # load x3 with value 0x123271a4ec0734a3
sd x3, 0(x2) # store 0x123271a4ec0734a3 in memory
fld f29, 0(x2) # load 0x123271a4ec0734a3 from memory into f29
li x3, 0x2a4c0239f71af2b6 # load x3 with value 0x2a4c0239f71af2b6
sd x3, 0(x2) # store 0x2a4c0239f71af2b6 in memory
fld f4, 0(x2) # load 0x2a4c0239f71af2b6 from memory into f4
fsub.d f5, f29, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x56b1441740abe688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a253987174052b5 # load x3 with value 0x3a253987174052b5
sd x3, 0(x2) # store 0x3a253987174052b5 in memory
fld f19, 0(x2) # load 0x3a253987174052b5 from memory into f19
li x3, 0xe8bf58a88bb6103d # load x3 with value 0xe8bf58a88bb6103d
sd x3, 0(x2) # store 0xe8bf58a88bb6103d in memory
fld f21, 0(x2) # load 0xe8bf58a88bb6103d from memory into f21
fsub.d f6, f19, f21 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd4a3e0859bd654a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d1e1aa7378a934a # load x3 with value 0x7d1e1aa7378a934a
sd x3, 0(x2) # store 0x7d1e1aa7378a934a in memory
fld f25, 0(x2) # load 0x7d1e1aa7378a934a from memory into f25
li x3, 0xf865bfda12db0602 # load x3 with value 0xf865bfda12db0602
sd x3, 0(x2) # store 0xf865bfda12db0602 in memory
fld f7, 0(x2) # load 0xf865bfda12db0602 from memory into f7
fsub.d f7, f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xfe34d880b7caeff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26ca1a8d6760ed28 # load x3 with value 0x26ca1a8d6760ed28
sd x3, 0(x2) # store 0x26ca1a8d6760ed28 in memory
fld f3, 0(x2) # load 0x26ca1a8d6760ed28 from memory into f3
li x3, 0xc934502b4e9870a8 # load x3 with value 0xc934502b4e9870a8
sd x3, 0(x2) # store 0xc934502b4e9870a8 in memory
fld f20, 0(x2) # load 0xc934502b4e9870a8 from memory into f20
fsub.d f8, f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xc3ca0f99d76938a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfd047b1f03d4c23 # load x3 with value 0xdfd047b1f03d4c23
sd x3, 0(x2) # store 0xdfd047b1f03d4c23 in memory
fld f24, 0(x2) # load 0xdfd047b1f03d4c23 from memory into f24
li x3, 0x4d540b3df5fed1d9 # load x3 with value 0x4d540b3df5fed1d9
sd x3, 0(x2) # store 0x4d540b3df5fed1d9 in memory
fld f15, 0(x2) # load 0x4d540b3df5fed1d9 from memory into f15
fsub.d f9, f24, f15 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x67bc074667d836e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2054808d88ffad33 # load x3 with value 0x2054808d88ffad33
sd x3, 0(x2) # store 0x2054808d88ffad33 in memory
fld f19, 0(x2) # load 0x2054808d88ffad33 from memory into f19
li x3, 0xd6283d5544bfaa57 # load x3 with value 0xd6283d5544bfaa57
sd x3, 0(x2) # store 0xd6283d5544bfaa57 in memory
fld f16, 0(x2) # load 0xd6283d5544bfaa57 from memory into f16
fsub.d f10, f19, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xc90a5273a288d858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a3ec32c5dd7fea6 # load x3 with value 0x7a3ec32c5dd7fea6
sd x3, 0(x2) # store 0x7a3ec32c5dd7fea6 in memory
fld f29, 0(x2) # load 0x7a3ec32c5dd7fea6 from memory into f29
li x3, 0x1c9aa88f7e3ef17d # load x3 with value 0x1c9aa88f7e3ef17d
sd x3, 0(x2) # store 0x1c9aa88f7e3ef17d in memory
fld f11, 0(x2) # load 0x1c9aa88f7e3ef17d from memory into f11
fsub.d f11, f29, f11 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x245c7c3ed8ce10c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x146e7f12edeb62f0 # load x3 with value 0x146e7f12edeb62f0
sd x3, 0(x2) # store 0x146e7f12edeb62f0 in memory
fld f13, 0(x2) # load 0x146e7f12edeb62f0 from memory into f13
li x3, 0x2d65cb056c5b5f30 # load x3 with value 0x2d65cb056c5b5f30
sd x3, 0(x2) # store 0x2d65cb056c5b5f30 in memory
fld f30, 0(x2) # load 0x2d65cb056c5b5f30 from memory into f30
fsub.d f12, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6d1256609eb939fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x761bb3a8ad5474e3 # load x3 with value 0x761bb3a8ad5474e3
sd x3, 0(x2) # store 0x761bb3a8ad5474e3 in memory
fld f2, 0(x2) # load 0x761bb3a8ad5474e3 from memory into f2
li x3, 0x18076bf00976b18c # load x3 with value 0x18076bf00976b18c
sd x3, 0(x2) # store 0x18076bf00976b18c in memory
fld f17, 0(x2) # load 0x18076bf00976b18c from memory into f17
fsub.d f13, f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd46e86bca93c37ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c7f1d6f7c93e234 # load x3 with value 0x0c7f1d6f7c93e234
sd x3, 0(x2) # store 0x0c7f1d6f7c93e234 in memory
fld f9, 0(x2) # load 0x0c7f1d6f7c93e234 from memory into f9
li x3, 0xb79d83bc36924b12 # load x3 with value 0xb79d83bc36924b12
sd x3, 0(x2) # store 0xb79d83bc36924b12 in memory
fld f5, 0(x2) # load 0xb79d83bc36924b12 from memory into f5
fsub.d f14, f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xee4687f0026bb7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadf20138157056dd # load x3 with value 0xadf20138157056dd
sd x3, 0(x2) # store 0xadf20138157056dd in memory
fld f12, 0(x2) # load 0xadf20138157056dd from memory into f12
li x3, 0xdac3acb8ffaedd53 # load x3 with value 0xdac3acb8ffaedd53
sd x3, 0(x2) # store 0xdac3acb8ffaedd53 in memory
fld f4, 0(x2) # load 0xdac3acb8ffaedd53 from memory into f4
fsub.d f15, f12, f4 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x5ac5be37512681ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf189ef68d78057ca # load x3 with value 0xf189ef68d78057ca
sd x3, 0(x2) # store 0xf189ef68d78057ca in memory
fld f16, 0(x2) # load 0xf189ef68d78057ca from memory into f16
li x3, 0xb80370c311994577 # load x3 with value 0xb80370c311994577
sd x3, 0(x2) # store 0xb80370c311994577 in memory
fld f3, 0(x2) # load 0xb80370c311994577 from memory into f3
fsub.d f16, f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x03e188eba975d987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa9ecb5351281958 # load x3 with value 0xaa9ecb5351281958
sd x3, 0(x2) # store 0xaa9ecb5351281958 in memory
fld f11, 0(x2) # load 0xaa9ecb5351281958 from memory into f11
li x3, 0x4fb4f3400f288a94 # load x3 with value 0x4fb4f3400f288a94
sd x3, 0(x2) # store 0x4fb4f3400f288a94 in memory
fld f21, 0(x2) # load 0x4fb4f3400f288a94 from memory into f21
fsub.d f17, f11, f21 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9cac769aafe59ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1aca0868acdf8ea6 # load x3 with value 0x1aca0868acdf8ea6
sd x3, 0(x2) # store 0x1aca0868acdf8ea6 in memory
fld f15, 0(x2) # load 0x1aca0868acdf8ea6 from memory into f15
li x3, 0xd2d3cdfdf740a258 # load x3 with value 0xd2d3cdfdf740a258
sd x3, 0(x2) # store 0xd2d3cdfdf740a258 in memory
fld f12, 0(x2) # load 0xd2d3cdfdf740a258 from memory into f12
fsub.d f18, f15, f12 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xb8c8de7617f1a87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b6a4c36ae57754c # load x3 with value 0x1b6a4c36ae57754c
sd x3, 0(x2) # store 0x1b6a4c36ae57754c in memory
fld f29, 0(x2) # load 0x1b6a4c36ae57754c from memory into f29
li x3, 0x47d566ccf64f8c2c # load x3 with value 0x47d566ccf64f8c2c
sd x3, 0(x2) # store 0x47d566ccf64f8c2c in memory
fld f3, 0(x2) # load 0x47d566ccf64f8c2c from memory into f3
fsub.d f19, f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xbd1196dfc977883f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a922cc5787e946a # load x3 with value 0x8a922cc5787e946a
sd x3, 0(x2) # store 0x8a922cc5787e946a in memory
fld f7, 0(x2) # load 0x8a922cc5787e946a from memory into f7
li x3, 0xef7b0ff5c3a163d4 # load x3 with value 0xef7b0ff5c3a163d4
sd x3, 0(x2) # store 0xef7b0ff5c3a163d4 in memory
fld f30, 0(x2) # load 0xef7b0ff5c3a163d4 from memory into f30
fsub.d f20, f7, f30 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xb3e5694f25d99416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06a301e9e6f69708 # load x3 with value 0x06a301e9e6f69708
sd x3, 0(x2) # store 0x06a301e9e6f69708 in memory
fld f1, 0(x2) # load 0x06a301e9e6f69708 from memory into f1
li x3, 0x66ce982da3a4a920 # load x3 with value 0x66ce982da3a4a920
sd x3, 0(x2) # store 0x66ce982da3a4a920 in memory
fld f15, 0(x2) # load 0x66ce982da3a4a920 from memory into f15
fsub.d f21, f1, f15 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xfe94ec5bd2aaf105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ecfd946429a48d8 # load x3 with value 0x5ecfd946429a48d8
sd x3, 0(x2) # store 0x5ecfd946429a48d8 in memory
fld f6, 0(x2) # load 0x5ecfd946429a48d8 from memory into f6
li x3, 0x7855cda00432f992 # load x3 with value 0x7855cda00432f992
sd x3, 0(x2) # store 0x7855cda00432f992 in memory
fld f21, 0(x2) # load 0x7855cda00432f992 from memory into f21
fsub.d f22, f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x3c6619d6bb2fa230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe52cc7ba5fae3ccd # load x3 with value 0xe52cc7ba5fae3ccd
sd x3, 0(x2) # store 0xe52cc7ba5fae3ccd in memory
fld f22, 0(x2) # load 0xe52cc7ba5fae3ccd from memory into f22
li x3, 0xa0a60fc87c860fc0 # load x3 with value 0xa0a60fc87c860fc0
sd x3, 0(x2) # store 0xa0a60fc87c860fc0 in memory
fld f3, 0(x2) # load 0xa0a60fc87c860fc0 from memory into f3
fsub.d f23, f22, f3 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x7e0409144d00117c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59a23316213bac3c # load x3 with value 0x59a23316213bac3c
sd x3, 0(x2) # store 0x59a23316213bac3c in memory
fld f20, 0(x2) # load 0x59a23316213bac3c from memory into f20
li x3, 0xefee37a13717bbc1 # load x3 with value 0xefee37a13717bbc1
sd x3, 0(x2) # store 0xefee37a13717bbc1 in memory
fld f2, 0(x2) # load 0xefee37a13717bbc1 from memory into f2
fsub.d f24, f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xcb8714ec73618c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a79ba054ee02389 # load x3 with value 0x6a79ba054ee02389
sd x3, 0(x2) # store 0x6a79ba054ee02389 in memory
fld f21, 0(x2) # load 0x6a79ba054ee02389 from memory into f21
li x3, 0x09e591ac26b35408 # load x3 with value 0x09e591ac26b35408
sd x3, 0(x2) # store 0x09e591ac26b35408 in memory
fld f19, 0(x2) # load 0x09e591ac26b35408 from memory into f19
fsub.d f25, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x8b9ce312bd3a3912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d25985f1d9d23cf # load x3 with value 0x2d25985f1d9d23cf
sd x3, 0(x2) # store 0x2d25985f1d9d23cf in memory
fld f17, 0(x2) # load 0x2d25985f1d9d23cf from memory into f17
li x3, 0x8627bbe42d237845 # load x3 with value 0x8627bbe42d237845
sd x3, 0(x2) # store 0x8627bbe42d237845 in memory
fld f2, 0(x2) # load 0x8627bbe42d237845 from memory into f2
fsub.d f26, f17, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb8ce8b365eb0969f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x822cacf8ccb9ee8d # load x3 with value 0x822cacf8ccb9ee8d
sd x3, 0(x2) # store 0x822cacf8ccb9ee8d in memory
fld f26, 0(x2) # load 0x822cacf8ccb9ee8d from memory into f26
li x3, 0x978f2ec1edd08881 # load x3 with value 0x978f2ec1edd08881
sd x3, 0(x2) # store 0x978f2ec1edd08881 in memory
fld f6, 0(x2) # load 0x978f2ec1edd08881 from memory into f6
fsub.d f27, f26, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x60ae3a334e09c1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf773636f3c56d76c # load x3 with value 0xf773636f3c56d76c
sd x3, 0(x2) # store 0xf773636f3c56d76c in memory
fld f24, 0(x2) # load 0xf773636f3c56d76c from memory into f24
li x3, 0xc80ea318245e9770 # load x3 with value 0xc80ea318245e9770
sd x3, 0(x2) # store 0xc80ea318245e9770 in memory
fld f6, 0(x2) # load 0xc80ea318245e9770 from memory into f6
fsub.d f28, f24, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x6d66099f1cd92510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cb53a8ab95a2e28 # load x3 with value 0x1cb53a8ab95a2e28
sd x3, 0(x2) # store 0x1cb53a8ab95a2e28 in memory
fld f14, 0(x2) # load 0x1cb53a8ab95a2e28 from memory into f14
li x3, 0x522b55312158d42a # load x3 with value 0x522b55312158d42a
sd x3, 0(x2) # store 0x522b55312158d42a in memory
fld f13, 0(x2) # load 0x522b55312158d42a from memory into f13
fsub.d f29, f14, f13 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x10fb8c42b146a2af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c2d67b8194d5386 # load x3 with value 0x1c2d67b8194d5386
sd x3, 0(x2) # store 0x1c2d67b8194d5386 in memory
fld f23, 0(x2) # load 0x1c2d67b8194d5386 from memory into f23
li x3, 0x340565145dab2fb2 # load x3 with value 0x340565145dab2fb2
sd x3, 0(x2) # store 0x340565145dab2fb2 in memory
fld f1, 0(x2) # load 0x340565145dab2fb2 from memory into f1
fsub.d f30, f23, f1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x10a467384435a898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ba7c896f6acff39 # load x3 with value 0x8ba7c896f6acff39
sd x3, 0(x2) # store 0x8ba7c896f6acff39 in memory
fld f30, 0(x2) # load 0x8ba7c896f6acff39 from memory into f30
li x3, 0xf63469e02ab90cdb # load x3 with value 0xf63469e02ab90cdb
sd x3, 0(x2) # store 0xf63469e02ab90cdb in memory
fld f11, 0(x2) # load 0xf63469e02ab90cdb from memory into f11
fsub.d f31, f30, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x30, 0x4cca103298c4cf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd58eec01131f5b9d # load x3 with value 0xd58eec01131f5b9d
sd x3, 0(x2) # store 0xd58eec01131f5b9d in memory
fld f0, 0(x2) # load 0xd58eec01131f5b9d from memory into f0
li x3, 0xa4ed59bb1ceb7aeb # load x3 with value 0xa4ed59bb1ceb7aeb
sd x3, 0(x2) # store 0xa4ed59bb1ceb7aeb in memory
fld f8, 0(x2) # load 0xa4ed59bb1ceb7aeb from memory into f8
fsub.d f30, f0, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0x41936e04e6bc1a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15451b12d877e556 # load x3 with value 0x15451b12d877e556
sd x3, 0(x2) # store 0x15451b12d877e556 in memory
fld f1, 0(x2) # load 0x15451b12d877e556 from memory into f1
li x3, 0x3ef717f72b07881d # load x3 with value 0x3ef717f72b07881d
sd x3, 0(x2) # store 0x3ef717f72b07881d in memory
fld f12, 0(x2) # load 0x3ef717f72b07881d from memory into f12
fsub.d f19, f1, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0xc88e4ff0a65661f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c5c94e949bda8d0 # load x3 with value 0x8c5c94e949bda8d0
sd x3, 0(x2) # store 0x8c5c94e949bda8d0 in memory
fld f2, 0(x2) # load 0x8c5c94e949bda8d0 from memory into f2
li x3, 0xa001dfe79bbf3f8a # load x3 with value 0xa001dfe79bbf3f8a
sd x3, 0(x2) # store 0xa001dfe79bbf3f8a in memory
fld f29, 0(x2) # load 0xa001dfe79bbf3f8a from memory into f29
fsub.d f14, f2, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0x4cd487c5c81e80f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cbb1294ddb13e3c # load x3 with value 0x6cbb1294ddb13e3c
sd x3, 0(x2) # store 0x6cbb1294ddb13e3c in memory
fld f3, 0(x2) # load 0x6cbb1294ddb13e3c from memory into f3
li x3, 0x97c54acfb009d00e # load x3 with value 0x97c54acfb009d00e
sd x3, 0(x2) # store 0x97c54acfb009d00e in memory
fld f31, 0(x2) # load 0x97c54acfb009d00e from memory into f31
fsub.d f29, f3, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x10, 0x942072c7df0bc97d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x384ca7ae8feac571 # load x3 with value 0x384ca7ae8feac571
sd x3, 0(x2) # store 0x384ca7ae8feac571 in memory
fld f4, 0(x2) # load 0x384ca7ae8feac571 from memory into f4
li x3, 0x0ecd8c9942670843 # load x3 with value 0x0ecd8c9942670843
sd x3, 0(x2) # store 0x0ecd8c9942670843 in memory
fld f3, 0(x2) # load 0x0ecd8c9942670843 from memory into f3
fsub.d f10, f4, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x30, 0xd156df7a4ae05771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd99a6d506aeea7b # load x3 with value 0xfd99a6d506aeea7b
sd x3, 0(x2) # store 0xfd99a6d506aeea7b in memory
fld f5, 0(x2) # load 0xfd99a6d506aeea7b from memory into f5
li x3, 0x8bc455ba2240a77b # load x3 with value 0x8bc455ba2240a77b
sd x3, 0(x2) # store 0x8bc455ba2240a77b in memory
fld f15, 0(x2) # load 0x8bc455ba2240a77b from memory into f15
fsub.d f30, f5, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x23, 0x70193123fd3a599c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4edc9095acf07a7 # load x3 with value 0xa4edc9095acf07a7
sd x3, 0(x2) # store 0xa4edc9095acf07a7 in memory
fld f6, 0(x2) # load 0xa4edc9095acf07a7 from memory into f6
li x3, 0xfa5c0851d1a89a45 # load x3 with value 0xfa5c0851d1a89a45
sd x3, 0(x2) # store 0xfa5c0851d1a89a45 in memory
fld f9, 0(x2) # load 0xfa5c0851d1a89a45 from memory into f9
fsub.d f23, f6, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0x7ead59f178627bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b76ced2b2c59439 # load x3 with value 0x0b76ced2b2c59439
sd x3, 0(x2) # store 0x0b76ced2b2c59439 in memory
fld f7, 0(x2) # load 0x0b76ced2b2c59439 from memory into f7
li x3, 0x219f2a47d674685d # load x3 with value 0x219f2a47d674685d
sd x3, 0(x2) # store 0x219f2a47d674685d in memory
fld f19, 0(x2) # load 0x219f2a47d674685d from memory into f19
fsub.d f16, f7, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0xc1d1e372f3c3581c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4363b4f5d5f56d5 # load x3 with value 0xd4363b4f5d5f56d5
sd x3, 0(x2) # store 0xd4363b4f5d5f56d5 in memory
fld f8, 0(x2) # load 0xd4363b4f5d5f56d5 from memory into f8
li x3, 0x4eef13d7d3a60b89 # load x3 with value 0x4eef13d7d3a60b89
sd x3, 0(x2) # store 0x4eef13d7d3a60b89 in memory
fld f18, 0(x2) # load 0x4eef13d7d3a60b89 from memory into f18
fsub.d f10, f8, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x9, 0xb41d1be88d37d21a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2a4075730192caa # load x3 with value 0xa2a4075730192caa
sd x3, 0(x2) # store 0xa2a4075730192caa in memory
fld f9, 0(x2) # load 0xa2a4075730192caa from memory into f9
li x3, 0xa9151695d00f6255 # load x3 with value 0xa9151695d00f6255
sd x3, 0(x2) # store 0xa9151695d00f6255 in memory
fld f19, 0(x2) # load 0xa9151695d00f6255 from memory into f19
fsub.d f9, f9, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x9, 0x3ed17682ba186ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x852e3dada567be64 # load x3 with value 0x852e3dada567be64
sd x3, 0(x2) # store 0x852e3dada567be64 in memory
fld f10, 0(x2) # load 0x852e3dada567be64 from memory into f10
li x3, 0xb4b1fe44262fa9d4 # load x3 with value 0xb4b1fe44262fa9d4
sd x3, 0(x2) # store 0xb4b1fe44262fa9d4 in memory
fld f31, 0(x2) # load 0xb4b1fe44262fa9d4 from memory into f31
fsub.d f9, f10, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0xd12fdcbfad812706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce19b333c63b9bd1 # load x3 with value 0xce19b333c63b9bd1
sd x3, 0(x2) # store 0xce19b333c63b9bd1 in memory
fld f11, 0(x2) # load 0xce19b333c63b9bd1 from memory into f11
li x3, 0x8ce25fc77d1927f7 # load x3 with value 0x8ce25fc77d1927f7
sd x3, 0(x2) # store 0x8ce25fc77d1927f7 in memory
fld f31, 0(x2) # load 0x8ce25fc77d1927f7 from memory into f31
fsub.d f20, f11, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x30, 0x24339a400f41f77e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d9d4fbe43788ece # load x3 with value 0x7d9d4fbe43788ece
sd x3, 0(x2) # store 0x7d9d4fbe43788ece in memory
fld f12, 0(x2) # load 0x7d9d4fbe43788ece from memory into f12
li x3, 0x0ba773b9b43ddee2 # load x3 with value 0x0ba773b9b43ddee2
sd x3, 0(x2) # store 0x0ba773b9b43ddee2 in memory
fld f23, 0(x2) # load 0x0ba773b9b43ddee2 from memory into f23
fsub.d f30, f12, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x31, 0x88fb81923e585ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91a4129dac1dea34 # load x3 with value 0x91a4129dac1dea34
sd x3, 0(x2) # store 0x91a4129dac1dea34 in memory
fld f13, 0(x2) # load 0x91a4129dac1dea34 from memory into f13
li x3, 0x414c74e6d4cb39a3 # load x3 with value 0x414c74e6d4cb39a3
sd x3, 0(x2) # store 0x414c74e6d4cb39a3 in memory
fld f29, 0(x2) # load 0x414c74e6d4cb39a3 from memory into f29
fsub.d f31, f13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x24, 0x1b1b51662eea3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x661c28eecf7013c5 # load x3 with value 0x661c28eecf7013c5
sd x3, 0(x2) # store 0x661c28eecf7013c5 in memory
fld f14, 0(x2) # load 0x661c28eecf7013c5 from memory into f14
li x3, 0x57e22c965a818a75 # load x3 with value 0x57e22c965a818a75
sd x3, 0(x2) # store 0x57e22c965a818a75 in memory
fld f23, 0(x2) # load 0x57e22c965a818a75 from memory into f23
fsub.d f24, f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x26, 0xe644c5f35422e800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacfdd8e735c5519e # load x3 with value 0xacfdd8e735c5519e
sd x3, 0(x2) # store 0xacfdd8e735c5519e in memory
fld f15, 0(x2) # load 0xacfdd8e735c5519e from memory into f15
li x3, 0x4cb4d8f52ac1014a # load x3 with value 0x4cb4d8f52ac1014a
sd x3, 0(x2) # store 0x4cb4d8f52ac1014a in memory
fld f8, 0(x2) # load 0x4cb4d8f52ac1014a from memory into f8
fsub.d f26, f15, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x25, 0xf758779f83e67053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1036253453d0b7fd # load x3 with value 0x1036253453d0b7fd
sd x3, 0(x2) # store 0x1036253453d0b7fd in memory
fld f16, 0(x2) # load 0x1036253453d0b7fd from memory into f16
li x3, 0xd0d4a7d2b8d16bfb # load x3 with value 0xd0d4a7d2b8d16bfb
sd x3, 0(x2) # store 0xd0d4a7d2b8d16bfb in memory
fld f17, 0(x2) # load 0xd0d4a7d2b8d16bfb from memory into f17
fsub.d f25, f16, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x20, 0xf22ea87b88ed4450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f2ef1e547933701 # load x3 with value 0x0f2ef1e547933701
sd x3, 0(x2) # store 0x0f2ef1e547933701 in memory
fld f17, 0(x2) # load 0x0f2ef1e547933701 from memory into f17
li x3, 0xc5718a1b445d34c1 # load x3 with value 0xc5718a1b445d34c1
sd x3, 0(x2) # store 0xc5718a1b445d34c1 in memory
fld f7, 0(x2) # load 0xc5718a1b445d34c1 from memory into f7
fsub.d f20, f17, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x23, 0x772850465cdd2da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce51bc24ec8e4bbe # load x3 with value 0xce51bc24ec8e4bbe
sd x3, 0(x2) # store 0xce51bc24ec8e4bbe in memory
fld f18, 0(x2) # load 0xce51bc24ec8e4bbe from memory into f18
li x3, 0x10575b42c6f5d573 # load x3 with value 0x10575b42c6f5d573
sd x3, 0(x2) # store 0x10575b42c6f5d573 in memory
fld f13, 0(x2) # load 0x10575b42c6f5d573 from memory into f13
fsub.d f23, f18, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x17, 0x0a5bcc24ea7b310a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83d893ff614d9fc8 # load x3 with value 0x83d893ff614d9fc8
sd x3, 0(x2) # store 0x83d893ff614d9fc8 in memory
fld f19, 0(x2) # load 0x83d893ff614d9fc8 from memory into f19
li x3, 0x90081e756c093395 # load x3 with value 0x90081e756c093395
sd x3, 0(x2) # store 0x90081e756c093395 in memory
fld f14, 0(x2) # load 0x90081e756c093395 from memory into f14
fsub.d f17, f19, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0x7ec0ca39b9f87ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cc943bb1a2f8bfd # load x3 with value 0x7cc943bb1a2f8bfd
sd x3, 0(x2) # store 0x7cc943bb1a2f8bfd in memory
fld f20, 0(x2) # load 0x7cc943bb1a2f8bfd from memory into f20
li x3, 0x72e67631aed5a8d0 # load x3 with value 0x72e67631aed5a8d0
sd x3, 0(x2) # store 0x72e67631aed5a8d0 in memory
fld f27, 0(x2) # load 0x72e67631aed5a8d0 from memory into f27
fsub.d f6, f20, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x5, 0x6bb4f910da7f519f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe80a47d210579e06 # load x3 with value 0xe80a47d210579e06
sd x3, 0(x2) # store 0xe80a47d210579e06 in memory
fld f21, 0(x2) # load 0xe80a47d210579e06 from memory into f21
li x3, 0x98e6e6e651df4767 # load x3 with value 0x98e6e6e651df4767
sd x3, 0(x2) # store 0x98e6e6e651df4767 in memory
fld f28, 0(x2) # load 0x98e6e6e651df4767 from memory into f28
fsub.d f5, f21, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0x0e4808ad7977d842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3a405b5ba8ee851 # load x3 with value 0xb3a405b5ba8ee851
sd x3, 0(x2) # store 0xb3a405b5ba8ee851 in memory
fld f22, 0(x2) # load 0xb3a405b5ba8ee851 from memory into f22
li x3, 0xd5e0e1cd50011730 # load x3 with value 0xd5e0e1cd50011730
sd x3, 0(x2) # store 0xd5e0e1cd50011730 in memory
fld f17, 0(x2) # load 0xd5e0e1cd50011730 from memory into f17
fsub.d f4, f22, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0xe422b05b468e6e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x625744f2311bc514 # load x3 with value 0x625744f2311bc514
sd x3, 0(x2) # store 0x625744f2311bc514 in memory
fld f23, 0(x2) # load 0x625744f2311bc514 from memory into f23
li x3, 0x450ffa1b4258fd78 # load x3 with value 0x450ffa1b4258fd78
sd x3, 0(x2) # store 0x450ffa1b4258fd78 in memory
fld f30, 0(x2) # load 0x450ffa1b4258fd78 from memory into f30
fsub.d f26, f23, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0xd1df5b2536232a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91336c42bea74559 # load x3 with value 0x91336c42bea74559
sd x3, 0(x2) # store 0x91336c42bea74559 in memory
fld f24, 0(x2) # load 0x91336c42bea74559 from memory into f24
li x3, 0x1c8e1c70161b5b1e # load x3 with value 0x1c8e1c70161b5b1e
sd x3, 0(x2) # store 0x1c8e1c70161b5b1e in memory
fld f2, 0(x2) # load 0x1c8e1c70161b5b1e from memory into f2
fsub.d f14, f24, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x26, 0x3f54a623df274d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35e88586efef9292 # load x3 with value 0x35e88586efef9292
sd x3, 0(x2) # store 0x35e88586efef9292 in memory
fld f25, 0(x2) # load 0x35e88586efef9292 from memory into f25
li x3, 0x4d177590666fb80a # load x3 with value 0x4d177590666fb80a
sd x3, 0(x2) # store 0x4d177590666fb80a in memory
fld f22, 0(x2) # load 0x4d177590666fb80a from memory into f22
fsub.d f26, f25, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x18, 0x6faeff0197b0816b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd5f40deb01b5a34 # load x3 with value 0xfd5f40deb01b5a34
sd x3, 0(x2) # store 0xfd5f40deb01b5a34 in memory
fld f26, 0(x2) # load 0xfd5f40deb01b5a34 from memory into f26
li x3, 0x52c43d641d214b61 # load x3 with value 0x52c43d641d214b61
sd x3, 0(x2) # store 0x52c43d641d214b61 in memory
fld f13, 0(x2) # load 0x52c43d641d214b61 from memory into f13
fsub.d f18, f26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x30, 0xc89ea62211ab35eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b348317ab5f0105 # load x3 with value 0x8b348317ab5f0105
sd x3, 0(x2) # store 0x8b348317ab5f0105 in memory
fld f27, 0(x2) # load 0x8b348317ab5f0105 from memory into f27
li x3, 0x4d604fd2a739509a # load x3 with value 0x4d604fd2a739509a
sd x3, 0(x2) # store 0x4d604fd2a739509a in memory
fld f29, 0(x2) # load 0x4d604fd2a739509a from memory into f29
fsub.d f30, f27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x5, 0xf31a711f8c73b61d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3574883b1240c5b # load x3 with value 0xb3574883b1240c5b
sd x3, 0(x2) # store 0xb3574883b1240c5b in memory
fld f28, 0(x2) # load 0xb3574883b1240c5b from memory into f28
li x3, 0xdbfbb170961c6600 # load x3 with value 0xdbfbb170961c6600
sd x3, 0(x2) # store 0xdbfbb170961c6600 in memory
fld f6, 0(x2) # load 0xdbfbb170961c6600 from memory into f6
fsub.d f5, f28, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x13, 0x9b453f832203e1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb638c0501e328028 # load x3 with value 0xb638c0501e328028
sd x3, 0(x2) # store 0xb638c0501e328028 in memory
fld f29, 0(x2) # load 0xb638c0501e328028 from memory into f29
li x3, 0xcd2f3fefb4bd9c1f # load x3 with value 0xcd2f3fefb4bd9c1f
sd x3, 0(x2) # store 0xcd2f3fefb4bd9c1f in memory
fld f17, 0(x2) # load 0xcd2f3fefb4bd9c1f from memory into f17
fsub.d f13, f29, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x0580b9979cb9fc87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfa8b6a888bd287f # load x3 with value 0xdfa8b6a888bd287f
sd x3, 0(x2) # store 0xdfa8b6a888bd287f in memory
fld f30, 0(x2) # load 0xdfa8b6a888bd287f from memory into f30
li x3, 0x60a010e2f27164d0 # load x3 with value 0x60a010e2f27164d0
sd x3, 0(x2) # store 0x60a010e2f27164d0 in memory
fld f8, 0(x2) # load 0x60a010e2f27164d0 from memory into f8
fsub.d f19, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x6, 0x98c717ecb7b4c49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1192318562674275 # load x3 with value 0x1192318562674275
sd x3, 0(x2) # store 0x1192318562674275 in memory
fld f31, 0(x2) # load 0x1192318562674275 from memory into f31
li x3, 0x40cda460dbf012d0 # load x3 with value 0x40cda460dbf012d0
sd x3, 0(x2) # store 0x40cda460dbf012d0 in memory
fld f19, 0(x2) # load 0x40cda460dbf012d0 from memory into f19
fsub.d f6, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x20, 0xd15b8bf0f72d03f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9b5bd3f82d8bccc # load x3 with value 0xf9b5bd3f82d8bccc
sd x3, 0(x2) # store 0xf9b5bd3f82d8bccc in memory
fld f9, 0(x2) # load 0xf9b5bd3f82d8bccc from memory into f9
li x3, 0x33b8f1cf528d8639 # load x3 with value 0x33b8f1cf528d8639
sd x3, 0(x2) # store 0x33b8f1cf528d8639 in memory
fld f0, 0(x2) # load 0x33b8f1cf528d8639 from memory into f0
fsub.d f20, f9, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x6, 0x4a855a46ae3df9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0cf98b09f144f7e3 # load x3 with value 0x0cf98b09f144f7e3
sd x3, 0(x2) # store 0x0cf98b09f144f7e3 in memory
fld f13, 0(x2) # load 0x0cf98b09f144f7e3 from memory into f13
li x3, 0xddd0d4f6ee094846 # load x3 with value 0xddd0d4f6ee094846
sd x3, 0(x2) # store 0xddd0d4f6ee094846 in memory
fld f1, 0(x2) # load 0xddd0d4f6ee094846 from memory into f1
fsub.d f6, f13, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x17, 0x1ba3a89e88477f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87c8be0c3f0ba7c3 # load x3 with value 0x87c8be0c3f0ba7c3
sd x3, 0(x2) # store 0x87c8be0c3f0ba7c3 in memory
fld f8, 0(x2) # load 0x87c8be0c3f0ba7c3 from memory into f8
li x3, 0x326dddfa39dad619 # load x3 with value 0x326dddfa39dad619
sd x3, 0(x2) # store 0x326dddfa39dad619 in memory
fld f2, 0(x2) # load 0x326dddfa39dad619 from memory into f2
fsub.d f17, f8, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x29, 0x70711089107db8e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94bf42a7bb6d45fd # load x3 with value 0x94bf42a7bb6d45fd
sd x3, 0(x2) # store 0x94bf42a7bb6d45fd in memory
fld f9, 0(x2) # load 0x94bf42a7bb6d45fd from memory into f9
li x3, 0xe9dfe94536fac68b # load x3 with value 0xe9dfe94536fac68b
sd x3, 0(x2) # store 0xe9dfe94536fac68b in memory
fld f3, 0(x2) # load 0xe9dfe94536fac68b from memory into f3
fsub.d f29, f9, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x19, 0x382019ea01747354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e163194044d7623 # load x3 with value 0x4e163194044d7623
sd x3, 0(x2) # store 0x4e163194044d7623 in memory
fld f7, 0(x2) # load 0x4e163194044d7623 from memory into f7
li x3, 0x460ce569642ba05b # load x3 with value 0x460ce569642ba05b
sd x3, 0(x2) # store 0x460ce569642ba05b in memory
fld f4, 0(x2) # load 0x460ce569642ba05b from memory into f4
fsub.d f19, f7, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x4, 0x60cac35fe2b8dd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c0b5274e3a735eb # load x3 with value 0x0c0b5274e3a735eb
sd x3, 0(x2) # store 0x0c0b5274e3a735eb in memory
fld f19, 0(x2) # load 0x0c0b5274e3a735eb from memory into f19
li x3, 0xac0945dea7f671aa # load x3 with value 0xac0945dea7f671aa
sd x3, 0(x2) # store 0xac0945dea7f671aa in memory
fld f5, 0(x2) # load 0xac0945dea7f671aa from memory into f5
fsub.d f4, f19, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x28, 0x26aa0ecf2020ffac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3736173e0e60b4c # load x3 with value 0xf3736173e0e60b4c
sd x3, 0(x2) # store 0xf3736173e0e60b4c in memory
fld f16, 0(x2) # load 0xf3736173e0e60b4c from memory into f16
li x3, 0xab0d89d456a64b42 # load x3 with value 0xab0d89d456a64b42
sd x3, 0(x2) # store 0xab0d89d456a64b42 in memory
fld f6, 0(x2) # load 0xab0d89d456a64b42 from memory into f6
fsub.d f28, f16, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x11, 0x58c21be7dc6b17e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeb59f21f23727fd # load x3 with value 0xdeb59f21f23727fd
sd x3, 0(x2) # store 0xdeb59f21f23727fd in memory
fld f4, 0(x2) # load 0xdeb59f21f23727fd from memory into f4
li x3, 0x240acd96d95ec7ab # load x3 with value 0x240acd96d95ec7ab
sd x3, 0(x2) # store 0x240acd96d95ec7ab in memory
fld f7, 0(x2) # load 0x240acd96d95ec7ab from memory into f7
fsub.d f11, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x26, 0xe3aca07204121966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10fb1df6cbccf70e # load x3 with value 0x10fb1df6cbccf70e
sd x3, 0(x2) # store 0x10fb1df6cbccf70e in memory
fld f12, 0(x2) # load 0x10fb1df6cbccf70e from memory into f12
li x3, 0xb69e8c61c9243fad # load x3 with value 0xb69e8c61c9243fad
sd x3, 0(x2) # store 0xb69e8c61c9243fad in memory
fld f8, 0(x2) # load 0xb69e8c61c9243fad from memory into f8
fsub.d f26, f12, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x4, 0x97affa92cdbf49a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62ff83510433e3ed # load x3 with value 0x62ff83510433e3ed
sd x3, 0(x2) # store 0x62ff83510433e3ed in memory
fld f6, 0(x2) # load 0x62ff83510433e3ed from memory into f6
li x3, 0x98096b26eb593f7b # load x3 with value 0x98096b26eb593f7b
sd x3, 0(x2) # store 0x98096b26eb593f7b in memory
fld f9, 0(x2) # load 0x98096b26eb593f7b from memory into f9
fsub.d f4, f6, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x20, 0x29389fe8645998df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40e9d73b06ad46cc # load x3 with value 0x40e9d73b06ad46cc
sd x3, 0(x2) # store 0x40e9d73b06ad46cc in memory
fld f1, 0(x2) # load 0x40e9d73b06ad46cc from memory into f1
li x3, 0x31f9fa4ddbd30d5c # load x3 with value 0x31f9fa4ddbd30d5c
sd x3, 0(x2) # store 0x31f9fa4ddbd30d5c in memory
fld f10, 0(x2) # load 0x31f9fa4ddbd30d5c from memory into f10
fsub.d f20, f1, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x1, 0x6aaf58b9622a0310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15984efea08ea528 # load x3 with value 0x15984efea08ea528
sd x3, 0(x2) # store 0x15984efea08ea528 in memory
fld f17, 0(x2) # load 0x15984efea08ea528 from memory into f17
li x3, 0x6dc7fc2ef0b91d2e # load x3 with value 0x6dc7fc2ef0b91d2e
sd x3, 0(x2) # store 0x6dc7fc2ef0b91d2e in memory
fld f11, 0(x2) # load 0x6dc7fc2ef0b91d2e from memory into f11
fsub.d f1, f17, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x17, 0x66e38ad81ef82b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd55e39ddb05948e # load x3 with value 0xdd55e39ddb05948e
sd x3, 0(x2) # store 0xdd55e39ddb05948e in memory
fld f2, 0(x2) # load 0xdd55e39ddb05948e from memory into f2
li x3, 0x65cdc7130b33ec6d # load x3 with value 0x65cdc7130b33ec6d
sd x3, 0(x2) # store 0x65cdc7130b33ec6d in memory
fld f12, 0(x2) # load 0x65cdc7130b33ec6d from memory into f12
fsub.d f17, f2, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x15, 0x9f50b3f75fd28d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7476075f35f311b7 # load x3 with value 0x7476075f35f311b7
sd x3, 0(x2) # store 0x7476075f35f311b7 in memory
fld f2, 0(x2) # load 0x7476075f35f311b7 from memory into f2
li x3, 0xfd7265868a0d6f27 # load x3 with value 0xfd7265868a0d6f27
sd x3, 0(x2) # store 0xfd7265868a0d6f27 in memory
fld f13, 0(x2) # load 0xfd7265868a0d6f27 from memory into f13
fsub.d f15, f2, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x1, 0x1b83fd20f6cbe223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa44261d1e843b933 # load x3 with value 0xa44261d1e843b933
sd x3, 0(x2) # store 0xa44261d1e843b933 in memory
fld f9, 0(x2) # load 0xa44261d1e843b933 from memory into f9
li x3, 0x97c3d07f02b94a1e # load x3 with value 0x97c3d07f02b94a1e
sd x3, 0(x2) # store 0x97c3d07f02b94a1e in memory
fld f14, 0(x2) # load 0x97c3d07f02b94a1e from memory into f14
fsub.d f1, f9, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x25, 0x3b7f3da5eb4d151b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ccf73fb4e2fc3c1 # load x3 with value 0x7ccf73fb4e2fc3c1
sd x3, 0(x2) # store 0x7ccf73fb4e2fc3c1 in memory
fld f30, 0(x2) # load 0x7ccf73fb4e2fc3c1 from memory into f30
li x3, 0x7bb2cc07499c64b4 # load x3 with value 0x7bb2cc07499c64b4
sd x3, 0(x2) # store 0x7bb2cc07499c64b4 in memory
fld f15, 0(x2) # load 0x7bb2cc07499c64b4 from memory into f15
fsub.d f25, f30, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x22, 0x92aa9cb20f5e745e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe41d75de07dfd45 # load x3 with value 0xfe41d75de07dfd45
sd x3, 0(x2) # store 0xfe41d75de07dfd45 in memory
fld f27, 0(x2) # load 0xfe41d75de07dfd45 from memory into f27
li x3, 0xd9c49c1b51b504ab # load x3 with value 0xd9c49c1b51b504ab
sd x3, 0(x2) # store 0xd9c49c1b51b504ab in memory
fld f16, 0(x2) # load 0xd9c49c1b51b504ab from memory into f16
fsub.d f22, f27, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x22, 0xc74f2ce636237470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6c32a7b3f7e6b26 # load x3 with value 0xd6c32a7b3f7e6b26
sd x3, 0(x2) # store 0xd6c32a7b3f7e6b26 in memory
fld f28, 0(x2) # load 0xd6c32a7b3f7e6b26 from memory into f28
li x3, 0x00d6007211c562eb # load x3 with value 0x00d6007211c562eb
sd x3, 0(x2) # store 0x00d6007211c562eb in memory
fld f17, 0(x2) # load 0x00d6007211c562eb from memory into f17
fsub.d f22, f28, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x12, 0xf2c1fa77ba9dc392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x950f1548228e5760 # load x3 with value 0x950f1548228e5760
sd x3, 0(x2) # store 0x950f1548228e5760 in memory
fld f24, 0(x2) # load 0x950f1548228e5760 from memory into f24
li x3, 0x9479b281ac885057 # load x3 with value 0x9479b281ac885057
sd x3, 0(x2) # store 0x9479b281ac885057 in memory
fld f18, 0(x2) # load 0x9479b281ac885057 from memory into f18
fsub.d f12, f24, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x20, 0x89a361a229b2b40e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe74bb8925457829f # load x3 with value 0xe74bb8925457829f
sd x3, 0(x2) # store 0xe74bb8925457829f in memory
fld f13, 0(x2) # load 0xe74bb8925457829f from memory into f13
li x3, 0xa4a31d43901b995d # load x3 with value 0xa4a31d43901b995d
sd x3, 0(x2) # store 0xa4a31d43901b995d in memory
fld f19, 0(x2) # load 0xa4a31d43901b995d from memory into f19
fsub.d f20, f13, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x4, 0x710bba3af4eebdf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5272617db1b466c8 # load x3 with value 0x5272617db1b466c8
sd x3, 0(x2) # store 0x5272617db1b466c8 in memory
fld f25, 0(x2) # load 0x5272617db1b466c8 from memory into f25
li x3, 0xe2043a383be4157d # load x3 with value 0xe2043a383be4157d
sd x3, 0(x2) # store 0xe2043a383be4157d in memory
fld f20, 0(x2) # load 0xe2043a383be4157d from memory into f20
fsub.d f4, f25, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x26, 0x6b57b8aa94d1309f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd489199d9452d664 # load x3 with value 0xd489199d9452d664
sd x3, 0(x2) # store 0xd489199d9452d664 in memory
fld f2, 0(x2) # load 0xd489199d9452d664 from memory into f2
li x3, 0x8cf7886fce263377 # load x3 with value 0x8cf7886fce263377
sd x3, 0(x2) # store 0x8cf7886fce263377 in memory
fld f21, 0(x2) # load 0x8cf7886fce263377 from memory into f21
fsub.d f26, f2, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x14, 0x209581ab2c5e6273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6573ee5fdd88be82 # load x3 with value 0x6573ee5fdd88be82
sd x3, 0(x2) # store 0x6573ee5fdd88be82 in memory
fld f3, 0(x2) # load 0x6573ee5fdd88be82 from memory into f3
li x3, 0x5aec6b2da6829fba # load x3 with value 0x5aec6b2da6829fba
sd x3, 0(x2) # store 0x5aec6b2da6829fba in memory
fld f22, 0(x2) # load 0x5aec6b2da6829fba from memory into f22
fsub.d f14, f3, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x19, 0x799575b0b57af60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc14e117a9b68f33e # load x3 with value 0xc14e117a9b68f33e
sd x3, 0(x2) # store 0xc14e117a9b68f33e in memory
fld f5, 0(x2) # load 0xc14e117a9b68f33e from memory into f5
li x3, 0x48ddbd933997aa6d # load x3 with value 0x48ddbd933997aa6d
sd x3, 0(x2) # store 0x48ddbd933997aa6d in memory
fld f23, 0(x2) # load 0x48ddbd933997aa6d from memory into f23
fsub.d f19, f5, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x6, 0x6230ca80ac8d5323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaeb4e874a48bed8a # load x3 with value 0xaeb4e874a48bed8a
sd x3, 0(x2) # store 0xaeb4e874a48bed8a in memory
fld f13, 0(x2) # load 0xaeb4e874a48bed8a from memory into f13
li x3, 0x739561d284526d2e # load x3 with value 0x739561d284526d2e
sd x3, 0(x2) # store 0x739561d284526d2e in memory
fld f24, 0(x2) # load 0x739561d284526d2e from memory into f24
fsub.d f6, f13, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x13, 0x7f4e3fb070816d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36d03216b31fa216 # load x3 with value 0x36d03216b31fa216
sd x3, 0(x2) # store 0x36d03216b31fa216 in memory
fld f5, 0(x2) # load 0x36d03216b31fa216 from memory into f5
li x3, 0x749e1c37442cd168 # load x3 with value 0x749e1c37442cd168
sd x3, 0(x2) # store 0x749e1c37442cd168 in memory
fld f25, 0(x2) # load 0x749e1c37442cd168 from memory into f25
fsub.d f13, f5, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x28, 0xb05e9bd0d2bd723e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6971c662428fc524 # load x3 with value 0x6971c662428fc524
sd x3, 0(x2) # store 0x6971c662428fc524 in memory
fld f25, 0(x2) # load 0x6971c662428fc524 from memory into f25
li x3, 0xd77940c3dec663cb # load x3 with value 0xd77940c3dec663cb
sd x3, 0(x2) # store 0xd77940c3dec663cb in memory
fld f26, 0(x2) # load 0xd77940c3dec663cb from memory into f26
fsub.d f28, f25, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x3, 0x528ae7fa7e92aff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5f21a381a618e5a # load x3 with value 0xd5f21a381a618e5a
sd x3, 0(x2) # store 0xd5f21a381a618e5a in memory
fld f28, 0(x2) # load 0xd5f21a381a618e5a from memory into f28
li x3, 0x9a651194749d15ec # load x3 with value 0x9a651194749d15ec
sd x3, 0(x2) # store 0x9a651194749d15ec in memory
fld f27, 0(x2) # load 0x9a651194749d15ec from memory into f27
fsub.d f3, f28, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x11, 0xfc9b901adfea1f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6628fba02bf47d79 # load x3 with value 0x6628fba02bf47d79
sd x3, 0(x2) # store 0x6628fba02bf47d79 in memory
fld f17, 0(x2) # load 0x6628fba02bf47d79 from memory into f17
li x3, 0x0a28acbeb442d513 # load x3 with value 0x0a28acbeb442d513
sd x3, 0(x2) # store 0x0a28acbeb442d513 in memory
fld f28, 0(x2) # load 0x0a28acbeb442d513 from memory into f28
fsub.d f11, f17, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x13, 0xff471f12b447e154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cf860af64fd686e # load x3 with value 0x9cf860af64fd686e
sd x3, 0(x2) # store 0x9cf860af64fd686e in memory
fld f14, 0(x2) # load 0x9cf860af64fd686e from memory into f14
li x3, 0xf6c634c604c428ec # load x3 with value 0xf6c634c604c428ec
sd x3, 0(x2) # store 0xf6c634c604c428ec in memory
fld f29, 0(x2) # load 0xf6c634c604c428ec from memory into f29
fsub.d f13, f14, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x21, 0x1ada8aecdef0f110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43936cd58a4f2d04 # load x3 with value 0x43936cd58a4f2d04
sd x3, 0(x2) # store 0x43936cd58a4f2d04 in memory
fld f1, 0(x2) # load 0x43936cd58a4f2d04 from memory into f1
li x3, 0xbe590f4878e4b6d7 # load x3 with value 0xbe590f4878e4b6d7
sd x3, 0(x2) # store 0xbe590f4878e4b6d7 in memory
fld f30, 0(x2) # load 0xbe590f4878e4b6d7 from memory into f30
fsub.d f21, f1, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x21, 0x0566ae498043ea2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e92dac1adaa26a5 # load x3 with value 0x3e92dac1adaa26a5
sd x3, 0(x2) # store 0x3e92dac1adaa26a5 in memory
fld f29, 0(x2) # load 0x3e92dac1adaa26a5 from memory into f29
li x3, 0xfbf2a4669ec74f1d # load x3 with value 0xfbf2a4669ec74f1d
sd x3, 0(x2) # store 0xfbf2a4669ec74f1d in memory
fld f31, 0(x2) # load 0xfbf2a4669ec74f1d from memory into f31
fsub.d f21, f29, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
