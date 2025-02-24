///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.lu.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.506385
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0x63a00a1183ec6daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d4cc87e8eaafb59 # load x3 with value 0x5d4cc87e8eaafb59
sd x3, 0(x2) # store 0x5d4cc87e8eaafb59 in memory
fld f29, 0(x2) # load 0x5d4cc87e8eaafb59 from memory into f29
fcvt.lu.d x0, f29 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x82044891d4af0cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e05a0eff01eb711 # load x3 with value 0x8e05a0eff01eb711
sd x3, 0(x2) # store 0x8e05a0eff01eb711 in memory
fld f16, 0(x2) # load 0x8e05a0eff01eb711 from memory into f16
fcvt.lu.d x1, f16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x456fd384948a5f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e0ce26b40bb4238 # load x3 with value 0x5e0ce26b40bb4238
sd x3, 0(x2) # store 0x5e0ce26b40bb4238 in memory
fld f26, 0(x2) # load 0x5e0ce26b40bb4238 from memory into f26
fcvt.lu.d x2, f26 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3a2f3f33608c68ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2c2276be4d73c036 # load x3 with value 0x2c2276be4d73c036
sd x3, 0(x2) # store 0x2c2276be4d73c036 in memory
fld f22, 0(x2) # load 0x2c2276be4d73c036 from memory into f22
fcvt.lu.d x3, f22 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xa3673485be8ba52b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6496830d288e08e6 # load x3 with value 0x6496830d288e08e6
sd x3, 0(x2) # store 0x6496830d288e08e6 in memory
fld f3, 0(x2) # load 0x6496830d288e08e6 from memory into f3
fcvt.lu.d x4, f3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xd1511b893739c48a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2496893df6a36ec4 # load x3 with value 0x2496893df6a36ec4
sd x3, 0(x2) # store 0x2496893df6a36ec4 in memory
fld f17, 0(x2) # load 0x2496893df6a36ec4 from memory into f17
fcvt.lu.d x5, f17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4e11ed6d978963a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x124799a4dd95a0dc # load x3 with value 0x124799a4dd95a0dc
sd x3, 0(x2) # store 0x124799a4dd95a0dc in memory
fld f7, 0(x2) # load 0x124799a4dd95a0dc from memory into f7
fcvt.lu.d x6, f7 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa6f1466d9307bfa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd88258999ea0521b # load x3 with value 0xd88258999ea0521b
sd x3, 0(x2) # store 0xd88258999ea0521b in memory
fld f24, 0(x2) # load 0xd88258999ea0521b from memory into f24
fcvt.lu.d x7, f24 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa5e559f8f8981cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1c3e8eed164130d5 # load x3 with value 0x1c3e8eed164130d5
sd x3, 0(x2) # store 0x1c3e8eed164130d5 in memory
fld f24, 0(x2) # load 0x1c3e8eed164130d5 from memory into f24
fcvt.lu.d x8, f24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x198b6ed547616c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3771317c1962c132 # load x3 with value 0x3771317c1962c132
sd x3, 0(x2) # store 0x3771317c1962c132 in memory
fld f25, 0(x2) # load 0x3771317c1962c132 from memory into f25
fcvt.lu.d x9, f25 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3b15b10885907f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1e5097e18aac2c7 # load x3 with value 0xe1e5097e18aac2c7
sd x3, 0(x2) # store 0xe1e5097e18aac2c7 in memory
fld f8, 0(x2) # load 0xe1e5097e18aac2c7 from memory into f8
fcvt.lu.d x10, f8 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x7cac99fe8563db78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x926c243e8fb5026a # load x3 with value 0x926c243e8fb5026a
sd x3, 0(x2) # store 0x926c243e8fb5026a in memory
fld f5, 0(x2) # load 0x926c243e8fb5026a from memory into f5
fcvt.lu.d x11, f5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5b6bc88bc748ed35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb794646d30ea8b09 # load x3 with value 0xb794646d30ea8b09
sd x3, 0(x2) # store 0xb794646d30ea8b09 in memory
fld f19, 0(x2) # load 0xb794646d30ea8b09 from memory into f19
fcvt.lu.d x12, f19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf6c770e9116c2d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc5f28a702a66d14 # load x3 with value 0xcc5f28a702a66d14
sd x3, 0(x2) # store 0xcc5f28a702a66d14 in memory
fld f9, 0(x2) # load 0xcc5f28a702a66d14 from memory into f9
fcvt.lu.d x13, f9 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5f911bc75a17d972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3f2fd9a042cc6d2 # load x3 with value 0xf3f2fd9a042cc6d2
sd x3, 0(x2) # store 0xf3f2fd9a042cc6d2 in memory
fld f20, 0(x2) # load 0xf3f2fd9a042cc6d2 from memory into f20
fcvt.lu.d x14, f20 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa898f192807b8b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xde1f21ddaabed9b1 # load x3 with value 0xde1f21ddaabed9b1
sd x3, 0(x2) # store 0xde1f21ddaabed9b1 in memory
fld f30, 0(x2) # load 0xde1f21ddaabed9b1 from memory into f30
fcvt.lu.d x15, f30 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x6681f330fee837f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xda91e4767ea45928 # load x3 with value 0xda91e4767ea45928
sd x3, 0(x2) # store 0xda91e4767ea45928 in memory
fld f30, 0(x2) # load 0xda91e4767ea45928 from memory into f30
fcvt.lu.d x16, f30 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xafa0842cf2a41ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa0a22da93eb50271 # load x3 with value 0xa0a22da93eb50271
sd x3, 0(x2) # store 0xa0a22da93eb50271 in memory
fld f30, 0(x2) # load 0xa0a22da93eb50271 from memory into f30
fcvt.lu.d x17, f30 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xcc0e4785f63800dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5719646bd8ea08a8 # load x3 with value 0x5719646bd8ea08a8
sd x3, 0(x2) # store 0x5719646bd8ea08a8 in memory
fld f29, 0(x2) # load 0x5719646bd8ea08a8 from memory into f29
fcvt.lu.d x18, f29 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd1cb743317b37e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x496e2a74e2cdb3e9 # load x3 with value 0x496e2a74e2cdb3e9
sd x3, 0(x2) # store 0x496e2a74e2cdb3e9 in memory
fld f25, 0(x2) # load 0x496e2a74e2cdb3e9 from memory into f25
fcvt.lu.d x19, f25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe51fe251104bbbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x113e35540e1a85ca # load x3 with value 0x113e35540e1a85ca
sd x3, 0(x2) # store 0x113e35540e1a85ca in memory
fld f6, 0(x2) # load 0x113e35540e1a85ca from memory into f6
fcvt.lu.d x20, f6 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2b4554ec039601cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2871370beb245312 # load x3 with value 0x2871370beb245312
sd x3, 0(x2) # store 0x2871370beb245312 in memory
fld f31, 0(x2) # load 0x2871370beb245312 from memory into f31
fcvt.lu.d x21, f31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x2299b3d05c75204b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc04d601534269ecb # load x3 with value 0xc04d601534269ecb
sd x3, 0(x2) # store 0xc04d601534269ecb in memory
fld f20, 0(x2) # load 0xc04d601534269ecb from memory into f20
fcvt.lu.d x22, f20 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd213779e85f09b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf5253241d11ec718 # load x3 with value 0xf5253241d11ec718
sd x3, 0(x2) # store 0xf5253241d11ec718 in memory
fld f7, 0(x2) # load 0xf5253241d11ec718 from memory into f7
fcvt.lu.d x23, f7 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x527181ca80888f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeafc7b2ad48bffc3 # load x3 with value 0xeafc7b2ad48bffc3
sd x3, 0(x2) # store 0xeafc7b2ad48bffc3 in memory
fld f18, 0(x2) # load 0xeafc7b2ad48bffc3 from memory into f18
fcvt.lu.d x24, f18 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa2d6172cbd421f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0107dcb2914da3c7 # load x3 with value 0x0107dcb2914da3c7
sd x3, 0(x2) # store 0x0107dcb2914da3c7 in memory
fld f28, 0(x2) # load 0x0107dcb2914da3c7 from memory into f28
fcvt.lu.d x25, f28 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb7b4022b1f2bd8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f1816b6202526f7 # load x3 with value 0x9f1816b6202526f7
sd x3, 0(x2) # store 0x9f1816b6202526f7 in memory
fld f13, 0(x2) # load 0x9f1816b6202526f7 from memory into f13
fcvt.lu.d x26, f13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6c0ed667caad7c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0afd6cb7072ccc61 # load x3 with value 0x0afd6cb7072ccc61
sd x3, 0(x2) # store 0x0afd6cb7072ccc61 in memory
fld f5, 0(x2) # load 0x0afd6cb7072ccc61 from memory into f5
fcvt.lu.d x27, f5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9ab9c5daecb1c280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd331b31e358412b5 # load x3 with value 0xd331b31e358412b5
sd x3, 0(x2) # store 0xd331b31e358412b5 in memory
fld f17, 0(x2) # load 0xd331b31e358412b5 from memory into f17
fcvt.lu.d x28, f17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xc903178065d94517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xccc89d2efd302412 # load x3 with value 0xccc89d2efd302412
sd x3, 0(x2) # store 0xccc89d2efd302412 in memory
fld f30, 0(x2) # load 0xccc89d2efd302412 from memory into f30
fcvt.lu.d x29, f30 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1a1994d2466af86c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ca94d5ee5c2992f # load x3 with value 0x7ca94d5ee5c2992f
sd x3, 0(x2) # store 0x7ca94d5ee5c2992f in memory
fld f2, 0(x2) # load 0x7ca94d5ee5c2992f from memory into f2
fcvt.lu.d x30, f2 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xc97f89e5a9b160a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x93199898b2903af5 # load x3 with value 0x93199898b2903af5
sd x3, 0(x2) # store 0x93199898b2903af5 in memory
fld f17, 0(x2) # load 0x93199898b2903af5 from memory into f17
fcvt.lu.d x31, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x3, 0xc3c3b623ee219d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fcvt.lu.d x3, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x6, 0x47b505a3fac6aca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fcvt.lu.d x6, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x6, 0x323dea5904b782c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fcvt.lu.d x6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x8, 0xfd90bf0e3d39a198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fcvt.lu.d x8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x31, 0x5077b1a485cf6dce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fcvt.lu.d x31, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x8, 0xd12eec326f071887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fcvt.lu.d x8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x25, 0x93d3d000fb482a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fcvt.lu.d x25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x10, 0x07790c5a86a454a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fcvt.lu.d x10, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x27, 0x3e85a82f63f184e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fcvt.lu.d x27, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x29, 0x0d9ca836d47bd1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fcvt.lu.d x29, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x13, 0x7fde631c8a01842d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fcvt.lu.d x13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x21, 0x55aaf8484ec00dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fcvt.lu.d x21, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x19, 0xb2fb8d7aea40b389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fcvt.lu.d x19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x21, 0x10645f1e46b77101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fcvt.lu.d x21, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x5, 0x5d2a58fb682ebff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fcvt.lu.d x5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x30, 0xceec9fc725611b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fcvt.lu.d x30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x14, 0xcae373fea3b790d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fcvt.lu.d x14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x26, 0x6e571dd03132dc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fcvt.lu.d x26, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x30, 0xbf94f7b2f1029fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fcvt.lu.d x30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x14, 0xc4912e61d57ea413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fcvt.lu.d x14, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x25, 0x1ca557ed6455785b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fcvt.lu.d x25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x30, 0x770d15ff949e215b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fcvt.lu.d x30, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x8, 0x2d2a37cbd539ca44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fcvt.lu.d x8, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x13, 0x6f2af99d08b874a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fcvt.lu.d x13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x1, 0xa79d3673ec8bc0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fcvt.lu.d x1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x5, 0x8be25d5d26591cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fcvt.lu.d x5, f17 # perform operation

# Testcase cp_frm
li x20, 0xceb2346b64cb063b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf1d8f2a2bb2cd11f # load x3 with value 0xf1d8f2a2bb2cd11f
sd x3, 0(x2) # store 0xf1d8f2a2bb2cd11f in memory
fld f10, 0(x2) # load 0xf1d8f2a2bb2cd11f from memory into f10
fcvt.lu.d x20, f10, dyn # perform operation
fcvt.lu.d x20, f10, rdn # perform operation
fcvt.lu.d x20, f10, rmm # perform operation
fcvt.lu.d x20, f10, rne # perform operation
fcvt.lu.d x20, f10, rtz # perform operation
fcvt.lu.d x20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x20, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x23, 0x0f2144939e301f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc4cc39c55da5404b # load x3 with value 0xc4cc39c55da5404b
sd x3, 0(x2) # store 0xc4cc39c55da5404b in memory
fld f0, 0(x2) # load 0xc4cc39c55da5404b from memory into f0
fcvt.lu.d x23, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x3, 0x7eb89b75c2b996e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x502ff4fcdca0c129 # load x3 with value 0x502ff4fcdca0c129
sd x3, 0(x2) # store 0x502ff4fcdca0c129 in memory
fld f1, 0(x2) # load 0x502ff4fcdca0c129 from memory into f1
fcvt.lu.d x3, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0x2a7272af81e3d5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9080b2fda5dc3a3e # load x3 with value 0x9080b2fda5dc3a3e
sd x3, 0(x2) # store 0x9080b2fda5dc3a3e in memory
fld f2, 0(x2) # load 0x9080b2fda5dc3a3e from memory into f2
fcvt.lu.d x12, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x10, 0x2b4465774d00ed10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb84e18ad9a0757bb # load x3 with value 0xb84e18ad9a0757bb
sd x3, 0(x2) # store 0xb84e18ad9a0757bb in memory
fld f3, 0(x2) # load 0xb84e18ad9a0757bb from memory into f3
fcvt.lu.d x10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x9, 0xe833376bc3db3f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4d04645b01950d8a # load x3 with value 0x4d04645b01950d8a
sd x3, 0(x2) # store 0x4d04645b01950d8a in memory
fld f4, 0(x2) # load 0x4d04645b01950d8a from memory into f4
fcvt.lu.d x9, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x18, 0x6ced6be88b68c9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16347326368f2fb6 # load x3 with value 0x16347326368f2fb6
sd x3, 0(x2) # store 0x16347326368f2fb6 in memory
fld f5, 0(x2) # load 0x16347326368f2fb6 from memory into f5
fcvt.lu.d x18, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0xca3e7cb8da18acff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf192a7738e736034 # load x3 with value 0xf192a7738e736034
sd x3, 0(x2) # store 0xf192a7738e736034 in memory
fld f6, 0(x2) # load 0xf192a7738e736034 from memory into f6
fcvt.lu.d x31, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x804713550475eee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa0e80782c944e189 # load x3 with value 0xa0e80782c944e189
sd x3, 0(x2) # store 0xa0e80782c944e189 in memory
fld f7, 0(x2) # load 0xa0e80782c944e189 from memory into f7
fcvt.lu.d x24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x23, 0x89879be772ae6073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa7ad628d5eadc8c2 # load x3 with value 0xa7ad628d5eadc8c2
sd x3, 0(x2) # store 0xa7ad628d5eadc8c2 in memory
fld f8, 0(x2) # load 0xa7ad628d5eadc8c2 from memory into f8
fcvt.lu.d x23, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0x91c15e39ba320a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x01799c3ca24f6d15 # load x3 with value 0x01799c3ca24f6d15
sd x3, 0(x2) # store 0x01799c3ca24f6d15 in memory
fld f9, 0(x2) # load 0x01799c3ca24f6d15 from memory into f9
fcvt.lu.d x13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0x7c3c9127023cbc47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16d03a3f176e12a3 # load x3 with value 0x16d03a3f176e12a3
sd x3, 0(x2) # store 0x16d03a3f176e12a3 in memory
fld f10, 0(x2) # load 0x16d03a3f176e12a3 from memory into f10
fcvt.lu.d x30, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x13, 0xb4693b26c87c6024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x58c21e8c54b5abe4 # load x3 with value 0x58c21e8c54b5abe4
sd x3, 0(x2) # store 0x58c21e8c54b5abe4 in memory
fld f11, 0(x2) # load 0x58c21e8c54b5abe4 from memory into f11
fcvt.lu.d x13, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x8, 0x0a8c69bca6ea5091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d7924e537b039e1 # load x3 with value 0x5d7924e537b039e1
sd x3, 0(x2) # store 0x5d7924e537b039e1 in memory
fld f12, 0(x2) # load 0x5d7924e537b039e1 from memory into f12
fcvt.lu.d x8, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x10, 0x342b60fb704cd061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a69c48c868e0bf1 # load x3 with value 0x6a69c48c868e0bf1
sd x3, 0(x2) # store 0x6a69c48c868e0bf1 in memory
fld f13, 0(x2) # load 0x6a69c48c868e0bf1 from memory into f13
fcvt.lu.d x10, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x31, 0x8e36fcf5f67a54cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc6354aff8d321995 # load x3 with value 0xc6354aff8d321995
sd x3, 0(x2) # store 0xc6354aff8d321995 in memory
fld f14, 0(x2) # load 0xc6354aff8d321995 from memory into f14
fcvt.lu.d x31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x18, 0x4ee90e1e64413a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf8cbaa7d5a25f61b # load x3 with value 0xf8cbaa7d5a25f61b
sd x3, 0(x2) # store 0xf8cbaa7d5a25f61b in memory
fld f15, 0(x2) # load 0xf8cbaa7d5a25f61b from memory into f15
fcvt.lu.d x18, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x5, 0x267d6cd5401f60ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x416db8112ecf7106 # load x3 with value 0x416db8112ecf7106
sd x3, 0(x2) # store 0x416db8112ecf7106 in memory
fld f16, 0(x2) # load 0x416db8112ecf7106 from memory into f16
fcvt.lu.d x5, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0x45e9cf9b3539c517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeff7bf5bb237da79 # load x3 with value 0xeff7bf5bb237da79
sd x3, 0(x2) # store 0xeff7bf5bb237da79 in memory
fld f17, 0(x2) # load 0xeff7bf5bb237da79 from memory into f17
fcvt.lu.d x1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0x49481f1626aee9c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfe4e71beabb618da # load x3 with value 0xfe4e71beabb618da
sd x3, 0(x2) # store 0xfe4e71beabb618da in memory
fld f18, 0(x2) # load 0xfe4e71beabb618da from memory into f18
fcvt.lu.d x21, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x13, 0x8fd3be1e23fddacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5454d9c4f9cc6c4d # load x3 with value 0x5454d9c4f9cc6c4d
sd x3, 0(x2) # store 0x5454d9c4f9cc6c4d in memory
fld f19, 0(x2) # load 0x5454d9c4f9cc6c4d from memory into f19
fcvt.lu.d x13, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x30, 0x7b4347e9e04625d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0dd0c49113326f82 # load x3 with value 0x0dd0c49113326f82
sd x3, 0(x2) # store 0x0dd0c49113326f82 in memory
fld f20, 0(x2) # load 0x0dd0c49113326f82 from memory into f20
fcvt.lu.d x30, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0x04c21758981898da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3d738b077dbd283f # load x3 with value 0x3d738b077dbd283f
sd x3, 0(x2) # store 0x3d738b077dbd283f in memory
fld f21, 0(x2) # load 0x3d738b077dbd283f from memory into f21
fcvt.lu.d x21, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0xfef8d8a602236589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2354ccb285c581bf # load x3 with value 0x2354ccb285c581bf
sd x3, 0(x2) # store 0x2354ccb285c581bf in memory
fld f22, 0(x2) # load 0x2354ccb285c581bf from memory into f22
fcvt.lu.d x20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x14, 0xd61477fe852c560f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf928c8cbfdacf35b # load x3 with value 0xf928c8cbfdacf35b
sd x3, 0(x2) # store 0xf928c8cbfdacf35b in memory
fld f23, 0(x2) # load 0xf928c8cbfdacf35b from memory into f23
fcvt.lu.d x14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0xc9a103c49c7d81e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb5126c01bb2aa23 # load x3 with value 0xbb5126c01bb2aa23
sd x3, 0(x2) # store 0xbb5126c01bb2aa23 in memory
fld f24, 0(x2) # load 0xbb5126c01bb2aa23 from memory into f24
fcvt.lu.d x17, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x28, 0x220ba41ab8873d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf1efc59bb8dd6dc2 # load x3 with value 0xf1efc59bb8dd6dc2
sd x3, 0(x2) # store 0xf1efc59bb8dd6dc2 in memory
fld f25, 0(x2) # load 0xf1efc59bb8dd6dc2 from memory into f25
fcvt.lu.d x28, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x29, 0x24f9a9749691cc4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0fdf83c1ec741a28 # load x3 with value 0x0fdf83c1ec741a28
sd x3, 0(x2) # store 0x0fdf83c1ec741a28 in memory
fld f26, 0(x2) # load 0x0fdf83c1ec741a28 from memory into f26
fcvt.lu.d x29, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0xb1f6b34bcbb9a9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x648d5edcebf2bbc9 # load x3 with value 0x648d5edcebf2bbc9
sd x3, 0(x2) # store 0x648d5edcebf2bbc9 in memory
fld f27, 0(x2) # load 0x648d5edcebf2bbc9 from memory into f27
fcvt.lu.d x1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x27, 0xaeefbfd07d6202ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f9d4cb36101323a # load x3 with value 0x6f9d4cb36101323a
sd x3, 0(x2) # store 0x6f9d4cb36101323a in memory
fld f28, 0(x2) # load 0x6f9d4cb36101323a from memory into f28
fcvt.lu.d x27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0xedb2195e3171247d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1e81294cb8dcaffc # load x3 with value 0x1e81294cb8dcaffc
sd x3, 0(x2) # store 0x1e81294cb8dcaffc in memory
fld f29, 0(x2) # load 0x1e81294cb8dcaffc from memory into f29
fcvt.lu.d x5, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0xce1d0cc1671a7c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcf3b605b6c64197a # load x3 with value 0xcf3b605b6c64197a
sd x3, 0(x2) # store 0xcf3b605b6c64197a in memory
fld f30, 0(x2) # load 0xcf3b605b6c64197a from memory into f30
fcvt.lu.d x19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x495afdf2f1d17bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7980a538fc3b31f # load x3 with value 0xe7980a538fc3b31f
sd x3, 0(x2) # store 0xe7980a538fc3b31f in memory
fld f31, 0(x2) # load 0xe7980a538fc3b31f from memory into f31
fcvt.lu.d x22, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
