///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-fminm.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.980219
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
fminm.d f29, f15, f23 # perform first operation
fminm.d f28, f29, f11 # perform second operation

# Testcase cmp_gpr_hazard raw test
fminm.d f28, f10, f7 # perform first operation
fminm.d f27, f15, f28 # perform second operation

# Testcase cmp_gpr_hazard waw test
fminm.d f30, f11, f15 # perform first operation
fminm.d f30, f2, f18 # perform second operation

# Testcase cmp_gpr_hazard waw test
fminm.d f9, f21, f28 # perform first operation
fminm.d f9, f28, f8 # perform second operation

# Testcase cmp_gpr_hazard war test
fminm.d f6, f8, f17 # perform first operation
fminm.d f8, f26, f24 # perform second operation

# Testcase cmp_gpr_hazard war test
fminm.d f25, f4, f30 # perform first operation
fminm.d f30, f26, f7 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x3874ba2c17d2d6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2129fb8b27da9ddc # load x3 with value 0x2129fb8b27da9ddc
sd x3, 0(x2) # store 0x2129fb8b27da9ddc in memory
fld f0, 0(x2) # load 0x2129fb8b27da9ddc from memory into f0
li x3, 0xd97fbd855e0eeae0 # load x3 with value 0xd97fbd855e0eeae0
sd x3, 0(x2) # store 0xd97fbd855e0eeae0 in memory
fld f31, 0(x2) # load 0xd97fbd855e0eeae0 from memory into f31
fminm.d f0, f0, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x989a55cb7ac79e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa478bdf5f4a17084 # load x3 with value 0xa478bdf5f4a17084
sd x3, 0(x2) # store 0xa478bdf5f4a17084 in memory
fld f1, 0(x2) # load 0xa478bdf5f4a17084 from memory into f1
li x3, 0x967deadfccda51af # load x3 with value 0x967deadfccda51af
sd x3, 0(x2) # store 0x967deadfccda51af in memory
fld f15, 0(x2) # load 0x967deadfccda51af from memory into f15
fminm.d f1, f1, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x181814cfd72c887e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05ece0ae6817706a # load x3 with value 0x05ece0ae6817706a
sd x3, 0(x2) # store 0x05ece0ae6817706a in memory
fld f2, 0(x2) # load 0x05ece0ae6817706a from memory into f2
li x3, 0x8ebd975b4a9364e3 # load x3 with value 0x8ebd975b4a9364e3
sd x3, 0(x2) # store 0x8ebd975b4a9364e3 in memory
fld f10, 0(x2) # load 0x8ebd975b4a9364e3 from memory into f10
fminm.d f2, f2, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x43c981190d16e8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f2e7c5df3951fc9 # load x3 with value 0x1f2e7c5df3951fc9
sd x3, 0(x2) # store 0x1f2e7c5df3951fc9 in memory
fld f3, 0(x2) # load 0x1f2e7c5df3951fc9 from memory into f3
li x3, 0x5e7bf7a70e347bba # load x3 with value 0x5e7bf7a70e347bba
sd x3, 0(x2) # store 0x5e7bf7a70e347bba in memory
fld f5, 0(x2) # load 0x5e7bf7a70e347bba from memory into f5
fminm.d f3, f3, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x546fc195db90bda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeef02a1993d10a3 # load x3 with value 0xeeef02a1993d10a3
sd x3, 0(x2) # store 0xeeef02a1993d10a3 in memory
fld f4, 0(x2) # load 0xeeef02a1993d10a3 from memory into f4
li x3, 0x369cf8fb9b40150c # load x3 with value 0x369cf8fb9b40150c
sd x3, 0(x2) # store 0x369cf8fb9b40150c in memory
fld f31, 0(x2) # load 0x369cf8fb9b40150c from memory into f31
fminm.d f4, f4, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xc7f5f1982a313883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c2e4c8986698fbe # load x3 with value 0x5c2e4c8986698fbe
sd x3, 0(x2) # store 0x5c2e4c8986698fbe in memory
fld f5, 0(x2) # load 0x5c2e4c8986698fbe from memory into f5
li x3, 0xe362e35e55f8410c # load x3 with value 0xe362e35e55f8410c
sd x3, 0(x2) # store 0xe362e35e55f8410c in memory
fld f9, 0(x2) # load 0xe362e35e55f8410c from memory into f9
fminm.d f5, f5, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x50350ae6d65dfba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8ba5b06cfb946a8 # load x3 with value 0xd8ba5b06cfb946a8
sd x3, 0(x2) # store 0xd8ba5b06cfb946a8 in memory
fld f6, 0(x2) # load 0xd8ba5b06cfb946a8 from memory into f6
li x3, 0xfbae0eabf58fa22f # load x3 with value 0xfbae0eabf58fa22f
sd x3, 0(x2) # store 0xfbae0eabf58fa22f in memory
fld f13, 0(x2) # load 0xfbae0eabf58fa22f from memory into f13
fminm.d f6, f6, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xf08be67881e57d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa88fd0a78a041f0a # load x3 with value 0xa88fd0a78a041f0a
sd x3, 0(x2) # store 0xa88fd0a78a041f0a in memory
fld f7, 0(x2) # load 0xa88fd0a78a041f0a from memory into f7
li x3, 0xaeb43a8d620668de # load x3 with value 0xaeb43a8d620668de
sd x3, 0(x2) # store 0xaeb43a8d620668de in memory
fld f24, 0(x2) # load 0xaeb43a8d620668de from memory into f24
fminm.d f7, f7, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x846d97a404a8fa1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa01f0de3a82d6bab # load x3 with value 0xa01f0de3a82d6bab
sd x3, 0(x2) # store 0xa01f0de3a82d6bab in memory
fld f8, 0(x2) # load 0xa01f0de3a82d6bab from memory into f8
li x3, 0xdd04766126840554 # load x3 with value 0xdd04766126840554
sd x3, 0(x2) # store 0xdd04766126840554 in memory
fld f30, 0(x2) # load 0xdd04766126840554 from memory into f30
fminm.d f8, f8, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x1862eaf9c8313c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa72e340ce391b4ab # load x3 with value 0xa72e340ce391b4ab
sd x3, 0(x2) # store 0xa72e340ce391b4ab in memory
fld f9, 0(x2) # load 0xa72e340ce391b4ab from memory into f9
li x3, 0x6f3fbe4acdc9fc40 # load x3 with value 0x6f3fbe4acdc9fc40
sd x3, 0(x2) # store 0x6f3fbe4acdc9fc40 in memory
fld f9, 0(x2) # load 0x6f3fbe4acdc9fc40 from memory into f9
fminm.d f9, f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xc4844f843c9fe1fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26b61f43be751865 # load x3 with value 0x26b61f43be751865
sd x3, 0(x2) # store 0x26b61f43be751865 in memory
fld f10, 0(x2) # load 0x26b61f43be751865 from memory into f10
li x3, 0x068e1dbcb233ed24 # load x3 with value 0x068e1dbcb233ed24
sd x3, 0(x2) # store 0x068e1dbcb233ed24 in memory
fld f19, 0(x2) # load 0x068e1dbcb233ed24 from memory into f19
fminm.d f10, f10, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xf1283455c92cc20e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75b73397d5ff35fd # load x3 with value 0x75b73397d5ff35fd
sd x3, 0(x2) # store 0x75b73397d5ff35fd in memory
fld f11, 0(x2) # load 0x75b73397d5ff35fd from memory into f11
li x3, 0xc7fb9a43632b1b35 # load x3 with value 0xc7fb9a43632b1b35
sd x3, 0(x2) # store 0xc7fb9a43632b1b35 in memory
fld f22, 0(x2) # load 0xc7fb9a43632b1b35 from memory into f22
fminm.d f11, f11, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x36fc55ed3e48211b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95d0daeb8c583448 # load x3 with value 0x95d0daeb8c583448
sd x3, 0(x2) # store 0x95d0daeb8c583448 in memory
fld f12, 0(x2) # load 0x95d0daeb8c583448 from memory into f12
li x3, 0xc2fddf6ccf4915ab # load x3 with value 0xc2fddf6ccf4915ab
sd x3, 0(x2) # store 0xc2fddf6ccf4915ab in memory
fld f30, 0(x2) # load 0xc2fddf6ccf4915ab from memory into f30
fminm.d f12, f12, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x61a5c98f6a2c16bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc03b5e1a7bb24557 # load x3 with value 0xc03b5e1a7bb24557
sd x3, 0(x2) # store 0xc03b5e1a7bb24557 in memory
fld f13, 0(x2) # load 0xc03b5e1a7bb24557 from memory into f13
li x3, 0x7f9ee5785213a70b # load x3 with value 0x7f9ee5785213a70b
sd x3, 0(x2) # store 0x7f9ee5785213a70b in memory
fld f28, 0(x2) # load 0x7f9ee5785213a70b from memory into f28
fminm.d f13, f13, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x9c116c784198965f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc05a1db78982760d # load x3 with value 0xc05a1db78982760d
sd x3, 0(x2) # store 0xc05a1db78982760d in memory
fld f14, 0(x2) # load 0xc05a1db78982760d from memory into f14
li x3, 0xba82f619ce73b007 # load x3 with value 0xba82f619ce73b007
sd x3, 0(x2) # store 0xba82f619ce73b007 in memory
fld f29, 0(x2) # load 0xba82f619ce73b007 from memory into f29
fminm.d f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xc84d8924cf3d4b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb29b0e6f5ee5b17 # load x3 with value 0xdb29b0e6f5ee5b17
sd x3, 0(x2) # store 0xdb29b0e6f5ee5b17 in memory
fld f15, 0(x2) # load 0xdb29b0e6f5ee5b17 from memory into f15
li x3, 0x06b814d7cd475bef # load x3 with value 0x06b814d7cd475bef
sd x3, 0(x2) # store 0x06b814d7cd475bef in memory
fld f13, 0(x2) # load 0x06b814d7cd475bef from memory into f13
fminm.d f15, f15, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x12c6d50f490ad0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b2e9891264eda16 # load x3 with value 0x2b2e9891264eda16
sd x3, 0(x2) # store 0x2b2e9891264eda16 in memory
fld f16, 0(x2) # load 0x2b2e9891264eda16 from memory into f16
li x3, 0xb94ff7ad7dd3376c # load x3 with value 0xb94ff7ad7dd3376c
sd x3, 0(x2) # store 0xb94ff7ad7dd3376c in memory
fld f4, 0(x2) # load 0xb94ff7ad7dd3376c from memory into f4
fminm.d f16, f16, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x780bc885df314750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c6ae85a35e5875b # load x3 with value 0x1c6ae85a35e5875b
sd x3, 0(x2) # store 0x1c6ae85a35e5875b in memory
fld f17, 0(x2) # load 0x1c6ae85a35e5875b from memory into f17
li x3, 0xc728e19fd204704f # load x3 with value 0xc728e19fd204704f
sd x3, 0(x2) # store 0xc728e19fd204704f in memory
fld f12, 0(x2) # load 0xc728e19fd204704f from memory into f12
fminm.d f17, f17, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x99db9ce04b53d6da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x551ec16eae1c0d86 # load x3 with value 0x551ec16eae1c0d86
sd x3, 0(x2) # store 0x551ec16eae1c0d86 in memory
fld f18, 0(x2) # load 0x551ec16eae1c0d86 from memory into f18
li x3, 0xebe4bcff057dc0d0 # load x3 with value 0xebe4bcff057dc0d0
sd x3, 0(x2) # store 0xebe4bcff057dc0d0 in memory
fld f28, 0(x2) # load 0xebe4bcff057dc0d0 from memory into f28
fminm.d f18, f18, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x91424019a783f1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3b002d5bad9bcc5 # load x3 with value 0xe3b002d5bad9bcc5
sd x3, 0(x2) # store 0xe3b002d5bad9bcc5 in memory
fld f19, 0(x2) # load 0xe3b002d5bad9bcc5 from memory into f19
li x3, 0xf585f186493bca2f # load x3 with value 0xf585f186493bca2f
sd x3, 0(x2) # store 0xf585f186493bca2f in memory
fld f6, 0(x2) # load 0xf585f186493bca2f from memory into f6
fminm.d f19, f19, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xcb60327e1a3dc7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5797e736620f67d1 # load x3 with value 0x5797e736620f67d1
sd x3, 0(x2) # store 0x5797e736620f67d1 in memory
fld f20, 0(x2) # load 0x5797e736620f67d1 from memory into f20
li x3, 0xc9aaf358cee04470 # load x3 with value 0xc9aaf358cee04470
sd x3, 0(x2) # store 0xc9aaf358cee04470 in memory
fld f7, 0(x2) # load 0xc9aaf358cee04470 from memory into f7
fminm.d f20, f20, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x7626cb02736fe029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a61f7fd1bf6b846 # load x3 with value 0x1a61f7fd1bf6b846
sd x3, 0(x2) # store 0x1a61f7fd1bf6b846 in memory
fld f21, 0(x2) # load 0x1a61f7fd1bf6b846 from memory into f21
li x3, 0x4d7b90a35dd351d9 # load x3 with value 0x4d7b90a35dd351d9
sd x3, 0(x2) # store 0x4d7b90a35dd351d9 in memory
fld f15, 0(x2) # load 0x4d7b90a35dd351d9 from memory into f15
fminm.d f21, f21, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x5533e3d180197f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x224e265dfc26907d # load x3 with value 0x224e265dfc26907d
sd x3, 0(x2) # store 0x224e265dfc26907d in memory
fld f22, 0(x2) # load 0x224e265dfc26907d from memory into f22
li x3, 0xee1dbe4ea59a42a1 # load x3 with value 0xee1dbe4ea59a42a1
sd x3, 0(x2) # store 0xee1dbe4ea59a42a1 in memory
fld f2, 0(x2) # load 0xee1dbe4ea59a42a1 from memory into f2
fminm.d f22, f22, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xe5a7b4e2883a4a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8a0fb98fcc4605d # load x3 with value 0xf8a0fb98fcc4605d
sd x3, 0(x2) # store 0xf8a0fb98fcc4605d in memory
fld f23, 0(x2) # load 0xf8a0fb98fcc4605d from memory into f23
li x3, 0xf572d3460c1901d2 # load x3 with value 0xf572d3460c1901d2
sd x3, 0(x2) # store 0xf572d3460c1901d2 in memory
fld f13, 0(x2) # load 0xf572d3460c1901d2 from memory into f13
fminm.d f23, f23, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x60f277051b97d267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6271daae05e098e # load x3 with value 0xf6271daae05e098e
sd x3, 0(x2) # store 0xf6271daae05e098e in memory
fld f24, 0(x2) # load 0xf6271daae05e098e from memory into f24
li x3, 0x2a3ae445562215d7 # load x3 with value 0x2a3ae445562215d7
sd x3, 0(x2) # store 0x2a3ae445562215d7 in memory
fld f4, 0(x2) # load 0x2a3ae445562215d7 from memory into f4
fminm.d f24, f24, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x2de3d5dade95c37b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6edde289a6b74b3f # load x3 with value 0x6edde289a6b74b3f
sd x3, 0(x2) # store 0x6edde289a6b74b3f in memory
fld f25, 0(x2) # load 0x6edde289a6b74b3f from memory into f25
li x3, 0x127266965b40fab1 # load x3 with value 0x127266965b40fab1
sd x3, 0(x2) # store 0x127266965b40fab1 in memory
fld f3, 0(x2) # load 0x127266965b40fab1 from memory into f3
fminm.d f25, f25, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xad2ca42359bf8336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdee19931cfbf22a # load x3 with value 0xcdee19931cfbf22a
sd x3, 0(x2) # store 0xcdee19931cfbf22a in memory
fld f26, 0(x2) # load 0xcdee19931cfbf22a from memory into f26
li x3, 0x9516c98da97fb157 # load x3 with value 0x9516c98da97fb157
sd x3, 0(x2) # store 0x9516c98da97fb157 in memory
fld f2, 0(x2) # load 0x9516c98da97fb157 from memory into f2
fminm.d f26, f26, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x0e4e5fd065c1efba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57823afda4e7bb3b # load x3 with value 0x57823afda4e7bb3b
sd x3, 0(x2) # store 0x57823afda4e7bb3b in memory
fld f27, 0(x2) # load 0x57823afda4e7bb3b from memory into f27
li x3, 0x1618d6e62a730edf # load x3 with value 0x1618d6e62a730edf
sd x3, 0(x2) # store 0x1618d6e62a730edf in memory
fld f25, 0(x2) # load 0x1618d6e62a730edf from memory into f25
fminm.d f27, f27, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xa966be592e2b31bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x797c6fdd66dcc758 # load x3 with value 0x797c6fdd66dcc758
sd x3, 0(x2) # store 0x797c6fdd66dcc758 in memory
fld f28, 0(x2) # load 0x797c6fdd66dcc758 from memory into f28
li x3, 0x75154ece0fde9374 # load x3 with value 0x75154ece0fde9374
sd x3, 0(x2) # store 0x75154ece0fde9374 in memory
fld f26, 0(x2) # load 0x75154ece0fde9374 from memory into f26
fminm.d f28, f28, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x85b94913c83164f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85dc241661894536 # load x3 with value 0x85dc241661894536
sd x3, 0(x2) # store 0x85dc241661894536 in memory
fld f29, 0(x2) # load 0x85dc241661894536 from memory into f29
li x3, 0x32d17177406ee74e # load x3 with value 0x32d17177406ee74e
sd x3, 0(x2) # store 0x32d17177406ee74e in memory
fld f8, 0(x2) # load 0x32d17177406ee74e from memory into f8
fminm.d f29, f29, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x9a90c1545820b460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x710826960254f4ca # load x3 with value 0x710826960254f4ca
sd x3, 0(x2) # store 0x710826960254f4ca in memory
fld f30, 0(x2) # load 0x710826960254f4ca from memory into f30
li x3, 0x4e4ce0d2ea7e2993 # load x3 with value 0x4e4ce0d2ea7e2993
sd x3, 0(x2) # store 0x4e4ce0d2ea7e2993 in memory
fld f14, 0(x2) # load 0x4e4ce0d2ea7e2993 from memory into f14
fminm.d f30, f30, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x9bee2239fb78fb5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde1489b5e8453191 # load x3 with value 0xde1489b5e8453191
sd x3, 0(x2) # store 0xde1489b5e8453191 in memory
fld f31, 0(x2) # load 0xde1489b5e8453191 from memory into f31
li x3, 0x2b8ddf855adb1040 # load x3 with value 0x2b8ddf855adb1040
sd x3, 0(x2) # store 0x2b8ddf855adb1040 in memory
fld f28, 0(x2) # load 0x2b8ddf855adb1040 from memory into f28
fminm.d f31, f31, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x6ec498df9ec18cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1300eedeca01cedd # load x3 with value 0x1300eedeca01cedd
sd x3, 0(x2) # store 0x1300eedeca01cedd in memory
fld f25, 0(x2) # load 0x1300eedeca01cedd from memory into f25
li x3, 0x29a218538564aac8 # load x3 with value 0x29a218538564aac8
sd x3, 0(x2) # store 0x29a218538564aac8 in memory
fld f0, 0(x2) # load 0x29a218538564aac8 from memory into f0
fminm.d f0, f25, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x11a790a039bc71d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5df294b8d7d61b3a # load x3 with value 0x5df294b8d7d61b3a
sd x3, 0(x2) # store 0x5df294b8d7d61b3a in memory
fld f26, 0(x2) # load 0x5df294b8d7d61b3a from memory into f26
li x3, 0x73f342b962447ecb # load x3 with value 0x73f342b962447ecb
sd x3, 0(x2) # store 0x73f342b962447ecb in memory
fld f1, 0(x2) # load 0x73f342b962447ecb from memory into f1
fminm.d f1, f26, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x95da9f9e13eb02a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e813ad5ceb11a3e # load x3 with value 0x2e813ad5ceb11a3e
sd x3, 0(x2) # store 0x2e813ad5ceb11a3e in memory
fld f27, 0(x2) # load 0x2e813ad5ceb11a3e from memory into f27
li x3, 0x75a7090e22a6c398 # load x3 with value 0x75a7090e22a6c398
sd x3, 0(x2) # store 0x75a7090e22a6c398 in memory
fld f2, 0(x2) # load 0x75a7090e22a6c398 from memory into f2
fminm.d f2, f27, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x4f6d3860cb4ecfa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86cd8c047ece9550 # load x3 with value 0x86cd8c047ece9550
sd x3, 0(x2) # store 0x86cd8c047ece9550 in memory
fld f18, 0(x2) # load 0x86cd8c047ece9550 from memory into f18
li x3, 0x0c7dda9fee9e2aae # load x3 with value 0x0c7dda9fee9e2aae
sd x3, 0(x2) # store 0x0c7dda9fee9e2aae in memory
fld f3, 0(x2) # load 0x0c7dda9fee9e2aae from memory into f3
fminm.d f3, f18, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xb06b21cd04d29209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4c8de28c17a4c22 # load x3 with value 0xd4c8de28c17a4c22
sd x3, 0(x2) # store 0xd4c8de28c17a4c22 in memory
fld f9, 0(x2) # load 0xd4c8de28c17a4c22 from memory into f9
li x3, 0x98c7f16b37b5217e # load x3 with value 0x98c7f16b37b5217e
sd x3, 0(x2) # store 0x98c7f16b37b5217e in memory
fld f4, 0(x2) # load 0x98c7f16b37b5217e from memory into f4
fminm.d f4, f9, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x006a2f9c93dcfd3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3112229863b7f3 # load x3 with value 0xdb3112229863b7f3
sd x3, 0(x2) # store 0xdb3112229863b7f3 in memory
fld f3, 0(x2) # load 0xdb3112229863b7f3 from memory into f3
li x3, 0xa3ac61aa6a02008e # load x3 with value 0xa3ac61aa6a02008e
sd x3, 0(x2) # store 0xa3ac61aa6a02008e in memory
fld f5, 0(x2) # load 0xa3ac61aa6a02008e from memory into f5
fminm.d f5, f3, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x1cd0eb14f9b6ffdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe28352a5da2a0467 # load x3 with value 0xe28352a5da2a0467
sd x3, 0(x2) # store 0xe28352a5da2a0467 in memory
fld f20, 0(x2) # load 0xe28352a5da2a0467 from memory into f20
li x3, 0x7a35a68eb71a9479 # load x3 with value 0x7a35a68eb71a9479
sd x3, 0(x2) # store 0x7a35a68eb71a9479 in memory
fld f6, 0(x2) # load 0x7a35a68eb71a9479 from memory into f6
fminm.d f6, f20, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x5048c8271afc10fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaad8f902a1502e2e # load x3 with value 0xaad8f902a1502e2e
sd x3, 0(x2) # store 0xaad8f902a1502e2e in memory
fld f20, 0(x2) # load 0xaad8f902a1502e2e from memory into f20
li x3, 0x4081cd1fefa0fb42 # load x3 with value 0x4081cd1fefa0fb42
sd x3, 0(x2) # store 0x4081cd1fefa0fb42 in memory
fld f7, 0(x2) # load 0x4081cd1fefa0fb42 from memory into f7
fminm.d f7, f20, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x97607d8bb027fc2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86a3688bdc806ac1 # load x3 with value 0x86a3688bdc806ac1
sd x3, 0(x2) # store 0x86a3688bdc806ac1 in memory
fld f15, 0(x2) # load 0x86a3688bdc806ac1 from memory into f15
li x3, 0x71b200f0bfbea729 # load x3 with value 0x71b200f0bfbea729
sd x3, 0(x2) # store 0x71b200f0bfbea729 in memory
fld f8, 0(x2) # load 0x71b200f0bfbea729 from memory into f8
fminm.d f8, f15, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x3dba31012d3e4c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16d6e5a36f856881 # load x3 with value 0x16d6e5a36f856881
sd x3, 0(x2) # store 0x16d6e5a36f856881 in memory
fld f2, 0(x2) # load 0x16d6e5a36f856881 from memory into f2
li x3, 0x8bc39378cf6678a2 # load x3 with value 0x8bc39378cf6678a2
sd x3, 0(x2) # store 0x8bc39378cf6678a2 in memory
fld f9, 0(x2) # load 0x8bc39378cf6678a2 from memory into f9
fminm.d f9, f2, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x78bddfa24e07d2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4340fbdd40a3a64b # load x3 with value 0x4340fbdd40a3a64b
sd x3, 0(x2) # store 0x4340fbdd40a3a64b in memory
fld f12, 0(x2) # load 0x4340fbdd40a3a64b from memory into f12
li x3, 0xdf2bba3eef839658 # load x3 with value 0xdf2bba3eef839658
sd x3, 0(x2) # store 0xdf2bba3eef839658 in memory
fld f10, 0(x2) # load 0xdf2bba3eef839658 from memory into f10
fminm.d f10, f12, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x79026c05d5d5fffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f9697eebd1f231d # load x3 with value 0x6f9697eebd1f231d
sd x3, 0(x2) # store 0x6f9697eebd1f231d in memory
fld f1, 0(x2) # load 0x6f9697eebd1f231d from memory into f1
li x3, 0xaefb2a7fab618044 # load x3 with value 0xaefb2a7fab618044
sd x3, 0(x2) # store 0xaefb2a7fab618044 in memory
fld f11, 0(x2) # load 0xaefb2a7fab618044 from memory into f11
fminm.d f11, f1, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xeebcda86b88f04e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe538b83c2e0f7aa4 # load x3 with value 0xe538b83c2e0f7aa4
sd x3, 0(x2) # store 0xe538b83c2e0f7aa4 in memory
fld f3, 0(x2) # load 0xe538b83c2e0f7aa4 from memory into f3
li x3, 0xe3e209851e6e2ef8 # load x3 with value 0xe3e209851e6e2ef8
sd x3, 0(x2) # store 0xe3e209851e6e2ef8 in memory
fld f12, 0(x2) # load 0xe3e209851e6e2ef8 from memory into f12
fminm.d f12, f3, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x1f81721666c61603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf5a0ccb03cd150d # load x3 with value 0xaf5a0ccb03cd150d
sd x3, 0(x2) # store 0xaf5a0ccb03cd150d in memory
fld f18, 0(x2) # load 0xaf5a0ccb03cd150d from memory into f18
li x3, 0x0e1b85159694beca # load x3 with value 0x0e1b85159694beca
sd x3, 0(x2) # store 0x0e1b85159694beca in memory
fld f13, 0(x2) # load 0x0e1b85159694beca from memory into f13
fminm.d f13, f18, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xc499a5dc4fe926ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7475403bfaf51560 # load x3 with value 0x7475403bfaf51560
sd x3, 0(x2) # store 0x7475403bfaf51560 in memory
fld f12, 0(x2) # load 0x7475403bfaf51560 from memory into f12
li x3, 0x81efe641fcd7a4c2 # load x3 with value 0x81efe641fcd7a4c2
sd x3, 0(x2) # store 0x81efe641fcd7a4c2 in memory
fld f14, 0(x2) # load 0x81efe641fcd7a4c2 from memory into f14
fminm.d f14, f12, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x3cefcc1dc957062b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2edb32b93f8fa7e3 # load x3 with value 0x2edb32b93f8fa7e3
sd x3, 0(x2) # store 0x2edb32b93f8fa7e3 in memory
fld f5, 0(x2) # load 0x2edb32b93f8fa7e3 from memory into f5
li x3, 0xf6c87f72937a9df7 # load x3 with value 0xf6c87f72937a9df7
sd x3, 0(x2) # store 0xf6c87f72937a9df7 in memory
fld f15, 0(x2) # load 0xf6c87f72937a9df7 from memory into f15
fminm.d f15, f5, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xc4a411b8275cbdf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8a4d93d5d0d7279 # load x3 with value 0xd8a4d93d5d0d7279
sd x3, 0(x2) # store 0xd8a4d93d5d0d7279 in memory
fld f4, 0(x2) # load 0xd8a4d93d5d0d7279 from memory into f4
li x3, 0xf9f2a81e7a09afbe # load x3 with value 0xf9f2a81e7a09afbe
sd x3, 0(x2) # store 0xf9f2a81e7a09afbe in memory
fld f16, 0(x2) # load 0xf9f2a81e7a09afbe from memory into f16
fminm.d f16, f4, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x8ba836f572a261d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fe8b2304bf41d6a # load x3 with value 0x2fe8b2304bf41d6a
sd x3, 0(x2) # store 0x2fe8b2304bf41d6a in memory
fld f4, 0(x2) # load 0x2fe8b2304bf41d6a from memory into f4
li x3, 0x828848324309e957 # load x3 with value 0x828848324309e957
sd x3, 0(x2) # store 0x828848324309e957 in memory
fld f17, 0(x2) # load 0x828848324309e957 from memory into f17
fminm.d f17, f4, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xb82b7ce4fe9010ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf82eb29f58056c31 # load x3 with value 0xf82eb29f58056c31
sd x3, 0(x2) # store 0xf82eb29f58056c31 in memory
fld f28, 0(x2) # load 0xf82eb29f58056c31 from memory into f28
li x3, 0x857c7f92504089cc # load x3 with value 0x857c7f92504089cc
sd x3, 0(x2) # store 0x857c7f92504089cc in memory
fld f18, 0(x2) # load 0x857c7f92504089cc from memory into f18
fminm.d f18, f28, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x4c8eac896f451bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c62a93785607769 # load x3 with value 0x4c62a93785607769
sd x3, 0(x2) # store 0x4c62a93785607769 in memory
fld f18, 0(x2) # load 0x4c62a93785607769 from memory into f18
li x3, 0x0da3274aaa3734c1 # load x3 with value 0x0da3274aaa3734c1
sd x3, 0(x2) # store 0x0da3274aaa3734c1 in memory
fld f19, 0(x2) # load 0x0da3274aaa3734c1 from memory into f19
fminm.d f19, f18, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x0c3b162193e1d9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8abcaa58b1f68297 # load x3 with value 0x8abcaa58b1f68297
sd x3, 0(x2) # store 0x8abcaa58b1f68297 in memory
fld f13, 0(x2) # load 0x8abcaa58b1f68297 from memory into f13
li x3, 0x3157c959bd5b00ca # load x3 with value 0x3157c959bd5b00ca
sd x3, 0(x2) # store 0x3157c959bd5b00ca in memory
fld f20, 0(x2) # load 0x3157c959bd5b00ca from memory into f20
fminm.d f20, f13, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x26f0d8fcb00c2153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2418c4dd1100331c # load x3 with value 0x2418c4dd1100331c
sd x3, 0(x2) # store 0x2418c4dd1100331c in memory
fld f13, 0(x2) # load 0x2418c4dd1100331c from memory into f13
li x3, 0xf0e933ae452c1cc7 # load x3 with value 0xf0e933ae452c1cc7
sd x3, 0(x2) # store 0xf0e933ae452c1cc7 in memory
fld f21, 0(x2) # load 0xf0e933ae452c1cc7 from memory into f21
fminm.d f21, f13, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x3558883b9165b5c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a9e098cd1bc50a8 # load x3 with value 0x2a9e098cd1bc50a8
sd x3, 0(x2) # store 0x2a9e098cd1bc50a8 in memory
fld f26, 0(x2) # load 0x2a9e098cd1bc50a8 from memory into f26
li x3, 0x2b2016253de0a518 # load x3 with value 0x2b2016253de0a518
sd x3, 0(x2) # store 0x2b2016253de0a518 in memory
fld f22, 0(x2) # load 0x2b2016253de0a518 from memory into f22
fminm.d f22, f26, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x87004df59b508dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1cfdd0bedc4cec3 # load x3 with value 0xb1cfdd0bedc4cec3
sd x3, 0(x2) # store 0xb1cfdd0bedc4cec3 in memory
fld f17, 0(x2) # load 0xb1cfdd0bedc4cec3 from memory into f17
li x3, 0x1c874b22b1978ea2 # load x3 with value 0x1c874b22b1978ea2
sd x3, 0(x2) # store 0x1c874b22b1978ea2 in memory
fld f23, 0(x2) # load 0x1c874b22b1978ea2 from memory into f23
fminm.d f23, f17, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xbc7a1277192f57ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9edeb7583fad0906 # load x3 with value 0x9edeb7583fad0906
sd x3, 0(x2) # store 0x9edeb7583fad0906 in memory
fld f25, 0(x2) # load 0x9edeb7583fad0906 from memory into f25
li x3, 0x42deec0181e94ee5 # load x3 with value 0x42deec0181e94ee5
sd x3, 0(x2) # store 0x42deec0181e94ee5 in memory
fld f24, 0(x2) # load 0x42deec0181e94ee5 from memory into f24
fminm.d f24, f25, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x7997a2885ed542c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdec057952ab5d36 # load x3 with value 0xbdec057952ab5d36
sd x3, 0(x2) # store 0xbdec057952ab5d36 in memory
fld f23, 0(x2) # load 0xbdec057952ab5d36 from memory into f23
li x3, 0xce7c6febc2ab037b # load x3 with value 0xce7c6febc2ab037b
sd x3, 0(x2) # store 0xce7c6febc2ab037b in memory
fld f25, 0(x2) # load 0xce7c6febc2ab037b from memory into f25
fminm.d f25, f23, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x2d3dfa906b956588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4fb464a993437c4 # load x3 with value 0xe4fb464a993437c4
sd x3, 0(x2) # store 0xe4fb464a993437c4 in memory
fld f4, 0(x2) # load 0xe4fb464a993437c4 from memory into f4
li x3, 0xfca846ee05d909ad # load x3 with value 0xfca846ee05d909ad
sd x3, 0(x2) # store 0xfca846ee05d909ad in memory
fld f26, 0(x2) # load 0xfca846ee05d909ad from memory into f26
fminm.d f26, f4, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xab6dd671980200b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56e312bc14b6f5e0 # load x3 with value 0x56e312bc14b6f5e0
sd x3, 0(x2) # store 0x56e312bc14b6f5e0 in memory
fld f11, 0(x2) # load 0x56e312bc14b6f5e0 from memory into f11
li x3, 0x78b5dc2136dc85cb # load x3 with value 0x78b5dc2136dc85cb
sd x3, 0(x2) # store 0x78b5dc2136dc85cb in memory
fld f27, 0(x2) # load 0x78b5dc2136dc85cb from memory into f27
fminm.d f27, f11, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x2d6367645324e78e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaf82e5ca9228bc5 # load x3 with value 0xfaf82e5ca9228bc5
sd x3, 0(x2) # store 0xfaf82e5ca9228bc5 in memory
fld f5, 0(x2) # load 0xfaf82e5ca9228bc5 from memory into f5
li x3, 0xa9b0cbc59153e281 # load x3 with value 0xa9b0cbc59153e281
sd x3, 0(x2) # store 0xa9b0cbc59153e281 in memory
fld f28, 0(x2) # load 0xa9b0cbc59153e281 from memory into f28
fminm.d f28, f5, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x9653b254eb82f858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9e1afb88b74cbef # load x3 with value 0xf9e1afb88b74cbef
sd x3, 0(x2) # store 0xf9e1afb88b74cbef in memory
fld f5, 0(x2) # load 0xf9e1afb88b74cbef from memory into f5
li x3, 0x3024d865695413e5 # load x3 with value 0x3024d865695413e5
sd x3, 0(x2) # store 0x3024d865695413e5 in memory
fld f29, 0(x2) # load 0x3024d865695413e5 from memory into f29
fminm.d f29, f5, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x24713f0b5eb7d104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7556ffba5c9e0867 # load x3 with value 0x7556ffba5c9e0867
sd x3, 0(x2) # store 0x7556ffba5c9e0867 in memory
fld f19, 0(x2) # load 0x7556ffba5c9e0867 from memory into f19
li x3, 0x1f4ce93ca2028b6a # load x3 with value 0x1f4ce93ca2028b6a
sd x3, 0(x2) # store 0x1f4ce93ca2028b6a in memory
fld f30, 0(x2) # load 0x1f4ce93ca2028b6a from memory into f30
fminm.d f30, f19, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x6ce42ad0f4729ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfeda2956818af9cf # load x3 with value 0xfeda2956818af9cf
sd x3, 0(x2) # store 0xfeda2956818af9cf in memory
fld f7, 0(x2) # load 0xfeda2956818af9cf from memory into f7
li x3, 0x95e120f91f11ccab # load x3 with value 0x95e120f91f11ccab
sd x3, 0(x2) # store 0x95e120f91f11ccab in memory
fld f31, 0(x2) # load 0x95e120f91f11ccab from memory into f31
fminm.d f31, f7, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x18, 0x3899798746aea079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0xc991ba401a499005 # load x3 with value 0xc991ba401a499005
sd x3, 0(x2) # store 0xc991ba401a499005 in memory
fld f10, 0(x2) # load 0xc991ba401a499005 from memory into f10
fminm.d f18, f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x29, 0xf1b1e28474fff5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x2aad5d465b02a52f # load x3 with value 0x2aad5d465b02a52f
sd x3, 0(x2) # store 0x2aad5d465b02a52f in memory
fld f31, 0(x2) # load 0x2aad5d465b02a52f from memory into f31
fminm.d f29, f6, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x19, 0x4ce2f1e961e814ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0x69648f7abd6579c1 # load x3 with value 0x69648f7abd6579c1
sd x3, 0(x2) # store 0x69648f7abd6579c1 in memory
fld f2, 0(x2) # load 0x69648f7abd6579c1 from memory into f2
fminm.d f19, f12, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x15, 0xf814972ed053583c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0xb66e7c16c475c4a9 # load x3 with value 0xb66e7c16c475c4a9
sd x3, 0(x2) # store 0xb66e7c16c475c4a9 in memory
fld f24, 0(x2) # load 0xb66e7c16c475c4a9 from memory into f24
fminm.d f15, f7, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x19, 0xb3b2cb1e1396ac4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
li x3, 0xe7b79cb0fe54c269 # load x3 with value 0xe7b79cb0fe54c269
sd x3, 0(x2) # store 0xe7b79cb0fe54c269 in memory
fld f10, 0(x2) # load 0xe7b79cb0fe54c269 from memory into f10
fminm.d f19, f17, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x4, 0x859af4cde6da2ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0xcf285f783ddc114f # load x3 with value 0xcf285f783ddc114f
sd x3, 0(x2) # store 0xcf285f783ddc114f in memory
fld f25, 0(x2) # load 0xcf285f783ddc114f from memory into f25
fminm.d f4, f15, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x12, 0x7b1af5866a464f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0xe23ec9683a7c2393 # load x3 with value 0xe23ec9683a7c2393
sd x3, 0(x2) # store 0xe23ec9683a7c2393 in memory
fld f22, 0(x2) # load 0xe23ec9683a7c2393 from memory into f22
fminm.d f12, f9, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x6, 0xadd0de1bae54e03b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
li x3, 0x5dca70bc8c9deda1 # load x3 with value 0x5dca70bc8c9deda1
sd x3, 0(x2) # store 0x5dca70bc8c9deda1 in memory
fld f11, 0(x2) # load 0x5dca70bc8c9deda1 from memory into f11
fminm.d f6, f26, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x16, 0xaac2ea072c587e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0xf013bd3d13b6d1af # load x3 with value 0xf013bd3d13b6d1af
sd x3, 0(x2) # store 0xf013bd3d13b6d1af in memory
fld f4, 0(x2) # load 0xf013bd3d13b6d1af from memory into f4
fminm.d f16, f20, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x20, 0xfba0ede6845029ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
li x3, 0x89b12ac8663b604a # load x3 with value 0x89b12ac8663b604a
sd x3, 0(x2) # store 0x89b12ac8663b604a in memory
fld f8, 0(x2) # load 0x89b12ac8663b604a from memory into f8
fminm.d f20, f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x10, 0xf4c409f36ac1fa48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0x6d63c260cfff1fbb # load x3 with value 0x6d63c260cfff1fbb
sd x3, 0(x2) # store 0x6d63c260cfff1fbb in memory
fld f3, 0(x2) # load 0x6d63c260cfff1fbb from memory into f3
fminm.d f10, f20, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x16, 0x1262f20e4f204365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x1e31afaae6556867 # load x3 with value 0x1e31afaae6556867
sd x3, 0(x2) # store 0x1e31afaae6556867 in memory
fld f4, 0(x2) # load 0x1e31afaae6556867 from memory into f4
fminm.d f16, f9, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x13, 0xe5e237e2e20ef9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0xa8e42e10e1f17e87 # load x3 with value 0xa8e42e10e1f17e87
sd x3, 0(x2) # store 0xa8e42e10e1f17e87 in memory
fld f22, 0(x2) # load 0xa8e42e10e1f17e87 from memory into f22
fminm.d f13, f26, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x5, 0x75ea71b7846d2ade # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x5a5c0035dbe2c551 # load x3 with value 0x5a5c0035dbe2c551
sd x3, 0(x2) # store 0x5a5c0035dbe2c551 in memory
fld f18, 0(x2) # load 0x5a5c0035dbe2c551 from memory into f18
fminm.d f5, f15, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x16, 0x2934609d894299b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x9480c96a0182484a # load x3 with value 0x9480c96a0182484a
sd x3, 0(x2) # store 0x9480c96a0182484a in memory
fld f22, 0(x2) # load 0x9480c96a0182484a from memory into f22
fminm.d f16, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x5, 0x89561bb125593271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x2bd1efdf62fc8763 # load x3 with value 0x2bd1efdf62fc8763
sd x3, 0(x2) # store 0x2bd1efdf62fc8763 in memory
fld f27, 0(x2) # load 0x2bd1efdf62fc8763 from memory into f27
fminm.d f5, f1, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x8, 0xca2e16773a248d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0xcb9518042768b3a4 # load x3 with value 0xcb9518042768b3a4
sd x3, 0(x2) # store 0xcb9518042768b3a4 in memory
fld f30, 0(x2) # load 0xcb9518042768b3a4 from memory into f30
fminm.d f8, f21, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x20, 0xb0089bc148acb151 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x08b6cef062724025 # load x3 with value 0x08b6cef062724025
sd x3, 0(x2) # store 0x08b6cef062724025 in memory
fld f23, 0(x2) # load 0x08b6cef062724025 from memory into f23
fminm.d f20, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x18, 0xaa304f7da07d565d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x17566eb9e04a50b9 # load x3 with value 0x17566eb9e04a50b9
sd x3, 0(x2) # store 0x17566eb9e04a50b9 in memory
fld f30, 0(x2) # load 0x17566eb9e04a50b9 from memory into f30
fminm.d f18, f29, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x29, 0xa1684add609640f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0xfe9f55bf2b829f61 # load x3 with value 0xfe9f55bf2b829f61
sd x3, 0(x2) # store 0xfe9f55bf2b829f61 in memory
fld f7, 0(x2) # load 0xfe9f55bf2b829f61 from memory into f7
fminm.d f29, f9, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x5, 0xec20de3a31f606f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0xcf29a7107e77e570 # load x3 with value 0xcf29a7107e77e570
sd x3, 0(x2) # store 0xcf29a7107e77e570 in memory
fld f18, 0(x2) # load 0xcf29a7107e77e570 from memory into f18
fminm.d f5, f25, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x5, 0x52ae20fbcbf0fd3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0xff8068ac165c6e2b # load x3 with value 0xff8068ac165c6e2b
sd x3, 0(x2) # store 0xff8068ac165c6e2b in memory
fld f17, 0(x2) # load 0xff8068ac165c6e2b from memory into f17
fminm.d f5, f13, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x12, 0x8b9f82c2ae1becfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
li x3, 0xce4e1d605b982e39 # load x3 with value 0xce4e1d605b982e39
sd x3, 0(x2) # store 0xce4e1d605b982e39 in memory
fld f16, 0(x2) # load 0xce4e1d605b982e39 from memory into f16
fminm.d f12, f22, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x2, 0xe61b03f4f3901da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x2aecd4220725ad6d # load x3 with value 0x2aecd4220725ad6d
sd x3, 0(x2) # store 0x2aecd4220725ad6d in memory
fld f1, 0(x2) # load 0x2aecd4220725ad6d from memory into f1
fminm.d f2, f3, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x29, 0xb66ecfa5d7623add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x63c57235f6020e77 # load x3 with value 0x63c57235f6020e77
sd x3, 0(x2) # store 0x63c57235f6020e77 in memory
fld f19, 0(x2) # load 0x63c57235f6020e77 from memory into f19
fminm.d f29, f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x28, 0x93a0a57142d614b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0x0cf0754e8679b56b # load x3 with value 0x0cf0754e8679b56b
sd x3, 0(x2) # store 0x0cf0754e8679b56b in memory
fld f15, 0(x2) # load 0x0cf0754e8679b56b from memory into f15
fminm.d f28, f20, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x5, 0x73068702a8068aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x931d9301f5cc55da # load x3 with value 0x931d9301f5cc55da
sd x3, 0(x2) # store 0x931d9301f5cc55da in memory
fld f15, 0(x2) # load 0x931d9301f5cc55da from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fminm.d f5, f15, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x23, 0x52b5b64590574ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0290c8bfd8c4cb0b # load x3 with value 0x0290c8bfd8c4cb0b
sd x3, 0(x2) # store 0x0290c8bfd8c4cb0b in memory
fld f26, 0(x2) # load 0x0290c8bfd8c4cb0b from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fminm.d f23, f26, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x13, 0x74ba1686b2d87015 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94187e8b37f282b4 # load x3 with value 0x94187e8b37f282b4
sd x3, 0(x2) # store 0x94187e8b37f282b4 in memory
fld f12, 0(x2) # load 0x94187e8b37f282b4 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
fminm.d f13, f12, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x12, 0xd7fc55275fadb94e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf792832150d2d52 # load x3 with value 0xaf792832150d2d52
sd x3, 0(x2) # store 0xaf792832150d2d52 in memory
fld f26, 0(x2) # load 0xaf792832150d2d52 from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fminm.d f12, f26, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x2, 0x1d9cc34983102e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0e139acc0ea5cbe # load x3 with value 0xa0e139acc0ea5cbe
sd x3, 0(x2) # store 0xa0e139acc0ea5cbe in memory
fld f22, 0(x2) # load 0xa0e139acc0ea5cbe from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fminm.d f2, f22, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x24, 0x403f8f23fc93ceda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa000d486f116726 # load x3 with value 0xfa000d486f116726
sd x3, 0(x2) # store 0xfa000d486f116726 in memory
fld f15, 0(x2) # load 0xfa000d486f116726 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
fminm.d f24, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x23, 0x1c97a7a341444022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35fb2002d477b891 # load x3 with value 0x35fb2002d477b891
sd x3, 0(x2) # store 0x35fb2002d477b891 in memory
fld f10, 0(x2) # load 0x35fb2002d477b891 from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fminm.d f23, f10, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x27, 0x96c46e701e65c7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe44329548f63a38b # load x3 with value 0xe44329548f63a38b
sd x3, 0(x2) # store 0xe44329548f63a38b in memory
fld f29, 0(x2) # load 0xe44329548f63a38b from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fminm.d f27, f29, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x13, 0xcd67d4704ea3a40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2948c0c1ab722753 # load x3 with value 0x2948c0c1ab722753
sd x3, 0(x2) # store 0x2948c0c1ab722753 in memory
fld f15, 0(x2) # load 0x2948c0c1ab722753 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fminm.d f13, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x21, 0x13c73803c4299ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fba9b2ca30f5222 # load x3 with value 0x0fba9b2ca30f5222
sd x3, 0(x2) # store 0x0fba9b2ca30f5222 in memory
fld f23, 0(x2) # load 0x0fba9b2ca30f5222 from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fminm.d f21, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x19, 0xb15f6f6342e03a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e9dab7ac7629356 # load x3 with value 0x6e9dab7ac7629356
sd x3, 0(x2) # store 0x6e9dab7ac7629356 in memory
fld f11, 0(x2) # load 0x6e9dab7ac7629356 from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fminm.d f19, f11, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x31, 0x858ce992105dedc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6e2f3cb4a4c7996 # load x3 with value 0xc6e2f3cb4a4c7996
sd x3, 0(x2) # store 0xc6e2f3cb4a4c7996 in memory
fld f24, 0(x2) # load 0xc6e2f3cb4a4c7996 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fminm.d f31, f24, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x24, 0xc5a42e8fb769fde6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5d5a6f7fbd9a3b0 # load x3 with value 0xe5d5a6f7fbd9a3b0
sd x3, 0(x2) # store 0xe5d5a6f7fbd9a3b0 in memory
fld f7, 0(x2) # load 0xe5d5a6f7fbd9a3b0 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fminm.d f24, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x13, 0x4aa6b526e6ee2fec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe51c2b7f5ebc5c28 # load x3 with value 0xe51c2b7f5ebc5c28
sd x3, 0(x2) # store 0xe51c2b7f5ebc5c28 in memory
fld f12, 0(x2) # load 0xe51c2b7f5ebc5c28 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fminm.d f13, f12, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x16, 0xb2b21fcb02c9898a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x911ee84733f77a96 # load x3 with value 0x911ee84733f77a96
sd x3, 0(x2) # store 0x911ee84733f77a96 in memory
fld f18, 0(x2) # load 0x911ee84733f77a96 from memory into f18
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fminm.d f16, f18, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x28, 0x662255a0f3a34686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0341e8f64e08f25 # load x3 with value 0xa0341e8f64e08f25
sd x3, 0(x2) # store 0xa0341e8f64e08f25 in memory
fld f6, 0(x2) # load 0xa0341e8f64e08f25 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fminm.d f28, f6, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x6, 0x762c17600b2368be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3cbe2f4bda3c00a # load x3 with value 0xc3cbe2f4bda3c00a
sd x3, 0(x2) # store 0xc3cbe2f4bda3c00a in memory
fld f7, 0(x2) # load 0xc3cbe2f4bda3c00a from memory into f7
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fminm.d f6, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x13, 0x810b395557595b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabb01273d6f0a9ee # load x3 with value 0xabb01273d6f0a9ee
sd x3, 0(x2) # store 0xabb01273d6f0a9ee in memory
fld f8, 0(x2) # load 0xabb01273d6f0a9ee from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fminm.d f13, f8, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x20, 0x171d010fcce2b695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ea5c21007622714 # load x3 with value 0x5ea5c21007622714
sd x3, 0(x2) # store 0x5ea5c21007622714 in memory
fld f18, 0(x2) # load 0x5ea5c21007622714 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fminm.d f20, f18, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x6, 0xc6facd408727d4e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1477676359e986a9 # load x3 with value 0x1477676359e986a9
sd x3, 0(x2) # store 0x1477676359e986a9 in memory
fld f20, 0(x2) # load 0x1477676359e986a9 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fminm.d f6, f20, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x24, 0xf90ddbacc0375fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0766d5b1d8a0e753 # load x3 with value 0x0766d5b1d8a0e753
sd x3, 0(x2) # store 0x0766d5b1d8a0e753 in memory
fld f19, 0(x2) # load 0x0766d5b1d8a0e753 from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fminm.d f24, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x27, 0x8d6a5283bb79511d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x670851ac31f0f9c4 # load x3 with value 0x670851ac31f0f9c4
sd x3, 0(x2) # store 0x670851ac31f0f9c4 in memory
fld f15, 0(x2) # load 0x670851ac31f0f9c4 from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fminm.d f27, f15, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x6, 0x1e4917c08fd1d46c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39c39a2181ecf349 # load x3 with value 0x39c39a2181ecf349
sd x3, 0(x2) # store 0x39c39a2181ecf349 in memory
fld f3, 0(x2) # load 0x39c39a2181ecf349 from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fminm.d f6, f3, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x8, 0x2c7bc4716d79c9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6fb123a801b941b # load x3 with value 0xc6fb123a801b941b
sd x3, 0(x2) # store 0xc6fb123a801b941b in memory
fld f27, 0(x2) # load 0xc6fb123a801b941b from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fminm.d f8, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x14, 0x13204313533edc14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dcb685b86a4cb3b # load x3 with value 0x7dcb685b86a4cb3b
sd x3, 0(x2) # store 0x7dcb685b86a4cb3b in memory
fld f1, 0(x2) # load 0x7dcb685b86a4cb3b from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fminm.d f14, f1, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x20, 0x39a4ef17f649d555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfab1a2016311c87a # load x3 with value 0xfab1a2016311c87a
sd x3, 0(x2) # store 0xfab1a2016311c87a in memory
fld f16, 0(x2) # load 0xfab1a2016311c87a from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fminm.d f20, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x15, 0x2e89159c5171d07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fminm.d f15, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x26, 0x0b3231b4c81ab4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fminm.d f26, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x10, 0x86c3f9ab4fe4f7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
fminm.d f10, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x21, 0x3da7e8ddf320875d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fminm.d f21, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x12, 0xe8512c9135f67b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fminm.d f12, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x27, 0x50e3348b950f04f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fminm.d f27, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x6, 0x59f68b32a2519bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fminm.d f6, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x26, 0x14d838eeb6439ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fminm.d f26, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x26, 0x3682b1d31e848987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fminm.d f26, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x10, 0xe12b56cfb72f0f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fminm.d f10, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x16, 0x0fbb83623591220a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fminm.d f16, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x12, 0x44a3896b42a353c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fminm.d f12, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x11, 0xe77d686afb029182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fminm.d f11, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x30, 0x5983b390221cd36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fminm.d f30, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x1, 0x7aaafde16844bf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fminm.d f1, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x1, 0xe1031b09309dabb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fminm.d f1, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x4, 0x17065afecfab7264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fminm.d f4, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x9, 0x022924d411926710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fminm.d f9, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x10, 0xc41a979e5e896ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fminm.d f10, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x16, 0x116faad0ca04acbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fminm.d f16, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x10, 0xeef7be2f0f466aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fminm.d f10, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x9, 0x16a8339692b5b88d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fminm.d f9, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x16, 0x479a15c8cd00cfcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fminm.d f16, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x25, 0x64f68eb7f044a9dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fminm.d f25, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x1, 0x7eb991c0275505f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fminm.d f1, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x5, 0xc1aa41ad0a53a934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fminm.d f5, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x7, 0xe4c1087074e7247e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fminm.d f7, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x4, 0xbb595cc1d92c456a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fminm.d f4, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x29, 0x7193eebf79121086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fminm.d f29, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x5, 0xe0f676013fedc393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fminm.d f5, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x22, 0x15f1175680a08621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fminm.d f22, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x27, 0x64a7c2c68964ce35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fminm.d f27, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x6, 0x92ff62647cd44842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fminm.d f6, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x9, 0xc24df338b21a614e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fminm.d f9, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x1, 0xc45ae70f62428294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fminm.d f1, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x6, 0xc38f44be6458be7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fminm.d f6, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x11, 0x7535210476d5f740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fminm.d f11, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x25, 0x5ca18350ec1206f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fminm.d f25, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x29, 0xb9b6599c284cb0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fminm.d f29, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x20, 0x95fa1f75cbbe216e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fminm.d f20, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x30, 0x55f0ac85d205953a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fminm.d f30, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x28, 0x3a0a824ac2ee2534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fminm.d f28, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x14, 0x537097cb5b5a76e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fminm.d f14, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x7, 0x130a97d6e70bc386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fminm.d f7, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x17, 0x451061d9b722f8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fminm.d f17, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x22, 0x9064ea5d4b287358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fminm.d f22, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x3, 0x95e2a5cee4f843f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fminm.d f3, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0x8f363b57b4df9219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fminm.d f17, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x19, 0x8ce4d1478e01aa91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fminm.d f19, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x19, 0x9b0c34c8c9147e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fminm.d f19, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0x9d1203cbc3bc9597 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fminm.d f20, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x24, 0xcbfd4fcd92d6a6da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fminm.d f24, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x21, 0x635facc608ebd5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fminm.d f21, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x24, 0xeeef86273410ed14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fminm.d f24, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x26, 0x49f319c7737148e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fminm.d f26, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x10, 0xb5d550cc00495f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fminm.d f10, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x275825bd98debefd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fminm.d f28, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x11, 0x68cefb79f3051e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fminm.d f11, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x27, 0xdf5181df6d653338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fminm.d f27, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x15, 0x5a1bf9caa14f2c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fminm.d f15, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x12, 0x4a3845b14bb746ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fminm.d f12, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x12, 0xc0b37c81b167120f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fminm.d f12, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0xf1b07bb7b38c1593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fminm.d f27, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x1, 0xba34996784c9b7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fminm.d f1, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x16, 0x7c8f58e7285808d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fminm.d f16, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x22, 0x36321f8c3bb7ed62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fminm.d f22, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x10, 0xaedda936e8fba75e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fminm.d f10, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x11, 0xf9670e820516aa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fminm.d f11, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x7, 0x27c58d5e3db9cfc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fminm.d f7, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x28, 0xf81be36d2a364039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fminm.d f28, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x4, 0x5da1d6b88926ac4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fminm.d f4, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x31, 0xd48cfb32bf3af2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fminm.d f31, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x28, 0x44f8546d6cbc9398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fminm.d f28, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x15, 0x1cb45bac68a4ee6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fminm.d f15, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x8, 0xccf89a6c3bb8046c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fminm.d f8, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x19, 0xfdea4dedf33bd202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fminm.d f19, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0x5c702c598fc1e987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fminm.d f21, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x18, 0x106b21c3afdab46f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fminm.d f18, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x19, 0x48e67bd1bad1d3ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fminm.d f19, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x23, 0x26ffa9d709310982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fminm.d f23, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x6, 0xa0799d2b16e4bec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fminm.d f6, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x18, 0xec3b42a6db86f3eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fminm.d f18, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x21, 0x2d3010b7c4f82b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fminm.d f21, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x21, 0xd48d4f7194171fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fminm.d f21, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x15, 0x492c80fe190c375f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fminm.d f15, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x17, 0x86e01b381541cf7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fminm.d f17, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x30, 0x0577c7c24ecb989c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fminm.d f30, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x9, 0x14d57f18f318f47c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fminm.d f9, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0xf8c8603ea9a6baa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fminm.d f27, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x14, 0x3a12c877f00c0d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fminm.d f14, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x25, 0x95c05ffa6e175d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fminm.d f25, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x9, 0x2b7170e3258711b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fminm.d f9, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x28, 0x063c72877f25585f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fminm.d f28, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x2, 0xa90621258b06b108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fminm.d f2, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x22, 0x645453d3c51d4138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fminm.d f22, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x25, 0xd3e46be7867c92d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fminm.d f25, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x23, 0x216ca467c97c6811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fminm.d f23, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x14, 0x870e827f2646e433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fminm.d f14, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x24, 0x41b1af6d60d674b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fminm.d f24, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x5, 0xd61dd2d9aa5b9eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fminm.d f5, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x2, 0x474a773855ffb6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fminm.d f2, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x18, 0xceba7917403d5f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fminm.d f18, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0x785718313ee78b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fminm.d f22, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x28, 0x3149a82c3ff1fea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fminm.d f28, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x3, 0xddab7a0740d7c24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fminm.d f3, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x24, 0x427d8f624e955450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fminm.d f24, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x20, 0x2d19cbb0535e4210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fminm.d f20, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x30, 0x41f190aba1edc3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fminm.d f30, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x27, 0x2d4bcb76fbb093dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fminm.d f27, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x26, 0x2fd5bf77f9815041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fminm.d f26, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x1, 0xa25bfde392c2018c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fminm.d f1, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x6, 0xa0cb494bb81e8675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fminm.d f6, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x16, 0x6b96f697c5cf8c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fminm.d f16, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x20, 0xe593eedb8ee81d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fminm.d f20, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0x112cbda87ddcf556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fminm.d f27, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x31, 0x5c96966d1ff721c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fminm.d f31, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x3, 0x0306646e99f72195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fminm.d f3, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x28, 0x01d8953ee70c7020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fminm.d f28, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x30, 0xdf648d8642a62482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fminm.d f30, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x11, 0xa82df5da53c77e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fminm.d f11, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x26, 0x8f72565e99ca4c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fminm.d f26, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x14, 0x5bd7e61f41db27b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fminm.d f14, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x12, 0xd6028c4be05a55e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fminm.d f12, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x27, 0x2955f6555aa30db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fminm.d f27, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x31, 0xbb91deaa03c4a4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fminm.d f31, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x10, 0x6d31db3abbf5c9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fminm.d f10, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x11, 0xd1de80e68d687533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fminm.d f11, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x14, 0x01435ba31c384d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fminm.d f14, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0x70c3b13f3f67b300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fminm.d f12, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x17, 0x3b8ea03384368c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fminm.d f17, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x31, 0x63c31b72e3b4a3be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fminm.d f31, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x7, 0x51f637e0b353d70e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fminm.d f7, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x2, 0x25247edc1dfb9ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fminm.d f2, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x7, 0x7b6a00835d23bdf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fminm.d f7, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x17, 0xcc98e4314d7e285f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fminm.d f17, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x18, 0x9580f36b6c2d7e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fminm.d f18, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x31, 0xba0f75ab13240f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fminm.d f31, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x21, 0xb403c9a79eaa8a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fminm.d f21, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x19, 0x45fefdb0bedec2f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fminm.d f19, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x12, 0xd17157e8b0dcd373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fminm.d f12, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x20, 0x1b6c669ddf5322e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fminm.d f20, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x20, 0x218a2ff6a4462a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fminm.d f20, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x20, 0xd9ad1e2844c1c9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fminm.d f20, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x28, 0x392855e2387f5852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fminm.d f28, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x10, 0xcacc71e258b4ea62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fminm.d f10, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x20, 0xf4ee9917bce39524 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fminm.d f20, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x20, 0xa2c69f82fd1b247d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fminm.d f20, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x19, 0x778b8f560d00feda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fminm.d f19, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x30, 0x23292c76a8da96f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fminm.d f30, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x21, 0x1aeeef570e40c649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fminm.d f21, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x15, 0x36fc8085f4d6e571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fminm.d f15, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x3, 0x277392a61835eb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fminm.d f3, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x10, 0x5f35ac92f965c90d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fminm.d f10, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x24, 0x60b4a4ff3a6e811c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fminm.d f24, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x31, 0x8234adb602fff1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fminm.d f31, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x23, 0x9c3b4c5de11dab5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fminm.d f23, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x2, 0xcbccce56ddc1b39f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fminm.d f2, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x25, 0xbb7a4949b465aec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fminm.d f25, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x3, 0x351aeec6682c890a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fminm.d f3, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x20, 0x0f1c7441d3fbbb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fminm.d f20, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x19, 0x80163bcc18a91753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fminm.d f19, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x5, 0x558583f80ec2932c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fminm.d f5, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x21, 0x03392f36b88f103c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fminm.d f21, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x19, 0x7033d36568db1a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fminm.d f19, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x20, 0x8a76c7fa32af6012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fminm.d f20, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x29, 0x8043f448dfd8edd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fminm.d f29, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0x9f1d41fccb11bf30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fminm.d f23, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x15, 0x336ec8c24e6a9f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fminm.d f15, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x29, 0x737b5636458ff4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fminm.d f29, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x29, 0x25c5a989e29752d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fminm.d f29, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x23, 0xcfcb4876d562b224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fminm.d f23, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x29, 0x7f8b5830b22ab069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fminm.d f29, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x23, 0xf27201379615dd9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fminm.d f23, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x27, 0xb380ce23e2b4db5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fminm.d f27, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x19, 0xd9a9ff18ff5e3f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fminm.d f19, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x26, 0x6bd7cb59ea9b6d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fminm.d f26, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x7, 0x600575e02ec8a601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fminm.d f7, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x6, 0xc4b1061ccdf87e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fminm.d f6, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x29, 0xfa792c0f6f46df47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fminm.d f29, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0xb5cba0c27a31902c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fminm.d f10, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x5, 0x91ed1f466d2dbfc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fminm.d f5, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x26, 0x9c08fc0f1714ea15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fminm.d f26, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x30, 0x13e4ac740303a551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fminm.d f30, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x10, 0xbb5d209be47d0519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fminm.d f10, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x20, 0xced7db91b2f2ea4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fminm.d f20, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x26, 0xe1563e88cad4986c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fminm.d f26, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x15, 0x042d32afe4436f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fminm.d f15, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x12, 0x39e934e12d161e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fminm.d f12, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x27, 0x839178a61edab7f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fminm.d f27, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x1, 0x6cb35ff6a2437c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fminm.d f1, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x29, 0x9ff13045063fad38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fminm.d f29, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x18, 0xc31dbd735155f677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fminm.d f18, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x3, 0x272df14fa17dcd34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fminm.d f3, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x27, 0xb4dbd3ec84925a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fminm.d f27, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x17, 0xb77745a461c6769c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fminm.d f17, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x26, 0x7e8716d255a0b089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fminm.d f26, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x30, 0x3177292c3d06aaff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fminm.d f30, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x21, 0xe30b02b66a260840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fminm.d f21, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x1, 0x1e25abe03f001d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fminm.d f1, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x16, 0xdd93bf119fc17e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fminm.d f16, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x4, 0x4098f259bf71a489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fminm.d f4, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x3, 0x91c3670b8d604f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fminm.d f3, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x30, 0xa321bb6a17dffc58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fminm.d f30, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x30, 0xd9882bcc7e90c03a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fminm.d f30, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x13, 0x517eaafd4f8233eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
fminm.d f13, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0xe6fd1eb58ea62b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
fminm.d f3, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0xd99590bab54034fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fminm.d f13, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x9, 0x33eb25c349464fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fminm.d f9, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x11, 0x8bf4987335e22174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fminm.d f11, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x5, 0x9a4c867505b71f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fminm.d f5, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x28, 0xd3fa547172f94bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fminm.d f28, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x2, 0x39e073b031ce3bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fminm.d f2, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x19, 0xe7561d8a0e8b60ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fminm.d f19, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x25, 0xa7630812ca00ef95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fminm.d f25, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x30, 0x503e59033d52c722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fminm.d f30, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x4, 0xf6ef461e1ad63f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
fminm.d f4, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x17, 0x4ab83f748c1b19dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fminm.d f17, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x10, 0xf992559cab08799b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fminm.d f10, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x29, 0xac90ba8320b8ae0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fminm.d f29, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x23, 0x2af076481d463cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fminm.d f23, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x25, 0x460bee747bfc7ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fminm.d f25, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x27, 0xaace2cd3799a1abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fminm.d f27, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x29, 0xf83aad4bde8c0560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fminm.d f29, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x27, 0xaf5c5ab4b3541686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fminm.d f27, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x8, 0x8f98c36f4b29867a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fminm.d f8, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x31, 0x30c2bdb93a5d67f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fminm.d f31, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x24, 0xed5fa8d4538ba0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fminm.d f24, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x26, 0x6258d6d4ccc38986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fminm.d f26, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x10, 0xf6704845767f918a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fminm.d f10, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x28, 0x1963e2af43d82d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fminm.d f28, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x4, 0x71dfbd8823f4ff31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fminm.d f4, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x20, 0xf7bdc7318054cdf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fminm.d f20, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x6, 0x66e3ee2504abddb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fminm.d f6, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x14, 0x179aaf29a08feb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fminm.d f14, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x14, 0x232d05e3fe2f06a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fminm.d f14, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x25, 0x8253aede76712535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fminm.d f25, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x3, 0x1bc476f79a417b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fminm.d f3, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x20, 0x90548f2560511efc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fminm.d f20, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x7, 0x71d060d0d0f196ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fminm.d f7, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x14, 0x9238a3ae286f5fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fminm.d f14, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x5, 0x22c7c81e850d41db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fminm.d f5, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x30, 0xea7072e436f0b861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fminm.d f30, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x7, 0x9022227f10754ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fminm.d f7, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x24, 0x5e3752189b029afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fminm.d f24, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x19, 0x6a184ea76b9fbce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fminm.d f19, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x7, 0xca2322c1e6cc9c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fminm.d f7, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x1, 0xfe2f37edc733c46b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fminm.d f1, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x16, 0x86b2240c13f78334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fminm.d f16, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x11, 0xcdaff93768bbe2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fminm.d f11, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x19, 0xc5912543d102deaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fminm.d f19, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x9, 0xd4b6a70eee2bab4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fminm.d f9, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x15, 0x27b591c214233d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fminm.d f15, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x25, 0x222bd02dc7e866f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fminm.d f25, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x29, 0x5e043455a9866e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fminm.d f29, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x9, 0x21d5d4db2b634f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fminm.d f9, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x8, 0x5c46b1aa31e20b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fminm.d f8, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x23, 0x282926319aa8c07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fminm.d f23, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x22, 0x894c38670a41f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fminm.d f22, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0xe8e5ec4c54f6bc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fminm.d f22, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x26, 0x3b9017918f790d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fminm.d f26, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x1, 0xa0d94a28971bf902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fminm.d f1, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x20, 0x0f0d60557053e725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fminm.d f20, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x5, 0x4fbd8552621bcde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fminm.d f5, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x10, 0xf90082952234331b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fminm.d f10, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x24, 0x873a37ddd7a45385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fminm.d f24, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x12, 0x4a5d300bd7781823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fminm.d f12, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x5, 0x394e2474e8e7fd42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fminm.d f5, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x15, 0xf4b8cb69eb6388f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fminm.d f15, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x27, 0x595ca531b09e14ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fminm.d f27, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x22, 0x26c64775320127c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
fminm.d f22, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x22, 0xfca9103fc8e4af08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fminm.d f22, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x31, 0x71b54882b442de62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fminm.d f31, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x18, 0x383b79b63b84ab5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fminm.d f18, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x30, 0x50745ed7957ccfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fminm.d f30, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x30, 0x1a8f643a8b9e7b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fminm.d f30, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x8, 0xff47f8b3350aaaba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fminm.d f8, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x12, 0x1d1c938e0c17d4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fminm.d f12, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x27, 0x9817ba306c5de4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fminm.d f27, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x15, 0x6122fe69dea081b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fminm.d f15, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x10, 0x588cbee0e5fae86b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fminm.d f10, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x29, 0xf33df3b8a68efe57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fminm.d f29, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x6, 0xcdccb412691ce782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fminm.d f6, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x25, 0x55c7d28fc26bf1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fminm.d f25, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x16, 0x2d181686906f48d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fminm.d f16, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x27, 0x95b05bdbe8edccab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fminm.d f27, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x31, 0x37dd717acaaa05f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fminm.d f31, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x29, 0xbb8a0313258e694e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fminm.d f29, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x3, 0x974254bfa5421276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fminm.d f3, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x22, 0x5476bbb674022be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fminm.d f22, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x1, 0x415c458ffd860c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fminm.d f1, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x6, 0x6da51af3a9f359c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fminm.d f6, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x1, 0xf67e4aad05ea0caa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fminm.d f1, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x20, 0xf8df61f2e3a8d747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fminm.d f20, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x22, 0xc24242dcce82bedd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fminm.d f22, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x11, 0x0c2e2383897a367f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fminm.d f11, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x6, 0xb34d99ab81889f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fminm.d f6, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x29, 0xa1f854fabb1fffe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fminm.d f29, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x13, 0x24fc194af2e26f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fminm.d f13, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x22, 0x1e2fb547c35454ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fminm.d f22, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x10, 0xac0ff89be5997670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fminm.d f10, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x4, 0xb396eea911af174b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fminm.d f4, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x1, 0x1beba1ab91cc5015 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fminm.d f1, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x24, 0x79bf576fbb9512f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fminm.d f24, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x11, 0x516d887f4eed6357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fminm.d f11, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0x599e0df19855c592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fminm.d f4, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x28, 0x18abc3f04368d6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fminm.d f28, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x2, 0xc94584c58569139b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fminm.d f2, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x24, 0x2f5d20ae3f5af4c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fminm.d f24, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x12, 0x890bb52454fb66dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fminm.d f12, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x17, 0xf2dc1b9f595d231b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fminm.d f17, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x7, 0x5714057ef5a77276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fminm.d f7, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x12, 0x6e59eae094c09a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fminm.d f12, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x8, 0xb9a46d3b22e58866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fminm.d f8, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x3, 0xcc55ba09ed019fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fminm.d f3, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x17, 0xec3234a1a3aec0cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fminm.d f17, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x5, 0x25c3c11e0590fa90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fminm.d f5, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x23, 0x10849d0cd83503de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fminm.d f23, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x11, 0xccf0fd792949988b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fminm.d f11, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x30, 0x721cf7c8b1746a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fminm.d f30, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x20, 0xb30e01da9ca39c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fminm.d f20, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x16, 0xdea0c9f0ad1d0437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fminm.d f16, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x15, 0x1111fde3d005743e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fminm.d f15, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x22, 0x320ad613c11ead6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fminm.d f22, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x10, 0x7422c24d3a12ced9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fminm.d f10, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x3, 0x894c675654e356be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fminm.d f3, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x10, 0x59bad66612ea5a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fminm.d f10, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x6, 0xcb47dfe331b4326d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fminm.d f6, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x31, 0x5cd0d536960b7607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fminm.d f31, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x24, 0xd11b45a7b0d096ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fminm.d f24, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x16, 0xf068c41f003c6d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fminm.d f16, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x25, 0x83ca1be4e48f4a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fminm.d f25, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x18, 0x729a7cd6836362f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fminm.d f18, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x16, 0xc27d0a1126d369c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fminm.d f16, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x7, 0x1f7a9791a8e0781a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fminm.d f7, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x3, 0xf8eee73104b1e3ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fminm.d f3, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x28, 0x86648c1590bd2d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fminm.d f28, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x12, 0xd2e953cdfda4644c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fminm.d f12, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x12, 0xd7184349f380b7cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fminm.d f12, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x10, 0xf5bdce20fbf5bb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fminm.d f10, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x13, 0xad261485bf7603d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fminm.d f13, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x3, 0x747e6736203e65b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fminm.d f3, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x21, 0xb36d6efa52428105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fminm.d f21, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x29, 0x476c489478cf4203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fminm.d f29, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x5, 0x3b457adab7e11118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fminm.d f5, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x19, 0xbb7cb435ac8366fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fminm.d f19, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x28, 0xe475ac678e2cfb23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fminm.d f28, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x28, 0xfb4a882c7fbb5de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fminm.d f28, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x2, 0x2dd9e5f5f644faa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
fminm.d f2, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x13, 0x7a247ec9aa2fc820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fminm.d f13, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x18, 0x88e01666add5bad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fminm.d f18, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x21, 0x10552d79c8a23959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fminm.d f21, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x1, 0x88e9ecdc92516cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fminm.d f1, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x25, 0xd0d49b5c9ecc4929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fminm.d f25, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x6, 0x26c094ad4d379da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fminm.d f6, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x10, 0x796e71856640903c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fminm.d f10, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x15, 0xbd8b7bbaa2fb406b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fminm.d f15, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x29, 0xde1bd1f5d6d92b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fminm.d f29, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x6, 0xf4a82794519f2b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fminm.d f6, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x19, 0x92fc78ceab568e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fminm.d f19, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x8, 0x3e19a8ae95ce63b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fminm.d f8, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x25, 0xeb59e7beffa35113 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fminm.d f25, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x29, 0x6abf633e101c1b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fminm.d f29, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x1, 0x12e6336d5780b9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fminm.d f1, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0x2902cf271641ea61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fminm.d f2, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x27, 0xd08dad709f46983c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fminm.d f27, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x20, 0xb27c0ce99af26923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fminm.d f20, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x24, 0xecf9c919507bf930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fminm.d f24, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x30, 0x58497f76f940a9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fminm.d f30, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x5, 0x0080f9e4354977a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fminm.d f5, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x11, 0x6dc530afe0b4805d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fminm.d f11, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x12, 0x70cec4876a64b695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fminm.d f12, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x30, 0x83d4fc4ad6a40fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fminm.d f30, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x23, 0x0894ba4b49fd96a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fminm.d f23, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x16, 0xb80824e2b4e5d86e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fminm.d f16, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x6, 0x34fb091ed9a99c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fminm.d f6, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x28, 0xc6cdd9d4b87eb686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fminm.d f28, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x2, 0xc2d8fab7a123402b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fminm.d f2, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x21, 0x1c9fdcccaec303b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fminm.d f21, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x16, 0x6fee335e61225f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fminm.d f16, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x20, 0x8a9c31480a50f767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fminm.d f20, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x23, 0x192985d46b9ba8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fminm.d f23, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x11, 0x2a8f999bf0cf38bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fminm.d f11, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x21, 0xb2115537db6c36e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fminm.d f21, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x2, 0x901d60418a4539ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fminm.d f2, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x4, 0x073518116fe7383f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fminm.d f4, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x15, 0x2bab496d5af476cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fminm.d f15, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x15, 0x6cef175f731631b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fminm.d f15, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x25, 0x596b9cdfe523b401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fminm.d f25, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0xcb53b55e0b74e761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fminm.d f12, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x26, 0xcefbc559738fab02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fminm.d f26, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x17, 0x2c9b756c1c113c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fminm.d f17, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x25, 0x2139a3ab7dd7774c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fminm.d f25, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x23, 0xb4bf04db419cb3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fminm.d f23, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x17, 0xedd9f174d45331fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fminm.d f17, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x1, 0xee5db745bde1ad2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fminm.d f1, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x1, 0xaf1e0c23df24f8ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fminm.d f1, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x5, 0xd0506b2272e85730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fminm.d f5, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x7, 0x74ff3972d50717eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fminm.d f7, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x11, 0x0090fa44089dd36d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fminm.d f11, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x27, 0xb54c24ee62973d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fminm.d f27, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x6, 0x3a09574b9fd04743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fminm.d f6, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x19, 0xac127c4117516c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fminm.d f19, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x14, 0xc978c57b707d0ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fminm.d f14, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x15, 0x344969281c3f90f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fminm.d f15, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x16, 0x716d26912851b3dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fminm.d f16, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x21, 0xe384e5c95e627a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fminm.d f21, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x26, 0x929ed4d6fc7e7e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fminm.d f26, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x25, 0x36130bf6afa83e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fminm.d f25, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x24, 0x2d5efac4b05f50f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fminm.d f24, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x12, 0x0382a0cc041c0ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fminm.d f12, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x5, 0xf5714dc52b816ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fminm.d f5, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0x55ea4b16f33363dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fminm.d f24, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x1, 0xdf9caf25e07c6f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fminm.d f1, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x26, 0xb428f1febf4ab4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fminm.d f26, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0xa111a77a75e0a755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fminm.d f12, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x23, 0xb8ab5ad24d480c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fminm.d f23, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x4, 0x87d4aa94a89bf0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fminm.d f4, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x6, 0x10bf88ceedf4a160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fminm.d f6, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x6, 0x5ac4e9eda7421cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fminm.d f6, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x5, 0x282168b57000648a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fminm.d f5, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x9, 0xad0b1aa7b6f6e343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fminm.d f9, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x24, 0x15ed944da3804b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fminm.d f24, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x28, 0x3c1f8855dd3c3c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fminm.d f28, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x11, 0x0764e651149f8cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fminm.d f11, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x13, 0xc9d035f765ee3fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fminm.d f13, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x25, 0x4b02593333c4ac12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fminm.d f25, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x4, 0xcf7d536040a16184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fminm.d f4, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x16, 0x11c2b46d338ba1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fminm.d f16, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x5, 0xf12b9729958e8c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fminm.d f5, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x5, 0x89e4109a0e7bc52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fminm.d f5, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x22, 0x05fe8e2d37d6ec3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fminm.d f22, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x5, 0x08547d149c6ca7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fminm.d f5, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x29, 0xbab3dfa2b3653219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fminm.d f29, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x24, 0x314e72ed0f7e8517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fminm.d f24, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x22, 0xdd4f38dcfd77519c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fminm.d f22, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x12, 0x657703154e7cb265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fminm.d f12, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x21, 0x198d271d726bb54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fminm.d f21, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x27, 0x7a39d4d9f31c5c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fminm.d f27, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x5, 0x6738d0fdae235ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fminm.d f5, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x12, 0x87c739580246d471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fminm.d f12, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x13, 0xd49f20f66bd083e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fminm.d f13, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x17, 0x25a72334e72270b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fminm.d f17, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x7, 0x110255a420cf9e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fminm.d f7, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x25, 0x9f394ec65244a14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fminm.d f25, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x17, 0xb66624b172416c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fminm.d f17, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x31, 0x4d7dfba2f0791190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fminm.d f31, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x18, 0x60e1039be4ca28a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fminm.d f18, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x29, 0x15ad2c49b402d748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fminm.d f29, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x26, 0x51c5b77f51c62051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fminm.d f26, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x4, 0x85daf6d44cc93d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fminm.d f4, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x14, 0x758ab35bbaea898f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fminm.d f14, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x12, 0x8f95fdd0d2b90085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fminm.d f12, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x23, 0x656b28278421663e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fminm.d f23, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x21, 0x44f5a51dd05fb1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fminm.d f21, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x6, 0x4c76d6ee643b27bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fminm.d f6, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x24, 0x66ad2e7e6becba23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fminm.d f24, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x24, 0x6fec8dfdb05b09c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fminm.d f24, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x20, 0xf25552edceda419a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
fminm.d f20, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x10, 0x97a679bd4a0cf228 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fminm.d f10, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x28, 0xae5133cadb6f7454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
fminm.d f28, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x15, 0xcfa78d75bd005db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fminm.d f15, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x16, 0x82b99dd2027d2eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fminm.d f16, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x13, 0xa66377a678ea96b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fminm.d f13, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x27, 0xae6e2243afd142d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fminm.d f27, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x13, 0xcc30591b104c7c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fminm.d f13, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x9, 0x2a58811190261c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fminm.d f9, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x12, 0x2cb1aacd7b29e19a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fminm.d f12, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x13, 0x4c0949b719844a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fminm.d f13, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x11, 0x85b0fabdaa370cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fminm.d f11, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x29, 0x972ac3d327bb2094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fminm.d f29, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x11, 0xd2642163fe80f658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fminm.d f11, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x14, 0xe047c4d0d552df19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fminm.d f14, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x30, 0x07325d9609f00412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fminm.d f30, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x2, 0x0f02cab13255561e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fminm.d f2, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x15, 0x05ea1ab550bc1495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fminm.d f15, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x13, 0xd53fb472fdd178b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fminm.d f13, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x14, 0x2e32669db8479017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fminm.d f14, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x9, 0x624457ef243908be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fminm.d f9, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x28, 0xfe5dbc4df58e5cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fminm.d f28, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x17, 0x3b1613fb28c9c4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fminm.d f17, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x31, 0xfaae67a8bd60515d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fminm.d f31, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x20, 0xe447db9b45b7b6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fminm.d f20, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x17, 0x6a6d5c29b0a8d538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fminm.d f17, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x7, 0xa215a706c96e493e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fminm.d f7, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x18, 0xe406c4ec741719ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fminm.d f18, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x10, 0x27a9b06c4910774e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fminm.d f10, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x18, 0x3432a17a1b3ec3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fminm.d f18, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x14, 0x79a17ec646d5bc80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fminm.d f14, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x10, 0x5c07c567837080cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fminm.d f10, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0x82a72b5f07ea6593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fminm.d f16, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x9, 0x2cb7a5f256be5d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fminm.d f9, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x25, 0x7e75ac1988dd4e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fminm.d f25, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0x168d911f35b2b7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fminm.d f13, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x22, 0x5c2f062c53139664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fminm.d f22, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x16, 0x08fb7ace51e56278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fminm.d f16, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x29, 0x42c4777dd131d19b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fminm.d f29, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x29, 0x3c389218fa0d7c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fminm.d f29, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x3, 0xce350a3ec18caa0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fminm.d f3, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x26, 0x254229a39ec2f02a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fminm.d f26, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x25, 0x801fa2d1023de877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fminm.d f25, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x13, 0x810c435067d0d9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fminm.d f13, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x7, 0xff500933591d6350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fminm.d f7, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x22, 0x292568413c883dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fminm.d f22, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x30, 0x1947061c5b5c4ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fminm.d f30, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x31, 0xe83e2c914117f22a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fminm.d f31, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x8, 0x55f00f8bbd5ce883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fminm.d f8, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x11, 0x8cf4f77289c579a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fminm.d f11, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x21, 0xa1c015faedbdddfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
fminm.d f21, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x28, 0x4ec80b72041a2f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fminm.d f28, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x15, 0xa4c77ee0f1067d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fminm.d f15, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x13, 0x1beb307617747a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fminm.d f13, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x31, 0xb216176d73dab403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fminm.d f31, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x11, 0x7942fc5b66340d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fminm.d f11, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x20, 0xb6aec8bcb5a7d95b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fminm.d f20, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x11, 0xad62e2eb5fe3ba14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fminm.d f11, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x8, 0xe4f29b818cc22775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fminm.d f8, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x16, 0x9aa90b4453f5de61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fminm.d f16, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0xeb001d04ba0b67cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fminm.d f11, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x7, 0x13c0f583939c329f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fminm.d f7, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x5, 0xdf7f698aa18f3006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fminm.d f5, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x10, 0xa6e2318a54ef3bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fminm.d f10, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x12, 0x631bf5df4f37692c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fminm.d f12, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x2, 0xd447e16970e5c8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fminm.d f2, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x6, 0xf251ba7ba1d8c224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fminm.d f6, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x31, 0xcd64a2a1cdce87c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fminm.d f31, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x10, 0x2c662d3c88d685fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fminm.d f10, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x13, 0x84a8934c1c82b08e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
fminm.d f13, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x4, 0x2b21ebe9a2d68235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fminm.d f4, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x30, 0x6072509e1758e001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fminm.d f30, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x30, 0xe4b9f7779c6f250c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fminm.d f30, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x29, 0x0a292b2294d13346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fminm.d f29, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x15, 0xe027c9108d5054ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fminm.d f15, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x26, 0x687462e396621897 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fminm.d f26, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x7, 0xaca91542fc961aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fminm.d f7, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x13, 0xe0eafa9459cc1a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fminm.d f13, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x22, 0x8ab9d38849d330a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fminm.d f22, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x11, 0x7c4bc765071e3e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fminm.d f11, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x11, 0x6ede4de8fc03d525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fminm.d f11, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x17, 0x90ff235401fcf69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fminm.d f17, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x23, 0x91b0a694daad8ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fminm.d f23, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x19, 0x0feca964101995cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fminm.d f19, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x2, 0xc0bb92da848dddaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fminm.d f2, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x7, 0x8941a77d8377d2be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fminm.d f7, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x29, 0xbf2e1cfdf611d8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
fminm.d f29, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x8, 0x58517159045ddc5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fminm.d f8, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x21, 0x1f5bbb3136943b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fminm.d f21, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x20, 0x0cc80c8990c009d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fminm.d f20, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x5, 0xe56fb310f132bdcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fminm.d f5, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x4, 0xac536302888cad2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fminm.d f4, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x14, 0x2408c8c3b3036e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fminm.d f14, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x11, 0x36d2db8f5e943541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
fminm.d f11, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x9, 0x30e0e9ad81099aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fminm.d f9, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x9, 0xac9437ddb8d43e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fminm.d f9, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x27, 0xe2ec5deb5f0365a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fminm.d f27, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x18, 0x55ed34e5f1d42be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fminm.d f18, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x26, 0xbd7956f52c8dbbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fminm.d f26, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x26, 0x3bf8279e19aa63f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fminm.d f26, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x7, 0xe71904afeb20bb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fminm.d f7, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x5, 0x7ce6f6d4aff2944e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fminm.d f5, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x24, 0x059fe966df844a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fminm.d f24, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x23, 0x0cf4b962337eee0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fminm.d f23, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x1, 0x35010057c0f4183e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fminm.d f1, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x14, 0xed0c0d31ea2ccf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fminm.d f14, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x4, 0xed334f664fcf7649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fminm.d f4, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0xdd71efce721ef5a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fminm.d f4, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x8, 0x136662e032b7ac3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fminm.d f8, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x27, 0x73ea55ffff091206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fminm.d f27, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x11, 0x3412d7a7a6c15f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fminm.d f11, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x3, 0x88ef53141060a5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fminm.d f3, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x7, 0xd0fed1167c8f9038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fminm.d f7, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x4, 0x22850a6e94625818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fminm.d f4, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x4, 0x7228bd5ea615a05b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fminm.d f4, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x6, 0x6c1477d9e480679b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fminm.d f6, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x16, 0x4bd2898e7ee1d0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fminm.d f16, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x22, 0xcb0c0463222fd457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fminm.d f22, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x4, 0xa02905abe130a2db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fminm.d f4, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x14, 0x09a0350cf945ad25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fminm.d f14, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x10, 0x4319c62ef445f7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fminm.d f10, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x29, 0x2067768d3c6ad362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fminm.d f29, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x16, 0xee741547e80decf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fminm.d f16, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x26, 0x3358d31951823032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fminm.d f26, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x29, 0x0e688a4c8e38525a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fminm.d f29, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x31, 0x2a9e148bf590481f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fminm.d f31, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x30, 0xa90bcfdf73b85931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fminm.d f30, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x1, 0xf48e137435c466a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fminm.d f1, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x4, 0xa466dd6aec632ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fminm.d f4, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x8, 0xced1fcd5e0e2fca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fminm.d f8, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x24, 0x4ceb9be0cbfc7f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fminm.d f24, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x31, 0x481e6234cb6cbdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
fminm.d f31, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x4, 0x6a209d6a39b98c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fminm.d f4, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x18, 0x326ee498be1bdcc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
fminm.d f18, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x22, 0xdf5c794aff932fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fminm.d f22, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x10, 0x4914b39f4b205f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fminm.d f10, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x26, 0xfc5b64a8fb88a749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fminm.d f26, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x25, 0xf950c9d84803acd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fminm.d f25, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x28, 0xf1baece6fd9702dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fminm.d f28, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x2, 0x98b8c521ef2cb5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fminm.d f2, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x5, 0x34012205c42b2bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fminm.d f5, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x6, 0x08175d875eaea8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fminm.d f6, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x18, 0xfa18759b79a58e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fminm.d f18, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x10, 0xebbfd2bd2f287e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fminm.d f10, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x6, 0xe28e21cb8967b32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fminm.d f6, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x28, 0x4189f0448180c7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fminm.d f28, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x16, 0x593803385cbe6fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fminm.d f16, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x12, 0x96ec7d991d05c8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fminm.d f12, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x8, 0x7f86410882c6664e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fminm.d f8, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x11, 0xd57dad0bc4295e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fminm.d f11, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x6, 0x8db69b9b37743285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fminm.d f6, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x5, 0x3a9ebca56d201355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fminm.d f5, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x12, 0xbe2d7a05b78a53e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fminm.d f12, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x13, 0x6eed95362a5a3095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fminm.d f13, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x23, 0x7db8ef2b13e2c706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fminm.d f23, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x19, 0x9bb9fb79f9b63051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fminm.d f19, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x1, 0x3ae5f7719a196fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fminm.d f1, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x27, 0xc95b80271b7c6764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fminm.d f27, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x29, 0x4ece17e091129438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fminm.d f29, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x29, 0xa2e84bc954981ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fminm.d f29, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x3, 0xd588fa4331104961 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fminm.d f3, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x7, 0x4b8d761cb7876d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fminm.d f7, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x27, 0x0a356da8d4748471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fminm.d f27, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x18, 0xcef1ee107536c885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fminm.d f18, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x6, 0x5a025d412cbc08b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fminm.d f6, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x7, 0x8a494119061adfce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fminm.d f7, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x20, 0x76aeb6a61679bfc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fminm.d f20, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x21, 0xd209e55e1c39cec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fminm.d f21, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x12, 0xc1c8c42e7467ade0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fminm.d f12, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x16, 0x16736ae86f72adc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
fminm.d f16, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x27, 0x6899dbb3f2df1c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
fminm.d f27, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x14, 0x62298750d49245ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fminm.d f14, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x15, 0xf79faa805104fe6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fminm.d f15, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x2, 0x6f484a50055e162a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fminm.d f2, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x27, 0x3de4ce37674f9919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fminm.d f27, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x27, 0xc409f35cedb299ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fminm.d f27, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x23, 0x714fcd7263a37e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fminm.d f23, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x28, 0x27200c8a9b364ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fminm.d f28, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x22, 0x2155d0f85f3ad9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fminm.d f22, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x6, 0x0fb8049f36318814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fminm.d f6, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x15, 0x75b6bdf8c2600571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fminm.d f15, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x8, 0xa3284bbc898b252e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fminm.d f8, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x21, 0x2df7f91532f8c1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fminm.d f21, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x28, 0xa47bd0661aac88d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fminm.d f28, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x21, 0x61f7ff593e472958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fminm.d f21, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x9, 0x88e8dafa8e10d39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fminm.d f9, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x23, 0xbe9f02572f9547f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fminm.d f23, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x29, 0x992a3c06d4445b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fminm.d f29, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x9, 0x1c1a8a9ada5b5401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fminm.d f9, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x3, 0x43255a39b110a206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fminm.d f3, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x17, 0x5a2d5f4266e267d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fminm.d f17, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x1, 0x1a741434612cec56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fminm.d f1, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x30, 0xfda5a581eb2bf472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fminm.d f30, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x28, 0x873a37525e7cfd75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fminm.d f28, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x15, 0xda28c514b8a9cbda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fminm.d f15, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x26, 0xce8c26ead9e68a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fminm.d f26, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x12, 0x9174707860c21468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fminm.d f12, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x17, 0xf0ebc42daf3e7d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fminm.d f17, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x22, 0x88d1bbc8cce06293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fminm.d f22, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x22, 0x3d55de3dbb0a2f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fminm.d f22, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x31, 0xd3e891eb3c1cce78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fminm.d f31, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x8, 0x8b9ba0ea3b5956fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fminm.d f8, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x29, 0x0fc83df58613e399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fminm.d f29, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x12, 0x222e35cde146035c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fminm.d f12, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x3, 0x36b65fdb1ca272f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fminm.d f3, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x8, 0x5ff5f4725c7d4e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fminm.d f8, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x10, 0x061109d74d3fd544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fminm.d f10, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x14, 0x1bd2516554fb682e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fminm.d f14, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x12, 0x022a96e9faba775f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fminm.d f12, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x6, 0xa1f26025b4e5c26b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fminm.d f6, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x21, 0x2ded6c6d3d121b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fminm.d f21, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x28, 0x93fb4d197b117c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fminm.d f28, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x27, 0xbcadca6e70875d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fminm.d f27, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x4, 0xf6e57175e21daa2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fminm.d f4, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x22, 0xee637cbd2b595909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fminm.d f22, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x24, 0xc84940a60dd20f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fminm.d f24, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x23, 0x224dfa6da92c1909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fminm.d f23, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x5, 0xc7b53ab5a10af208 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fminm.d f5, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x3, 0x4d3fd5548a95e235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fminm.d f3, f10, f28 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xfebd75084db12ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4422e4539942f8ff # load x3 with value 0x4422e4539942f8ff
sd x3, 0(x2) # store 0x4422e4539942f8ff in memory
fld f28, 0(x2) # load 0x4422e4539942f8ff from memory into f28
li x3, 0x5be2152de2f2305f # load x3 with value 0x5be2152de2f2305f
sd x3, 0(x2) # store 0x5be2152de2f2305f in memory
fld f30, 0(x2) # load 0x5be2152de2f2305f from memory into f30
fminm.d f0, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x108fc55ecdf467f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdf5c933a048a5b2 # load x3 with value 0xcdf5c933a048a5b2
sd x3, 0(x2) # store 0xcdf5c933a048a5b2 in memory
fld f18, 0(x2) # load 0xcdf5c933a048a5b2 from memory into f18
li x3, 0x5467a26cba4cfec3 # load x3 with value 0x5467a26cba4cfec3
sd x3, 0(x2) # store 0x5467a26cba4cfec3 in memory
fld f19, 0(x2) # load 0x5467a26cba4cfec3 from memory into f19
fminm.d f1, f18, f19 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x1e0c2b9bf702d93d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0d80d6907b408ab # load x3 with value 0xd0d80d6907b408ab
sd x3, 0(x2) # store 0xd0d80d6907b408ab in memory
fld f5, 0(x2) # load 0xd0d80d6907b408ab from memory into f5
li x3, 0xae1be81644b93271 # load x3 with value 0xae1be81644b93271
sd x3, 0(x2) # store 0xae1be81644b93271 in memory
fld f10, 0(x2) # load 0xae1be81644b93271 from memory into f10
fminm.d f2, f5, f10 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x8070df8de0a882bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d8ef2d310d14f37 # load x3 with value 0x1d8ef2d310d14f37
sd x3, 0(x2) # store 0x1d8ef2d310d14f37 in memory
fld f23, 0(x2) # load 0x1d8ef2d310d14f37 from memory into f23
li x3, 0xe94e6d8045e25b67 # load x3 with value 0xe94e6d8045e25b67
sd x3, 0(x2) # store 0xe94e6d8045e25b67 in memory
fld f9, 0(x2) # load 0xe94e6d8045e25b67 from memory into f9
fminm.d f3, f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x81b81ce9c8172f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19337b6bd0117034 # load x3 with value 0x19337b6bd0117034
sd x3, 0(x2) # store 0x19337b6bd0117034 in memory
fld f24, 0(x2) # load 0x19337b6bd0117034 from memory into f24
li x3, 0x6f56acba4efae78a # load x3 with value 0x6f56acba4efae78a
sd x3, 0(x2) # store 0x6f56acba4efae78a in memory
fld f13, 0(x2) # load 0x6f56acba4efae78a from memory into f13
fminm.d f4, f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe3458320e8a66c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13ce654bc830a344 # load x3 with value 0x13ce654bc830a344
sd x3, 0(x2) # store 0x13ce654bc830a344 in memory
fld f24, 0(x2) # load 0x13ce654bc830a344 from memory into f24
li x3, 0x33c1716cc7aaffc7 # load x3 with value 0x33c1716cc7aaffc7
sd x3, 0(x2) # store 0x33c1716cc7aaffc7 in memory
fld f10, 0(x2) # load 0x33c1716cc7aaffc7 from memory into f10
fminm.d f5, f24, f10 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xe19d714633309e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1aeb655f58d75b88 # load x3 with value 0x1aeb655f58d75b88
sd x3, 0(x2) # store 0x1aeb655f58d75b88 in memory
fld f7, 0(x2) # load 0x1aeb655f58d75b88 from memory into f7
li x3, 0x7d43dcd5f872993c # load x3 with value 0x7d43dcd5f872993c
sd x3, 0(x2) # store 0x7d43dcd5f872993c in memory
fld f13, 0(x2) # load 0x7d43dcd5f872993c from memory into f13
fminm.d f6, f7, f13 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x37e769d8d5af2461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f52843ebee3ca2b # load x3 with value 0x9f52843ebee3ca2b
sd x3, 0(x2) # store 0x9f52843ebee3ca2b in memory
fld f22, 0(x2) # load 0x9f52843ebee3ca2b from memory into f22
li x3, 0xc8a01094aabf1dd7 # load x3 with value 0xc8a01094aabf1dd7
sd x3, 0(x2) # store 0xc8a01094aabf1dd7 in memory
fld f15, 0(x2) # load 0xc8a01094aabf1dd7 from memory into f15
fminm.d f7, f22, f15 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x5f3aeb574675ca31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x219b852fb789d5f3 # load x3 with value 0x219b852fb789d5f3
sd x3, 0(x2) # store 0x219b852fb789d5f3 in memory
fld f24, 0(x2) # load 0x219b852fb789d5f3 from memory into f24
li x3, 0x543fc5ac62a0be74 # load x3 with value 0x543fc5ac62a0be74
sd x3, 0(x2) # store 0x543fc5ac62a0be74 in memory
fld f6, 0(x2) # load 0x543fc5ac62a0be74 from memory into f6
fminm.d f8, f24, f6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x8cb23e8a129b2360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39083a592bb68284 # load x3 with value 0x39083a592bb68284
sd x3, 0(x2) # store 0x39083a592bb68284 in memory
fld f15, 0(x2) # load 0x39083a592bb68284 from memory into f15
li x3, 0xe85255e1dbf135fe # load x3 with value 0xe85255e1dbf135fe
sd x3, 0(x2) # store 0xe85255e1dbf135fe in memory
fld f7, 0(x2) # load 0xe85255e1dbf135fe from memory into f7
fminm.d f9, f15, f7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x26b77e7b33c9e60b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08a5e676411550d2 # load x3 with value 0x08a5e676411550d2
sd x3, 0(x2) # store 0x08a5e676411550d2 in memory
fld f2, 0(x2) # load 0x08a5e676411550d2 from memory into f2
li x3, 0xc9291fe855c3299a # load x3 with value 0xc9291fe855c3299a
sd x3, 0(x2) # store 0xc9291fe855c3299a in memory
fld f28, 0(x2) # load 0xc9291fe855c3299a from memory into f28
fminm.d f10, f2, f28 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x54a9f07e58ee1de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe070f39a5ad4f110 # load x3 with value 0xe070f39a5ad4f110
sd x3, 0(x2) # store 0xe070f39a5ad4f110 in memory
fld f9, 0(x2) # load 0xe070f39a5ad4f110 from memory into f9
li x3, 0xf1cbfe57f6adcde2 # load x3 with value 0xf1cbfe57f6adcde2
sd x3, 0(x2) # store 0xf1cbfe57f6adcde2 in memory
fld f3, 0(x2) # load 0xf1cbfe57f6adcde2 from memory into f3
fminm.d f11, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xb5d9b0cef126a3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x879fabb737b4ebae # load x3 with value 0x879fabb737b4ebae
sd x3, 0(x2) # store 0x879fabb737b4ebae in memory
fld f9, 0(x2) # load 0x879fabb737b4ebae from memory into f9
li x3, 0x9fdb91e1cf990c1c # load x3 with value 0x9fdb91e1cf990c1c
sd x3, 0(x2) # store 0x9fdb91e1cf990c1c in memory
fld f21, 0(x2) # load 0x9fdb91e1cf990c1c from memory into f21
fminm.d f12, f9, f21 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc20815214a785804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc0e1503ebb189a # load x3 with value 0xdbc0e1503ebb189a
sd x3, 0(x2) # store 0xdbc0e1503ebb189a in memory
fld f28, 0(x2) # load 0xdbc0e1503ebb189a from memory into f28
li x3, 0x2136d775dfff41fe # load x3 with value 0x2136d775dfff41fe
sd x3, 0(x2) # store 0x2136d775dfff41fe in memory
fld f2, 0(x2) # load 0x2136d775dfff41fe from memory into f2
fminm.d f13, f28, f2 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x872c79bea3a3e3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0a9091919fab0a4 # load x3 with value 0xb0a9091919fab0a4
sd x3, 0(x2) # store 0xb0a9091919fab0a4 in memory
fld f19, 0(x2) # load 0xb0a9091919fab0a4 from memory into f19
li x3, 0xe8291e245ed79d83 # load x3 with value 0xe8291e245ed79d83
sd x3, 0(x2) # store 0xe8291e245ed79d83 in memory
fld f29, 0(x2) # load 0xe8291e245ed79d83 from memory into f29
fminm.d f14, f19, f29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x58c1e585277a4dad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83be866bcc75cb21 # load x3 with value 0x83be866bcc75cb21
sd x3, 0(x2) # store 0x83be866bcc75cb21 in memory
fld f4, 0(x2) # load 0x83be866bcc75cb21 from memory into f4
li x3, 0xac652d96fc440470 # load x3 with value 0xac652d96fc440470
sd x3, 0(x2) # store 0xac652d96fc440470 in memory
fld f10, 0(x2) # load 0xac652d96fc440470 from memory into f10
fminm.d f15, f4, f10 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x19d89e56562ecfd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc33756e97d2f10cd # load x3 with value 0xc33756e97d2f10cd
sd x3, 0(x2) # store 0xc33756e97d2f10cd in memory
fld f11, 0(x2) # load 0xc33756e97d2f10cd from memory into f11
li x3, 0x5033e22bcdf5fe33 # load x3 with value 0x5033e22bcdf5fe33
sd x3, 0(x2) # store 0x5033e22bcdf5fe33 in memory
fld f10, 0(x2) # load 0x5033e22bcdf5fe33 from memory into f10
fminm.d f16, f11, f10 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xf77f88b89bf6f8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ea20bec6427b0fb # load x3 with value 0x6ea20bec6427b0fb
sd x3, 0(x2) # store 0x6ea20bec6427b0fb in memory
fld f17, 0(x2) # load 0x6ea20bec6427b0fb from memory into f17
li x3, 0x78df24fdeb70755c # load x3 with value 0x78df24fdeb70755c
sd x3, 0(x2) # store 0x78df24fdeb70755c in memory
fld f10, 0(x2) # load 0x78df24fdeb70755c from memory into f10
fminm.d f17, f17, f10 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x09b95aa6a4d58b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2c019a94dbd823c # load x3 with value 0xf2c019a94dbd823c
sd x3, 0(x2) # store 0xf2c019a94dbd823c in memory
fld f5, 0(x2) # load 0xf2c019a94dbd823c from memory into f5
li x3, 0xcdde59f1fc41dba9 # load x3 with value 0xcdde59f1fc41dba9
sd x3, 0(x2) # store 0xcdde59f1fc41dba9 in memory
fld f15, 0(x2) # load 0xcdde59f1fc41dba9 from memory into f15
fminm.d f18, f5, f15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x1a2b47f977fffb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaa97add81ae4993 # load x3 with value 0xdaa97add81ae4993
sd x3, 0(x2) # store 0xdaa97add81ae4993 in memory
fld f30, 0(x2) # load 0xdaa97add81ae4993 from memory into f30
li x3, 0x7d72d2049b64dc7c # load x3 with value 0x7d72d2049b64dc7c
sd x3, 0(x2) # store 0x7d72d2049b64dc7c in memory
fld f31, 0(x2) # load 0x7d72d2049b64dc7c from memory into f31
fminm.d f19, f30, f31 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x0c2124474204d6f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc79b003a06239ad3 # load x3 with value 0xc79b003a06239ad3
sd x3, 0(x2) # store 0xc79b003a06239ad3 in memory
fld f14, 0(x2) # load 0xc79b003a06239ad3 from memory into f14
li x3, 0x2af59521da929215 # load x3 with value 0x2af59521da929215
sd x3, 0(x2) # store 0x2af59521da929215 in memory
fld f10, 0(x2) # load 0x2af59521da929215 from memory into f10
fminm.d f20, f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xba483f127b3a3679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8337f843d81e1fc0 # load x3 with value 0x8337f843d81e1fc0
sd x3, 0(x2) # store 0x8337f843d81e1fc0 in memory
fld f15, 0(x2) # load 0x8337f843d81e1fc0 from memory into f15
li x3, 0x0e6cf75a6150b1b3 # load x3 with value 0x0e6cf75a6150b1b3
sd x3, 0(x2) # store 0x0e6cf75a6150b1b3 in memory
fld f3, 0(x2) # load 0x0e6cf75a6150b1b3 from memory into f3
fminm.d f21, f15, f3 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x0f4a178375662084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6251138b2c42a1f6 # load x3 with value 0x6251138b2c42a1f6
sd x3, 0(x2) # store 0x6251138b2c42a1f6 in memory
fld f4, 0(x2) # load 0x6251138b2c42a1f6 from memory into f4
li x3, 0xf83e7ddc7f278814 # load x3 with value 0xf83e7ddc7f278814
sd x3, 0(x2) # store 0xf83e7ddc7f278814 in memory
fld f14, 0(x2) # load 0xf83e7ddc7f278814 from memory into f14
fminm.d f22, f4, f14 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x87c52f44a9698b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54374411cb097d20 # load x3 with value 0x54374411cb097d20
sd x3, 0(x2) # store 0x54374411cb097d20 in memory
fld f10, 0(x2) # load 0x54374411cb097d20 from memory into f10
li x3, 0xd9725f3724961028 # load x3 with value 0xd9725f3724961028
sd x3, 0(x2) # store 0xd9725f3724961028 in memory
fld f4, 0(x2) # load 0xd9725f3724961028 from memory into f4
fminm.d f23, f10, f4 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xefaa8db43b067b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a7d01bf49da6c21 # load x3 with value 0x6a7d01bf49da6c21
sd x3, 0(x2) # store 0x6a7d01bf49da6c21 in memory
fld f15, 0(x2) # load 0x6a7d01bf49da6c21 from memory into f15
li x3, 0x840c23bb36d8ebf0 # load x3 with value 0x840c23bb36d8ebf0
sd x3, 0(x2) # store 0x840c23bb36d8ebf0 in memory
fld f2, 0(x2) # load 0x840c23bb36d8ebf0 from memory into f2
fminm.d f24, f15, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfb01512286aa76f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9232e6a42d0ddead # load x3 with value 0x9232e6a42d0ddead
sd x3, 0(x2) # store 0x9232e6a42d0ddead in memory
fld f19, 0(x2) # load 0x9232e6a42d0ddead from memory into f19
li x3, 0x1ceb95e44937a9b3 # load x3 with value 0x1ceb95e44937a9b3
sd x3, 0(x2) # store 0x1ceb95e44937a9b3 in memory
fld f15, 0(x2) # load 0x1ceb95e44937a9b3 from memory into f15
fminm.d f25, f19, f15 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x5f03900b22241402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x667ed19882fbed78 # load x3 with value 0x667ed19882fbed78
sd x3, 0(x2) # store 0x667ed19882fbed78 in memory
fld f10, 0(x2) # load 0x667ed19882fbed78 from memory into f10
li x3, 0x93191c73976a1d74 # load x3 with value 0x93191c73976a1d74
sd x3, 0(x2) # store 0x93191c73976a1d74 in memory
fld f24, 0(x2) # load 0x93191c73976a1d74 from memory into f24
fminm.d f26, f10, f24 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xeea95f4ef237663e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x002e1b62d56c2838 # load x3 with value 0x002e1b62d56c2838
sd x3, 0(x2) # store 0x002e1b62d56c2838 in memory
fld f15, 0(x2) # load 0x002e1b62d56c2838 from memory into f15
li x3, 0x03728249d58d7bb1 # load x3 with value 0x03728249d58d7bb1
sd x3, 0(x2) # store 0x03728249d58d7bb1 in memory
fld f26, 0(x2) # load 0x03728249d58d7bb1 from memory into f26
fminm.d f27, f15, f26 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x78ba470e37a46e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e5cbb646f410b71 # load x3 with value 0x9e5cbb646f410b71
sd x3, 0(x2) # store 0x9e5cbb646f410b71 in memory
fld f6, 0(x2) # load 0x9e5cbb646f410b71 from memory into f6
li x3, 0x03146d81a9a6b3a3 # load x3 with value 0x03146d81a9a6b3a3
sd x3, 0(x2) # store 0x03146d81a9a6b3a3 in memory
fld f25, 0(x2) # load 0x03146d81a9a6b3a3 from memory into f25
fminm.d f28, f6, f25 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xdcb39bb378e4b815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadd327bc2c33378d # load x3 with value 0xadd327bc2c33378d
sd x3, 0(x2) # store 0xadd327bc2c33378d in memory
fld f31, 0(x2) # load 0xadd327bc2c33378d from memory into f31
li x3, 0x97fa1739f1e51721 # load x3 with value 0x97fa1739f1e51721
sd x3, 0(x2) # store 0x97fa1739f1e51721 in memory
fld f14, 0(x2) # load 0x97fa1739f1e51721 from memory into f14
fminm.d f29, f31, f14 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xee863981b55a1101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda0cc69aa5d87f5d # load x3 with value 0xda0cc69aa5d87f5d
sd x3, 0(x2) # store 0xda0cc69aa5d87f5d in memory
fld f30, 0(x2) # load 0xda0cc69aa5d87f5d from memory into f30
li x3, 0x13951cec4fee1034 # load x3 with value 0x13951cec4fee1034
sd x3, 0(x2) # store 0x13951cec4fee1034 in memory
fld f25, 0(x2) # load 0x13951cec4fee1034 from memory into f25
fminm.d f30, f30, f25 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xc38f9e181c1ca70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b983ef9b7963b8e # load x3 with value 0x6b983ef9b7963b8e
sd x3, 0(x2) # store 0x6b983ef9b7963b8e in memory
fld f12, 0(x2) # load 0x6b983ef9b7963b8e from memory into f12
li x3, 0x719c71c13868af50 # load x3 with value 0x719c71c13868af50
sd x3, 0(x2) # store 0x719c71c13868af50 in memory
fld f2, 0(x2) # load 0x719c71c13868af50 from memory into f2
fminm.d f31, f12, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x16, 0xed8bb44a0c4cbbe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x487f4fa5ab9d4046 # load x3 with value 0x487f4fa5ab9d4046
sd x3, 0(x2) # store 0x487f4fa5ab9d4046 in memory
fld f0, 0(x2) # load 0x487f4fa5ab9d4046 from memory into f0
li x3, 0xef785604cd5b5d33 # load x3 with value 0xef785604cd5b5d33
sd x3, 0(x2) # store 0xef785604cd5b5d33 in memory
fld f8, 0(x2) # load 0xef785604cd5b5d33 from memory into f8
fminm.d f16, f0, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x23, 0x1024793759d380c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53d8f8837ee1420b # load x3 with value 0x53d8f8837ee1420b
sd x3, 0(x2) # store 0x53d8f8837ee1420b in memory
fld f1, 0(x2) # load 0x53d8f8837ee1420b from memory into f1
li x3, 0x0f7f920bbdae0400 # load x3 with value 0x0f7f920bbdae0400
sd x3, 0(x2) # store 0x0f7f920bbdae0400 in memory
fld f20, 0(x2) # load 0x0f7f920bbdae0400 from memory into f20
fminm.d f23, f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x13, 0xb7667cf0eed499a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3989c91248343ef3 # load x3 with value 0x3989c91248343ef3
sd x3, 0(x2) # store 0x3989c91248343ef3 in memory
fld f2, 0(x2) # load 0x3989c91248343ef3 from memory into f2
li x3, 0x77e1fbe0fb553ca7 # load x3 with value 0x77e1fbe0fb553ca7
sd x3, 0(x2) # store 0x77e1fbe0fb553ca7 in memory
fld f26, 0(x2) # load 0x77e1fbe0fb553ca7 from memory into f26
fminm.d f13, f2, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x9, 0xb2f430002ced84a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4ce5a4dbdbec2fb # load x3 with value 0xe4ce5a4dbdbec2fb
sd x3, 0(x2) # store 0xe4ce5a4dbdbec2fb in memory
fld f3, 0(x2) # load 0xe4ce5a4dbdbec2fb from memory into f3
li x3, 0xf5633a488e7d4e42 # load x3 with value 0xf5633a488e7d4e42
sd x3, 0(x2) # store 0xf5633a488e7d4e42 in memory
fld f19, 0(x2) # load 0xf5633a488e7d4e42 from memory into f19
fminm.d f9, f3, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x12, 0xf549fb4ec2a9dd21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe754af2f348f5992 # load x3 with value 0xe754af2f348f5992
sd x3, 0(x2) # store 0xe754af2f348f5992 in memory
fld f4, 0(x2) # load 0xe754af2f348f5992 from memory into f4
li x3, 0xabe907a955cbe252 # load x3 with value 0xabe907a955cbe252
sd x3, 0(x2) # store 0xabe907a955cbe252 in memory
fld f15, 0(x2) # load 0xabe907a955cbe252 from memory into f15
fminm.d f12, f4, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x28, 0xa9f46449324455b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38e9b44c1d4dba1a # load x3 with value 0x38e9b44c1d4dba1a
sd x3, 0(x2) # store 0x38e9b44c1d4dba1a in memory
fld f5, 0(x2) # load 0x38e9b44c1d4dba1a from memory into f5
li x3, 0x52d81119f3278f40 # load x3 with value 0x52d81119f3278f40
sd x3, 0(x2) # store 0x52d81119f3278f40 in memory
fld f26, 0(x2) # load 0x52d81119f3278f40 from memory into f26
fminm.d f28, f5, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x27, 0xbc2b272bc516f1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bd4ab5bcf977481 # load x3 with value 0x5bd4ab5bcf977481
sd x3, 0(x2) # store 0x5bd4ab5bcf977481 in memory
fld f6, 0(x2) # load 0x5bd4ab5bcf977481 from memory into f6
li x3, 0xb5062ec65fb4d46e # load x3 with value 0xb5062ec65fb4d46e
sd x3, 0(x2) # store 0xb5062ec65fb4d46e in memory
fld f28, 0(x2) # load 0xb5062ec65fb4d46e from memory into f28
fminm.d f27, f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x21, 0x2515b180e6e865de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57435a734704c397 # load x3 with value 0x57435a734704c397
sd x3, 0(x2) # store 0x57435a734704c397 in memory
fld f7, 0(x2) # load 0x57435a734704c397 from memory into f7
li x3, 0x293f8413f853bf47 # load x3 with value 0x293f8413f853bf47
sd x3, 0(x2) # store 0x293f8413f853bf47 in memory
fld f17, 0(x2) # load 0x293f8413f853bf47 from memory into f17
fminm.d f21, f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0x2d51e4535d5f7b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaaa27a67452eda01 # load x3 with value 0xaaa27a67452eda01
sd x3, 0(x2) # store 0xaaa27a67452eda01 in memory
fld f8, 0(x2) # load 0xaaa27a67452eda01 from memory into f8
li x3, 0xf85472f318974f0a # load x3 with value 0xf85472f318974f0a
sd x3, 0(x2) # store 0xf85472f318974f0a in memory
fld f21, 0(x2) # load 0xf85472f318974f0a from memory into f21
fminm.d f10, f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x10, 0x83cd87385ef03617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97fb23643c7b1ef8 # load x3 with value 0x97fb23643c7b1ef8
sd x3, 0(x2) # store 0x97fb23643c7b1ef8 in memory
fld f9, 0(x2) # load 0x97fb23643c7b1ef8 from memory into f9
li x3, 0x73fb5a697ceddf37 # load x3 with value 0x73fb5a697ceddf37
sd x3, 0(x2) # store 0x73fb5a697ceddf37 in memory
fld f5, 0(x2) # load 0x73fb5a697ceddf37 from memory into f5
fminm.d f10, f9, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x24, 0xe0a9e7402b20551c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc7814cf155791f3 # load x3 with value 0xcc7814cf155791f3
sd x3, 0(x2) # store 0xcc7814cf155791f3 in memory
fld f10, 0(x2) # load 0xcc7814cf155791f3 from memory into f10
li x3, 0x5c081fa4544a453d # load x3 with value 0x5c081fa4544a453d
sd x3, 0(x2) # store 0x5c081fa4544a453d in memory
fld f12, 0(x2) # load 0x5c081fa4544a453d from memory into f12
fminm.d f24, f10, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x11, 0xbf94e9ccc4f62489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9c4777a40d4b96b # load x3 with value 0xc9c4777a40d4b96b
sd x3, 0(x2) # store 0xc9c4777a40d4b96b in memory
fld f11, 0(x2) # load 0xc9c4777a40d4b96b from memory into f11
li x3, 0x19d9d84e5d267e45 # load x3 with value 0x19d9d84e5d267e45
sd x3, 0(x2) # store 0x19d9d84e5d267e45 in memory
fld f22, 0(x2) # load 0x19d9d84e5d267e45 from memory into f22
fminm.d f11, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x10, 0x62be9af29e4de5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c54cadc424319d3 # load x3 with value 0x6c54cadc424319d3
sd x3, 0(x2) # store 0x6c54cadc424319d3 in memory
fld f12, 0(x2) # load 0x6c54cadc424319d3 from memory into f12
li x3, 0x0c96ad916ebbaa3c # load x3 with value 0x0c96ad916ebbaa3c
sd x3, 0(x2) # store 0x0c96ad916ebbaa3c in memory
fld f21, 0(x2) # load 0x0c96ad916ebbaa3c from memory into f21
fminm.d f10, f12, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x6, 0x0dd2c5e47122aac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeb77655b7b98ec6 # load x3 with value 0xeeb77655b7b98ec6
sd x3, 0(x2) # store 0xeeb77655b7b98ec6 in memory
fld f13, 0(x2) # load 0xeeb77655b7b98ec6 from memory into f13
li x3, 0x3048e78d83b0d711 # load x3 with value 0x3048e78d83b0d711
sd x3, 0(x2) # store 0x3048e78d83b0d711 in memory
fld f22, 0(x2) # load 0x3048e78d83b0d711 from memory into f22
fminm.d f6, f13, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x31, 0x404497879bbce963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7263e37c353cf0cd # load x3 with value 0x7263e37c353cf0cd
sd x3, 0(x2) # store 0x7263e37c353cf0cd in memory
fld f14, 0(x2) # load 0x7263e37c353cf0cd from memory into f14
li x3, 0x8e5db80e5bbee514 # load x3 with value 0x8e5db80e5bbee514
sd x3, 0(x2) # store 0x8e5db80e5bbee514 in memory
fld f5, 0(x2) # load 0x8e5db80e5bbee514 from memory into f5
fminm.d f31, f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x10, 0x6f54f598d7f1a0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6c90b8029c6989c # load x3 with value 0xd6c90b8029c6989c
sd x3, 0(x2) # store 0xd6c90b8029c6989c in memory
fld f15, 0(x2) # load 0xd6c90b8029c6989c from memory into f15
li x3, 0x1bce066e4023e94d # load x3 with value 0x1bce066e4023e94d
sd x3, 0(x2) # store 0x1bce066e4023e94d in memory
fld f5, 0(x2) # load 0x1bce066e4023e94d from memory into f5
fminm.d f10, f15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x27, 0xb5b2910b8d8a190e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4a90fb210aa4f00 # load x3 with value 0xa4a90fb210aa4f00
sd x3, 0(x2) # store 0xa4a90fb210aa4f00 in memory
fld f16, 0(x2) # load 0xa4a90fb210aa4f00 from memory into f16
li x3, 0xb18b065326b5507e # load x3 with value 0xb18b065326b5507e
sd x3, 0(x2) # store 0xb18b065326b5507e in memory
fld f12, 0(x2) # load 0xb18b065326b5507e from memory into f12
fminm.d f27, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0xa5d7c8d0a0994f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29b78a0460cf376b # load x3 with value 0x29b78a0460cf376b
sd x3, 0(x2) # store 0x29b78a0460cf376b in memory
fld f17, 0(x2) # load 0x29b78a0460cf376b from memory into f17
li x3, 0x509bcc0b9681c1dd # load x3 with value 0x509bcc0b9681c1dd
sd x3, 0(x2) # store 0x509bcc0b9681c1dd in memory
fld f22, 0(x2) # load 0x509bcc0b9681c1dd from memory into f22
fminm.d f1, f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x30, 0xf5d304e4730af66b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x881a2dae1ee7e90a # load x3 with value 0x881a2dae1ee7e90a
sd x3, 0(x2) # store 0x881a2dae1ee7e90a in memory
fld f18, 0(x2) # load 0x881a2dae1ee7e90a from memory into f18
li x3, 0xc1bd0235fce98361 # load x3 with value 0xc1bd0235fce98361
sd x3, 0(x2) # store 0xc1bd0235fce98361 in memory
fld f11, 0(x2) # load 0xc1bd0235fce98361 from memory into f11
fminm.d f30, f18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x17, 0x2a50a37173d8b3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fe9cd43690607db # load x3 with value 0x3fe9cd43690607db
sd x3, 0(x2) # store 0x3fe9cd43690607db in memory
fld f19, 0(x2) # load 0x3fe9cd43690607db from memory into f19
li x3, 0x28ecbe10a8caceba # load x3 with value 0x28ecbe10a8caceba
sd x3, 0(x2) # store 0x28ecbe10a8caceba in memory
fld f20, 0(x2) # load 0x28ecbe10a8caceba from memory into f20
fminm.d f17, f19, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x16, 0x9370c019284ac9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e58b89f57ed6dbe # load x3 with value 0x0e58b89f57ed6dbe
sd x3, 0(x2) # store 0x0e58b89f57ed6dbe in memory
fld f20, 0(x2) # load 0x0e58b89f57ed6dbe from memory into f20
li x3, 0xac513edb79915e2f # load x3 with value 0xac513edb79915e2f
sd x3, 0(x2) # store 0xac513edb79915e2f in memory
fld f28, 0(x2) # load 0xac513edb79915e2f from memory into f28
fminm.d f16, f20, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x20, 0x8446a9992614728f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d9988a2abe3ff2d # load x3 with value 0x6d9988a2abe3ff2d
sd x3, 0(x2) # store 0x6d9988a2abe3ff2d in memory
fld f21, 0(x2) # load 0x6d9988a2abe3ff2d from memory into f21
li x3, 0xa25eecb4f6bf34c5 # load x3 with value 0xa25eecb4f6bf34c5
sd x3, 0(x2) # store 0xa25eecb4f6bf34c5 in memory
fld f26, 0(x2) # load 0xa25eecb4f6bf34c5 from memory into f26
fminm.d f20, f21, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x2, 0x0071cf6e0be3ff82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa68185fca0540d4 # load x3 with value 0xfa68185fca0540d4
sd x3, 0(x2) # store 0xfa68185fca0540d4 in memory
fld f22, 0(x2) # load 0xfa68185fca0540d4 from memory into f22
li x3, 0x31ea7ef5914bad43 # load x3 with value 0x31ea7ef5914bad43
sd x3, 0(x2) # store 0x31ea7ef5914bad43 in memory
fld f29, 0(x2) # load 0x31ea7ef5914bad43 from memory into f29
fminm.d f2, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x11, 0x1167a486b4d1336c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe68d5341447c6285 # load x3 with value 0xe68d5341447c6285
sd x3, 0(x2) # store 0xe68d5341447c6285 in memory
fld f23, 0(x2) # load 0xe68d5341447c6285 from memory into f23
li x3, 0x88eabc2f58e863cd # load x3 with value 0x88eabc2f58e863cd
sd x3, 0(x2) # store 0x88eabc2f58e863cd in memory
fld f13, 0(x2) # load 0x88eabc2f58e863cd from memory into f13
fminm.d f11, f23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x23, 0xb9eb8a04d3a35df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6080f370c0e1597 # load x3 with value 0xe6080f370c0e1597
sd x3, 0(x2) # store 0xe6080f370c0e1597 in memory
fld f24, 0(x2) # load 0xe6080f370c0e1597 from memory into f24
li x3, 0x84817cb44e9b002e # load x3 with value 0x84817cb44e9b002e
sd x3, 0(x2) # store 0x84817cb44e9b002e in memory
fld f16, 0(x2) # load 0x84817cb44e9b002e from memory into f16
fminm.d f23, f24, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x27, 0xad1fc707d031a2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6194037d1bfb2f0e # load x3 with value 0x6194037d1bfb2f0e
sd x3, 0(x2) # store 0x6194037d1bfb2f0e in memory
fld f25, 0(x2) # load 0x6194037d1bfb2f0e from memory into f25
li x3, 0xee85b846ee905034 # load x3 with value 0xee85b846ee905034
sd x3, 0(x2) # store 0xee85b846ee905034 in memory
fld f13, 0(x2) # load 0xee85b846ee905034 from memory into f13
fminm.d f27, f25, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x6, 0x6bbb243171c25db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0e7c769aff0c816 # load x3 with value 0xc0e7c769aff0c816
sd x3, 0(x2) # store 0xc0e7c769aff0c816 in memory
fld f26, 0(x2) # load 0xc0e7c769aff0c816 from memory into f26
li x3, 0xb0ced9759fad31dc # load x3 with value 0xb0ced9759fad31dc
sd x3, 0(x2) # store 0xb0ced9759fad31dc in memory
fld f2, 0(x2) # load 0xb0ced9759fad31dc from memory into f2
fminm.d f6, f26, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x7, 0x17bc602adec12ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf945308154145ba0 # load x3 with value 0xf945308154145ba0
sd x3, 0(x2) # store 0xf945308154145ba0 in memory
fld f27, 0(x2) # load 0xf945308154145ba0 from memory into f27
li x3, 0x0c8868c32033fccb # load x3 with value 0x0c8868c32033fccb
sd x3, 0(x2) # store 0x0c8868c32033fccb in memory
fld f6, 0(x2) # load 0x0c8868c32033fccb from memory into f6
fminm.d f7, f27, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x26, 0x06cb5f92442fe027 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0576c9fb11739591 # load x3 with value 0x0576c9fb11739591
sd x3, 0(x2) # store 0x0576c9fb11739591 in memory
fld f28, 0(x2) # load 0x0576c9fb11739591 from memory into f28
li x3, 0x3f0208de2a897e4b # load x3 with value 0x3f0208de2a897e4b
sd x3, 0(x2) # store 0x3f0208de2a897e4b in memory
fld f17, 0(x2) # load 0x3f0208de2a897e4b from memory into f17
fminm.d f26, f28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x29, 0xdce3fa56b59c368b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f05ed994be20f22 # load x3 with value 0x6f05ed994be20f22
sd x3, 0(x2) # store 0x6f05ed994be20f22 in memory
fld f29, 0(x2) # load 0x6f05ed994be20f22 from memory into f29
li x3, 0x363b9e5d517ba1e5 # load x3 with value 0x363b9e5d517ba1e5
sd x3, 0(x2) # store 0x363b9e5d517ba1e5 in memory
fld f27, 0(x2) # load 0x363b9e5d517ba1e5 from memory into f27
fminm.d f29, f29, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x30, 0x3c11b7b9cbbd0135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeb11dc0205af3a5 # load x3 with value 0xeeb11dc0205af3a5
sd x3, 0(x2) # store 0xeeb11dc0205af3a5 in memory
fld f30, 0(x2) # load 0xeeb11dc0205af3a5 from memory into f30
li x3, 0x5ff23e3c055857c0 # load x3 with value 0x5ff23e3c055857c0
sd x3, 0(x2) # store 0x5ff23e3c055857c0 in memory
fld f5, 0(x2) # load 0x5ff23e3c055857c0 from memory into f5
fminm.d f30, f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x7, 0x723e9bf86504108b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fcc67444a41358c # load x3 with value 0x8fcc67444a41358c
sd x3, 0(x2) # store 0x8fcc67444a41358c in memory
fld f31, 0(x2) # load 0x8fcc67444a41358c from memory into f31
li x3, 0x76dc9d6c93536dd5 # load x3 with value 0x76dc9d6c93536dd5
sd x3, 0(x2) # store 0x76dc9d6c93536dd5 in memory
fld f6, 0(x2) # load 0x76dc9d6c93536dd5 from memory into f6
fminm.d f7, f31, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x16, 0x7302196f9ce0103b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5663d4842c75a39 # load x3 with value 0xc5663d4842c75a39
sd x3, 0(x2) # store 0xc5663d4842c75a39 in memory
fld f27, 0(x2) # load 0xc5663d4842c75a39 from memory into f27
li x3, 0xd5650da761a39ef3 # load x3 with value 0xd5650da761a39ef3
sd x3, 0(x2) # store 0xd5650da761a39ef3 in memory
fld f0, 0(x2) # load 0xd5650da761a39ef3 from memory into f0
fminm.d f16, f27, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x4, 0x0e4615a5ba7c6c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fb08c43e3e1b221 # load x3 with value 0x1fb08c43e3e1b221
sd x3, 0(x2) # store 0x1fb08c43e3e1b221 in memory
fld f19, 0(x2) # load 0x1fb08c43e3e1b221 from memory into f19
li x3, 0x1f32e1cf317d0955 # load x3 with value 0x1f32e1cf317d0955
sd x3, 0(x2) # store 0x1f32e1cf317d0955 in memory
fld f1, 0(x2) # load 0x1f32e1cf317d0955 from memory into f1
fminm.d f4, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x18, 0xc3a2a7ce11498838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2e1e21fea03eef4 # load x3 with value 0xd2e1e21fea03eef4
sd x3, 0(x2) # store 0xd2e1e21fea03eef4 in memory
fld f12, 0(x2) # load 0xd2e1e21fea03eef4 from memory into f12
li x3, 0x362b51040a1459d7 # load x3 with value 0x362b51040a1459d7
sd x3, 0(x2) # store 0x362b51040a1459d7 in memory
fld f2, 0(x2) # load 0x362b51040a1459d7 from memory into f2
fminm.d f18, f12, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x28, 0x3f92be403d70159a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc51a42d468a19912 # load x3 with value 0xc51a42d468a19912
sd x3, 0(x2) # store 0xc51a42d468a19912 in memory
fld f30, 0(x2) # load 0xc51a42d468a19912 from memory into f30
li x3, 0x0172404fcb654bbf # load x3 with value 0x0172404fcb654bbf
sd x3, 0(x2) # store 0x0172404fcb654bbf in memory
fld f3, 0(x2) # load 0x0172404fcb654bbf from memory into f3
fminm.d f28, f30, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x22, 0xae7777922d8c47e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6383b2682b902dce # load x3 with value 0x6383b2682b902dce
sd x3, 0(x2) # store 0x6383b2682b902dce in memory
fld f7, 0(x2) # load 0x6383b2682b902dce from memory into f7
li x3, 0x78cbc1076c660268 # load x3 with value 0x78cbc1076c660268
sd x3, 0(x2) # store 0x78cbc1076c660268 in memory
fld f4, 0(x2) # load 0x78cbc1076c660268 from memory into f4
fminm.d f22, f7, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x29, 0x06a7e9c70180d07c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97db535675241817 # load x3 with value 0x97db535675241817
sd x3, 0(x2) # store 0x97db535675241817 in memory
fld f27, 0(x2) # load 0x97db535675241817 from memory into f27
li x3, 0xc63c950b540cda10 # load x3 with value 0xc63c950b540cda10
sd x3, 0(x2) # store 0xc63c950b540cda10 in memory
fld f5, 0(x2) # load 0xc63c950b540cda10 from memory into f5
fminm.d f29, f27, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x12, 0xab53e2b0667d4bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04cf9dda4be9e90d # load x3 with value 0x04cf9dda4be9e90d
sd x3, 0(x2) # store 0x04cf9dda4be9e90d in memory
fld f30, 0(x2) # load 0x04cf9dda4be9e90d from memory into f30
li x3, 0xe57f9f39b5b9e204 # load x3 with value 0xe57f9f39b5b9e204
sd x3, 0(x2) # store 0xe57f9f39b5b9e204 in memory
fld f6, 0(x2) # load 0xe57f9f39b5b9e204 from memory into f6
fminm.d f12, f30, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x23, 0xf09c05cfac93e7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb4c85a0a515b441 # load x3 with value 0xcb4c85a0a515b441
sd x3, 0(x2) # store 0xcb4c85a0a515b441 in memory
fld f19, 0(x2) # load 0xcb4c85a0a515b441 from memory into f19
li x3, 0x864e4616adc73cbc # load x3 with value 0x864e4616adc73cbc
sd x3, 0(x2) # store 0x864e4616adc73cbc in memory
fld f7, 0(x2) # load 0x864e4616adc73cbc from memory into f7
fminm.d f23, f19, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x10, 0x9345b2615159eb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0bee4257e229cb0 # load x3 with value 0xf0bee4257e229cb0
sd x3, 0(x2) # store 0xf0bee4257e229cb0 in memory
fld f22, 0(x2) # load 0xf0bee4257e229cb0 from memory into f22
li x3, 0x1abe81be542fbaa3 # load x3 with value 0x1abe81be542fbaa3
sd x3, 0(x2) # store 0x1abe81be542fbaa3 in memory
fld f8, 0(x2) # load 0x1abe81be542fbaa3 from memory into f8
fminm.d f10, f22, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x27, 0x71659a3e5cca83ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19ce4384eb0fa300 # load x3 with value 0x19ce4384eb0fa300
sd x3, 0(x2) # store 0x19ce4384eb0fa300 in memory
fld f29, 0(x2) # load 0x19ce4384eb0fa300 from memory into f29
li x3, 0x2b5d01705b69aa43 # load x3 with value 0x2b5d01705b69aa43
sd x3, 0(x2) # store 0x2b5d01705b69aa43 in memory
fld f9, 0(x2) # load 0x2b5d01705b69aa43 from memory into f9
fminm.d f27, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x9, 0xf6873ad5857f0553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc4f7cc21a0718fe # load x3 with value 0xbc4f7cc21a0718fe
sd x3, 0(x2) # store 0xbc4f7cc21a0718fe in memory
fld f24, 0(x2) # load 0xbc4f7cc21a0718fe from memory into f24
li x3, 0xc3415553b31c4740 # load x3 with value 0xc3415553b31c4740
sd x3, 0(x2) # store 0xc3415553b31c4740 in memory
fld f10, 0(x2) # load 0xc3415553b31c4740 from memory into f10
fminm.d f9, f24, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0xe23477ed1c34a45e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87432a1e334814d0 # load x3 with value 0x87432a1e334814d0
sd x3, 0(x2) # store 0x87432a1e334814d0 in memory
fld f23, 0(x2) # load 0x87432a1e334814d0 from memory into f23
li x3, 0xb86c1e27b9124b6d # load x3 with value 0xb86c1e27b9124b6d
sd x3, 0(x2) # store 0xb86c1e27b9124b6d in memory
fld f11, 0(x2) # load 0xb86c1e27b9124b6d from memory into f11
fminm.d f22, f23, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x31, 0xc6109430dd122845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe105b3f0c4fcfa7d # load x3 with value 0xe105b3f0c4fcfa7d
sd x3, 0(x2) # store 0xe105b3f0c4fcfa7d in memory
fld f30, 0(x2) # load 0xe105b3f0c4fcfa7d from memory into f30
li x3, 0x875680063c1915b6 # load x3 with value 0x875680063c1915b6
sd x3, 0(x2) # store 0x875680063c1915b6 in memory
fld f12, 0(x2) # load 0x875680063c1915b6 from memory into f12
fminm.d f31, f30, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x8, 0x1254a3636fba004b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0169928acc934ee # load x3 with value 0xe0169928acc934ee
sd x3, 0(x2) # store 0xe0169928acc934ee in memory
fld f16, 0(x2) # load 0xe0169928acc934ee from memory into f16
li x3, 0xd4bdbdf6baacd2c6 # load x3 with value 0xd4bdbdf6baacd2c6
sd x3, 0(x2) # store 0xd4bdbdf6baacd2c6 in memory
fld f13, 0(x2) # load 0xd4bdbdf6baacd2c6 from memory into f13
fminm.d f8, f16, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x7, 0x72fd1ceeba93beea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9beddc0cd9430d3 # load x3 with value 0xa9beddc0cd9430d3
sd x3, 0(x2) # store 0xa9beddc0cd9430d3 in memory
fld f26, 0(x2) # load 0xa9beddc0cd9430d3 from memory into f26
li x3, 0x0d2795439dca8b9e # load x3 with value 0x0d2795439dca8b9e
sd x3, 0(x2) # store 0x0d2795439dca8b9e in memory
fld f14, 0(x2) # load 0x0d2795439dca8b9e from memory into f14
fminm.d f7, f26, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x24, 0x4fa08f02ce57adec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbec23dd2b578ee00 # load x3 with value 0xbec23dd2b578ee00
sd x3, 0(x2) # store 0xbec23dd2b578ee00 in memory
fld f5, 0(x2) # load 0xbec23dd2b578ee00 from memory into f5
li x3, 0xd167f6a6a657a9a9 # load x3 with value 0xd167f6a6a657a9a9
sd x3, 0(x2) # store 0xd167f6a6a657a9a9 in memory
fld f15, 0(x2) # load 0xd167f6a6a657a9a9 from memory into f15
fminm.d f24, f5, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x2, 0x5c4ba08e182bb7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x597d0c6bdfaecb3e # load x3 with value 0x597d0c6bdfaecb3e
sd x3, 0(x2) # store 0x597d0c6bdfaecb3e in memory
fld f1, 0(x2) # load 0x597d0c6bdfaecb3e from memory into f1
li x3, 0x235fbbba24931c25 # load x3 with value 0x235fbbba24931c25
sd x3, 0(x2) # store 0x235fbbba24931c25 in memory
fld f16, 0(x2) # load 0x235fbbba24931c25 from memory into f16
fminm.d f2, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x24, 0xb247fd0fa016c281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02d1c1ee32794c24 # load x3 with value 0x02d1c1ee32794c24
sd x3, 0(x2) # store 0x02d1c1ee32794c24 in memory
fld f22, 0(x2) # load 0x02d1c1ee32794c24 from memory into f22
li x3, 0x6447c5ce5fc2ab93 # load x3 with value 0x6447c5ce5fc2ab93
sd x3, 0(x2) # store 0x6447c5ce5fc2ab93 in memory
fld f17, 0(x2) # load 0x6447c5ce5fc2ab93 from memory into f17
fminm.d f24, f22, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x4, 0x077ba6b91506d706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe2d0e9932326cbd # load x3 with value 0xfe2d0e9932326cbd
sd x3, 0(x2) # store 0xfe2d0e9932326cbd in memory
fld f22, 0(x2) # load 0xfe2d0e9932326cbd from memory into f22
li x3, 0xe67dc79bd7cd53ef # load x3 with value 0xe67dc79bd7cd53ef
sd x3, 0(x2) # store 0xe67dc79bd7cd53ef in memory
fld f18, 0(x2) # load 0xe67dc79bd7cd53ef from memory into f18
fminm.d f4, f22, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x22, 0x6028d74e0c0b1418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad929bb2704fcea2 # load x3 with value 0xad929bb2704fcea2
sd x3, 0(x2) # store 0xad929bb2704fcea2 in memory
fld f18, 0(x2) # load 0xad929bb2704fcea2 from memory into f18
li x3, 0x1715e414409ff81d # load x3 with value 0x1715e414409ff81d
sd x3, 0(x2) # store 0x1715e414409ff81d in memory
fld f19, 0(x2) # load 0x1715e414409ff81d from memory into f19
fminm.d f22, f18, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x21, 0xd3c7fee3264b5d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa75a0009bfde9891 # load x3 with value 0xa75a0009bfde9891
sd x3, 0(x2) # store 0xa75a0009bfde9891 in memory
fld f27, 0(x2) # load 0xa75a0009bfde9891 from memory into f27
li x3, 0x07cd8d4ae7ac55a2 # load x3 with value 0x07cd8d4ae7ac55a2
sd x3, 0(x2) # store 0x07cd8d4ae7ac55a2 in memory
fld f20, 0(x2) # load 0x07cd8d4ae7ac55a2 from memory into f20
fminm.d f21, f27, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x16, 0xd19821facc652b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a2ce4665f5603aa # load x3 with value 0x8a2ce4665f5603aa
sd x3, 0(x2) # store 0x8a2ce4665f5603aa in memory
fld f17, 0(x2) # load 0x8a2ce4665f5603aa from memory into f17
li x3, 0x76e9900aad4a3125 # load x3 with value 0x76e9900aad4a3125
sd x3, 0(x2) # store 0x76e9900aad4a3125 in memory
fld f21, 0(x2) # load 0x76e9900aad4a3125 from memory into f21
fminm.d f16, f17, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0xff2e4aa3b9ac1124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97e4ae4e23ab82eb # load x3 with value 0x97e4ae4e23ab82eb
sd x3, 0(x2) # store 0x97e4ae4e23ab82eb in memory
fld f15, 0(x2) # load 0x97e4ae4e23ab82eb from memory into f15
li x3, 0x89ad93f3a1ec723b # load x3 with value 0x89ad93f3a1ec723b
sd x3, 0(x2) # store 0x89ad93f3a1ec723b in memory
fld f22, 0(x2) # load 0x89ad93f3a1ec723b from memory into f22
fminm.d f7, f15, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x12, 0x42495621451bb44e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9280cb186eb66b5d # load x3 with value 0x9280cb186eb66b5d
sd x3, 0(x2) # store 0x9280cb186eb66b5d in memory
fld f14, 0(x2) # load 0x9280cb186eb66b5d from memory into f14
li x3, 0x2349147e096a249a # load x3 with value 0x2349147e096a249a
sd x3, 0(x2) # store 0x2349147e096a249a in memory
fld f23, 0(x2) # load 0x2349147e096a249a from memory into f23
fminm.d f12, f14, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x15, 0x4b156ad657c6c699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb285c4aa6fc9f22 # load x3 with value 0xdb285c4aa6fc9f22
sd x3, 0(x2) # store 0xdb285c4aa6fc9f22 in memory
fld f31, 0(x2) # load 0xdb285c4aa6fc9f22 from memory into f31
li x3, 0xc3eff0de5ff390ba # load x3 with value 0xc3eff0de5ff390ba
sd x3, 0(x2) # store 0xc3eff0de5ff390ba in memory
fld f24, 0(x2) # load 0xc3eff0de5ff390ba from memory into f24
fminm.d f15, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x14, 0x8d76e6b039898337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86787e98ab86e485 # load x3 with value 0x86787e98ab86e485
sd x3, 0(x2) # store 0x86787e98ab86e485 in memory
fld f18, 0(x2) # load 0x86787e98ab86e485 from memory into f18
li x3, 0x402633a2e2f60d34 # load x3 with value 0x402633a2e2f60d34
sd x3, 0(x2) # store 0x402633a2e2f60d34 in memory
fld f25, 0(x2) # load 0x402633a2e2f60d34 from memory into f25
fminm.d f14, f18, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x22, 0x04f99bb9479970fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x926e127b00ada08f # load x3 with value 0x926e127b00ada08f
sd x3, 0(x2) # store 0x926e127b00ada08f in memory
fld f31, 0(x2) # load 0x926e127b00ada08f from memory into f31
li x3, 0x89566d4063c278c1 # load x3 with value 0x89566d4063c278c1
sd x3, 0(x2) # store 0x89566d4063c278c1 in memory
fld f26, 0(x2) # load 0x89566d4063c278c1 from memory into f26
fminm.d f22, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x21, 0xb43e85adc6eced9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba8357cffb7e3955 # load x3 with value 0xba8357cffb7e3955
sd x3, 0(x2) # store 0xba8357cffb7e3955 in memory
fld f4, 0(x2) # load 0xba8357cffb7e3955 from memory into f4
li x3, 0xf6b715d1ea37721e # load x3 with value 0xf6b715d1ea37721e
sd x3, 0(x2) # store 0xf6b715d1ea37721e in memory
fld f27, 0(x2) # load 0xf6b715d1ea37721e from memory into f27
fminm.d f21, f4, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x14, 0x51dde8c82bd20775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd530079082b60c1a # load x3 with value 0xd530079082b60c1a
sd x3, 0(x2) # store 0xd530079082b60c1a in memory
fld f27, 0(x2) # load 0xd530079082b60c1a from memory into f27
li x3, 0x614c6d8cc473a755 # load x3 with value 0x614c6d8cc473a755
sd x3, 0(x2) # store 0x614c6d8cc473a755 in memory
fld f28, 0(x2) # load 0x614c6d8cc473a755 from memory into f28
fminm.d f14, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x19, 0xf501415dab572918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x521f0f085807962a # load x3 with value 0x521f0f085807962a
sd x3, 0(x2) # store 0x521f0f085807962a in memory
fld f26, 0(x2) # load 0x521f0f085807962a from memory into f26
li x3, 0x73954e1776771b32 # load x3 with value 0x73954e1776771b32
sd x3, 0(x2) # store 0x73954e1776771b32 in memory
fld f29, 0(x2) # load 0x73954e1776771b32 from memory into f29
fminm.d f19, f26, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x23, 0x47d5252626f5d6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd03108f1aad761c3 # load x3 with value 0xd03108f1aad761c3
sd x3, 0(x2) # store 0xd03108f1aad761c3 in memory
fld f14, 0(x2) # load 0xd03108f1aad761c3 from memory into f14
li x3, 0x5bc3b14073f09875 # load x3 with value 0x5bc3b14073f09875
sd x3, 0(x2) # store 0x5bc3b14073f09875 in memory
fld f30, 0(x2) # load 0x5bc3b14073f09875 from memory into f30
fminm.d f23, f14, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x6, 0x8a9315bc9f40bde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc48295246d45f2a # load x3 with value 0xbc48295246d45f2a
sd x3, 0(x2) # store 0xbc48295246d45f2a in memory
fld f16, 0(x2) # load 0xbc48295246d45f2a from memory into f16
li x3, 0x76f7f8ab553f4577 # load x3 with value 0x76f7f8ab553f4577
sd x3, 0(x2) # store 0x76f7f8ab553f4577 in memory
fld f31, 0(x2) # load 0x76f7f8ab553f4577 from memory into f31
fminm.d f6, f16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
