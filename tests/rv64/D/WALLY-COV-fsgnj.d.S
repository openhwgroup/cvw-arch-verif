///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsgnj.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.774250
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


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x22, 0xa889ce62c5835ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0xa72671e5658fdb2d # load x3 with value 0xa72671e5658fdb2d
sd x3, 0(x2) # store 0xa72671e5658fdb2d in memory
fld f11, 0(x2) # load 0xa72671e5658fdb2d from memory into f11
fsgnj.d f22, f6, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x14, 0xf8ee74068925b3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
li x3, 0x0301a4eae4d95e11 # load x3 with value 0x0301a4eae4d95e11
sd x3, 0(x2) # store 0x0301a4eae4d95e11 in memory
fld f20, 0(x2) # load 0x0301a4eae4d95e11 from memory into f20
fsgnj.d f14, f7, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x11, 0x3a02a771c72d43c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0xaf6ac8a50a7b31c9 # load x3 with value 0xaf6ac8a50a7b31c9
sd x3, 0(x2) # store 0xaf6ac8a50a7b31c9 in memory
fld f22, 0(x2) # load 0xaf6ac8a50a7b31c9 from memory into f22
fsgnj.d f11, f12, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x25, 0x888870fe7072b8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x32dc06e05dd1d05d # load x3 with value 0x32dc06e05dd1d05d
sd x3, 0(x2) # store 0x32dc06e05dd1d05d in memory
fld f6, 0(x2) # load 0x32dc06e05dd1d05d from memory into f6
fsgnj.d f25, f20, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x10, 0x456742bed15e94f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0x63b95be3e2ce672b # load x3 with value 0x63b95be3e2ce672b
sd x3, 0(x2) # store 0x63b95be3e2ce672b in memory
fld f19, 0(x2) # load 0x63b95be3e2ce672b from memory into f19
fsgnj.d f10, f11, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x14, 0x29974f60a1d4db8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
li x3, 0xccc233ae22c658e9 # load x3 with value 0xccc233ae22c658e9
sd x3, 0(x2) # store 0xccc233ae22c658e9 in memory
fld f10, 0(x2) # load 0xccc233ae22c658e9 from memory into f10
fsgnj.d f14, f23, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x7, 0xc8bfc25ee103a137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0xf4dc52a65ba275e0 # load x3 with value 0xf4dc52a65ba275e0
sd x3, 0(x2) # store 0xf4dc52a65ba275e0 in memory
fld f17, 0(x2) # load 0xf4dc52a65ba275e0 from memory into f17
fsgnj.d f7, f21, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x17, 0xdb0faba950ac7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
li x3, 0xc85af72aee160f17 # load x3 with value 0xc85af72aee160f17
sd x3, 0(x2) # store 0xc85af72aee160f17 in memory
fld f28, 0(x2) # load 0xc85af72aee160f17 from memory into f28
fsgnj.d f17, f5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x23, 0x766f688a31b8e20a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x39132d0b1ea31865 # load x3 with value 0x39132d0b1ea31865
sd x3, 0(x2) # store 0x39132d0b1ea31865 in memory
fld f2, 0(x2) # load 0x39132d0b1ea31865 from memory into f2
fsgnj.d f23, f4, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x4, 0x126f00fb0538acfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0xd0542e26cb6e1417 # load x3 with value 0xd0542e26cb6e1417
sd x3, 0(x2) # store 0xd0542e26cb6e1417 in memory
fld f5, 0(x2) # load 0xd0542e26cb6e1417 from memory into f5
fsgnj.d f4, f18, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x9, 0x6c32ba0a79267004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0xb385e16fac9d7bb9 # load x3 with value 0xb385e16fac9d7bb9
sd x3, 0(x2) # store 0xb385e16fac9d7bb9 in memory
fld f14, 0(x2) # load 0xb385e16fac9d7bb9 from memory into f14
fsgnj.d f9, f19, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x5, 0xf2ea75ed27129f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0xf55f9e14ab7f3ee8 # load x3 with value 0xf55f9e14ab7f3ee8
sd x3, 0(x2) # store 0xf55f9e14ab7f3ee8 in memory
fld f24, 0(x2) # load 0xf55f9e14ab7f3ee8 from memory into f24
fsgnj.d f5, f22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x26, 0x3434076c5cbac3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x5e23838645723f3f # load x3 with value 0x5e23838645723f3f
sd x3, 0(x2) # store 0x5e23838645723f3f in memory
fld f21, 0(x2) # load 0x5e23838645723f3f from memory into f21
fsgnj.d f26, f17, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x17, 0xa0e4ffe0f9a06457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x616ee9193c0678e6 # load x3 with value 0x616ee9193c0678e6
sd x3, 0(x2) # store 0x616ee9193c0678e6 in memory
fld f10, 0(x2) # load 0x616ee9193c0678e6 from memory into f10
fsgnj.d f17, f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x7, 0x4b34764b31b1c577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
li x3, 0xa3e080289166c911 # load x3 with value 0xa3e080289166c911
sd x3, 0(x2) # store 0xa3e080289166c911 in memory
fld f31, 0(x2) # load 0xa3e080289166c911 from memory into f31
fsgnj.d f7, f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x17, 0xcc7505d8d3696da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0xee5c67dd76f6b22c # load x3 with value 0xee5c67dd76f6b22c
sd x3, 0(x2) # store 0xee5c67dd76f6b22c in memory
fld f25, 0(x2) # load 0xee5c67dd76f6b22c from memory into f25
fsgnj.d f17, f12, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x9, 0x4ac3969be680049d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0x4a5e72c6d8c81cf7 # load x3 with value 0x4a5e72c6d8c81cf7
sd x3, 0(x2) # store 0x4a5e72c6d8c81cf7 in memory
fld f18, 0(x2) # load 0x4a5e72c6d8c81cf7 from memory into f18
fsgnj.d f9, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x17, 0xcef589f8e3896de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
li x3, 0x322518e83abe16b9 # load x3 with value 0x322518e83abe16b9
sd x3, 0(x2) # store 0x322518e83abe16b9 in memory
fld f4, 0(x2) # load 0x322518e83abe16b9 from memory into f4
fsgnj.d f17, f14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x29, 0x0e04ea38f9f0c461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x2772cc0b57f30fa2 # load x3 with value 0x2772cc0b57f30fa2
sd x3, 0(x2) # store 0x2772cc0b57f30fa2 in memory
fld f20, 0(x2) # load 0x2772cc0b57f30fa2 from memory into f20
fsgnj.d f29, f6, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x10, 0x026330b4503d10a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x0803cbfd06374d66 # load x3 with value 0x0803cbfd06374d66
sd x3, 0(x2) # store 0x0803cbfd06374d66 in memory
fld f27, 0(x2) # load 0x0803cbfd06374d66 from memory into f27
fsgnj.d f10, f15, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x1, 0x51cba15ab51c911c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xe37feac51eafe862 # load x3 with value 0xe37feac51eafe862
sd x3, 0(x2) # store 0xe37feac51eafe862 in memory
fld f26, 0(x2) # load 0xe37feac51eafe862 from memory into f26
fsgnj.d f1, f11, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x27, 0x05949fd84ac9035d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0xd93d17b335372864 # load x3 with value 0xd93d17b335372864
sd x3, 0(x2) # store 0xd93d17b335372864 in memory
fld f9, 0(x2) # load 0xd93d17b335372864 from memory into f9
fsgnj.d f27, f2, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x23, 0x43a9493e6fea51a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x6e6156a024021b02 # load x3 with value 0x6e6156a024021b02
sd x3, 0(x2) # store 0x6e6156a024021b02 in memory
fld f12, 0(x2) # load 0x6e6156a024021b02 from memory into f12
fsgnj.d f23, f8, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x8, 0xfb241b3474a714de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x45bd6e0ff889e536 # load x3 with value 0x45bd6e0ff889e536
sd x3, 0(x2) # store 0x45bd6e0ff889e536 in memory
fld f18, 0(x2) # load 0x45bd6e0ff889e536 from memory into f18
fsgnj.d f8, f30, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x23, 0x75aa4caa6dd3b624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x77d412052746e7e6 # load x3 with value 0x77d412052746e7e6
sd x3, 0(x2) # store 0x77d412052746e7e6 in memory
fld f13, 0(x2) # load 0x77d412052746e7e6 from memory into f13
fsgnj.d f23, f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x31, 0x47b1d3877f6afe86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0xaa437253fcf5a51e # load x3 with value 0xaa437253fcf5a51e
sd x3, 0(x2) # store 0xaa437253fcf5a51e in memory
fld f5, 0(x2) # load 0xaa437253fcf5a51e from memory into f5
fsgnj.d f31, f15, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x1, 0x28892ecf1bebd11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbe9b499a024bb9 # load x3 with value 0x7fbe9b499a024bb9
sd x3, 0(x2) # store 0x7fbe9b499a024bb9 in memory
fld f17, 0(x2) # load 0x7fbe9b499a024bb9 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fsgnj.d f1, f17, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x26, 0xd82763ade2179054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29a0fc5400247ccc # load x3 with value 0x29a0fc5400247ccc
sd x3, 0(x2) # store 0x29a0fc5400247ccc in memory
fld f24, 0(x2) # load 0x29a0fc5400247ccc from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fsgnj.d f26, f24, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x17, 0xa9d766e55328fe24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f7f4aa572714dc4 # load x3 with value 0x6f7f4aa572714dc4
sd x3, 0(x2) # store 0x6f7f4aa572714dc4 in memory
fld f9, 0(x2) # load 0x6f7f4aa572714dc4 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fsgnj.d f17, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x21, 0x2c2ec1dc8ede75ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1b14a1689aa45e6 # load x3 with value 0xe1b14a1689aa45e6
sd x3, 0(x2) # store 0xe1b14a1689aa45e6 in memory
fld f15, 0(x2) # load 0xe1b14a1689aa45e6 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fsgnj.d f21, f15, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x31, 0x3e123b1098b5233f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2740ecd2a932280c # load x3 with value 0x2740ecd2a932280c
sd x3, 0(x2) # store 0x2740ecd2a932280c in memory
fld f5, 0(x2) # load 0x2740ecd2a932280c from memory into f5
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fsgnj.d f31, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x9, 0x2147cfe71de214fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb0e80f7cfa12468 # load x3 with value 0xfb0e80f7cfa12468
sd x3, 0(x2) # store 0xfb0e80f7cfa12468 in memory
fld f23, 0(x2) # load 0xfb0e80f7cfa12468 from memory into f23
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
fsgnj.d f9, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x24, 0x93844017841f0182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07698685bd13cb12 # load x3 with value 0x07698685bd13cb12
sd x3, 0(x2) # store 0x07698685bd13cb12 in memory
fld f28, 0(x2) # load 0x07698685bd13cb12 from memory into f28
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fsgnj.d f24, f28, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x29, 0x8db3e995d532def6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x477b6f24b6fdec31 # load x3 with value 0x477b6f24b6fdec31
sd x3, 0(x2) # store 0x477b6f24b6fdec31 in memory
fld f20, 0(x2) # load 0x477b6f24b6fdec31 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fsgnj.d f29, f20, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x16, 0x968d444029cdb2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ae56ca7e281c2cc # load x3 with value 0x1ae56ca7e281c2cc
sd x3, 0(x2) # store 0x1ae56ca7e281c2cc in memory
fld f5, 0(x2) # load 0x1ae56ca7e281c2cc from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fsgnj.d f16, f5, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x21, 0x2ab95d9d6b6d7858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe32c214bb4f83d6e # load x3 with value 0xe32c214bb4f83d6e
sd x3, 0(x2) # store 0xe32c214bb4f83d6e in memory
fld f23, 0(x2) # load 0xe32c214bb4f83d6e from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fsgnj.d f21, f23, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x16, 0xc0d713dbd756aa20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x205ff60ef49b51be # load x3 with value 0x205ff60ef49b51be
sd x3, 0(x2) # store 0x205ff60ef49b51be in memory
fld f27, 0(x2) # load 0x205ff60ef49b51be from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsgnj.d f16, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x23, 0xf54a0ee1ba75d829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2681c6cf9c16a91 # load x3 with value 0xd2681c6cf9c16a91
sd x3, 0(x2) # store 0xd2681c6cf9c16a91 in memory
fld f10, 0(x2) # load 0xd2681c6cf9c16a91 from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fsgnj.d f23, f10, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x30, 0xe1e689a3f8b94bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85fff72ebd782c01 # load x3 with value 0x85fff72ebd782c01
sd x3, 0(x2) # store 0x85fff72ebd782c01 in memory
fld f17, 0(x2) # load 0x85fff72ebd782c01 from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fsgnj.d f30, f17, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x15, 0x024d30960e226188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2a643ddee88eb0a # load x3 with value 0xc2a643ddee88eb0a
sd x3, 0(x2) # store 0xc2a643ddee88eb0a in memory
fld f25, 0(x2) # load 0xc2a643ddee88eb0a from memory into f25
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fsgnj.d f15, f25, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x30, 0x6e3849f2ec94cf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2218bb8caf8b64bd # load x3 with value 0x2218bb8caf8b64bd
sd x3, 0(x2) # store 0x2218bb8caf8b64bd in memory
fld f5, 0(x2) # load 0x2218bb8caf8b64bd from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fsgnj.d f30, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x2, 0x9358ab4d5c071c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91dc0f72d9948e78 # load x3 with value 0x91dc0f72d9948e78
sd x3, 0(x2) # store 0x91dc0f72d9948e78 in memory
fld f3, 0(x2) # load 0x91dc0f72d9948e78 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsgnj.d f2, f3, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x7, 0x9bad43359f5bd958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x602873f2a6eea846 # load x3 with value 0x602873f2a6eea846
sd x3, 0(x2) # store 0x602873f2a6eea846 in memory
fld f11, 0(x2) # load 0x602873f2a6eea846 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fsgnj.d f7, f11, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x24, 0xc0889fe7cd42ea91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3108c53049ce25f # load x3 with value 0xf3108c53049ce25f
sd x3, 0(x2) # store 0xf3108c53049ce25f in memory
fld f7, 0(x2) # load 0xf3108c53049ce25f from memory into f7
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fsgnj.d f24, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x19, 0x59a46d7dd41ce9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54c714f16652181e # load x3 with value 0x54c714f16652181e
sd x3, 0(x2) # store 0x54c714f16652181e in memory
fld f25, 0(x2) # load 0x54c714f16652181e from memory into f25
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
fsgnj.d f19, f25, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x10, 0x51922a369d900e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x427bde1899084219 # load x3 with value 0x427bde1899084219
sd x3, 0(x2) # store 0x427bde1899084219 in memory
fld f17, 0(x2) # load 0x427bde1899084219 from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fsgnj.d f10, f17, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x24, 0x8766cf7e137059bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1e2f294309bae9e # load x3 with value 0xb1e2f294309bae9e
sd x3, 0(x2) # store 0xb1e2f294309bae9e in memory
fld f4, 0(x2) # load 0xb1e2f294309bae9e from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fsgnj.d f24, f4, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x25, 0x5ef66750f26fe952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c61d414e3a0e69c # load x3 with value 0x9c61d414e3a0e69c
sd x3, 0(x2) # store 0x9c61d414e3a0e69c in memory
fld f30, 0(x2) # load 0x9c61d414e3a0e69c from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fsgnj.d f25, f30, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x15, 0x6f9f8e1ac734f3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84cf93cb37aad8ac # load x3 with value 0x84cf93cb37aad8ac
sd x3, 0(x2) # store 0x84cf93cb37aad8ac in memory
fld f26, 0(x2) # load 0x84cf93cb37aad8ac from memory into f26
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fsgnj.d f15, f26, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x19, 0x9a2238567854a827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0c9a9e33c1f5cd6 # load x3 with value 0xe0c9a9e33c1f5cd6
sd x3, 0(x2) # store 0xe0c9a9e33c1f5cd6 in memory
fld f12, 0(x2) # load 0xe0c9a9e33c1f5cd6 from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fsgnj.d f19, f12, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x23, 0x9508a300faad3f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03ace1038d3a7a20 # load x3 with value 0x03ace1038d3a7a20
sd x3, 0(x2) # store 0x03ace1038d3a7a20 in memory
fld f5, 0(x2) # load 0x03ace1038d3a7a20 from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fsgnj.d f23, f5, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x31, 0xcf4607a9aa35544f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b3f5b5a6f28630c # load x3 with value 0x0b3f5b5a6f28630c
sd x3, 0(x2) # store 0x0b3f5b5a6f28630c in memory
fld f8, 0(x2) # load 0x0b3f5b5a6f28630c from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fsgnj.d f31, f8, f21 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x36f4c7bc54a07468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x470b0ac7e17d88a2 # load x3 with value 0x470b0ac7e17d88a2
sd x3, 0(x2) # store 0x470b0ac7e17d88a2 in memory
fld f18, 0(x2) # load 0x470b0ac7e17d88a2 from memory into f18
li x3, 0xe4c3608731c4b1ea # load x3 with value 0xe4c3608731c4b1ea
sd x3, 0(x2) # store 0xe4c3608731c4b1ea in memory
fld f12, 0(x2) # load 0xe4c3608731c4b1ea from memory into f12
fsgnj.d f0, f18, f12 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xc1e269671b06bf92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0eb7cd57f31ff0df # load x3 with value 0x0eb7cd57f31ff0df
sd x3, 0(x2) # store 0x0eb7cd57f31ff0df in memory
fld f17, 0(x2) # load 0x0eb7cd57f31ff0df from memory into f17
li x3, 0x3cb9f002da79d230 # load x3 with value 0x3cb9f002da79d230
sd x3, 0(x2) # store 0x3cb9f002da79d230 in memory
fld f30, 0(x2) # load 0x3cb9f002da79d230 from memory into f30
fsgnj.d f1, f17, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb904ff846c5929e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02474f1d3cfe67c2 # load x3 with value 0x02474f1d3cfe67c2
sd x3, 0(x2) # store 0x02474f1d3cfe67c2 in memory
fld f8, 0(x2) # load 0x02474f1d3cfe67c2 from memory into f8
li x3, 0x415f0ff4ad41bef1 # load x3 with value 0x415f0ff4ad41bef1
sd x3, 0(x2) # store 0x415f0ff4ad41bef1 in memory
fld f27, 0(x2) # load 0x415f0ff4ad41bef1 from memory into f27
fsgnj.d f2, f8, f27 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x302230b44ee2735c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cbc1ba4e96c2df5 # load x3 with value 0x7cbc1ba4e96c2df5
sd x3, 0(x2) # store 0x7cbc1ba4e96c2df5 in memory
fld f19, 0(x2) # load 0x7cbc1ba4e96c2df5 from memory into f19
li x3, 0xc2598a7473512211 # load x3 with value 0xc2598a7473512211
sd x3, 0(x2) # store 0xc2598a7473512211 in memory
fld f5, 0(x2) # load 0xc2598a7473512211 from memory into f5
fsgnj.d f3, f19, f5 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4f219dd84f8df277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4cad3169917b846 # load x3 with value 0xa4cad3169917b846
sd x3, 0(x2) # store 0xa4cad3169917b846 in memory
fld f28, 0(x2) # load 0xa4cad3169917b846 from memory into f28
li x3, 0x9077f84fad64ed4b # load x3 with value 0x9077f84fad64ed4b
sd x3, 0(x2) # store 0x9077f84fad64ed4b in memory
fld f30, 0(x2) # load 0x9077f84fad64ed4b from memory into f30
fsgnj.d f4, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf270a53dcec54273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84b8a8af0aacbf83 # load x3 with value 0x84b8a8af0aacbf83
sd x3, 0(x2) # store 0x84b8a8af0aacbf83 in memory
fld f27, 0(x2) # load 0x84b8a8af0aacbf83 from memory into f27
li x3, 0x8965743a9779a8e4 # load x3 with value 0x8965743a9779a8e4
sd x3, 0(x2) # store 0x8965743a9779a8e4 in memory
fld f25, 0(x2) # load 0x8965743a9779a8e4 from memory into f25
fsgnj.d f5, f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xcd85a20ea690ba1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36f0466c6d39deca # load x3 with value 0x36f0466c6d39deca
sd x3, 0(x2) # store 0x36f0466c6d39deca in memory
fld f4, 0(x2) # load 0x36f0466c6d39deca from memory into f4
li x3, 0xe15bd28d64c6bcfd # load x3 with value 0xe15bd28d64c6bcfd
sd x3, 0(x2) # store 0xe15bd28d64c6bcfd in memory
fld f20, 0(x2) # load 0xe15bd28d64c6bcfd from memory into f20
fsgnj.d f6, f4, f20 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x8bc8e0a63795a40d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf569951cc83a590e # load x3 with value 0xf569951cc83a590e
sd x3, 0(x2) # store 0xf569951cc83a590e in memory
fld f2, 0(x2) # load 0xf569951cc83a590e from memory into f2
li x3, 0x2d9bc029082aa97f # load x3 with value 0x2d9bc029082aa97f
sd x3, 0(x2) # store 0x2d9bc029082aa97f in memory
fld f22, 0(x2) # load 0x2d9bc029082aa97f from memory into f22
fsgnj.d f7, f2, f22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xe8d2669b5d0e1dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x292acfa92974233a # load x3 with value 0x292acfa92974233a
sd x3, 0(x2) # store 0x292acfa92974233a in memory
fld f31, 0(x2) # load 0x292acfa92974233a from memory into f31
li x3, 0x3884dcc1bdb9a76f # load x3 with value 0x3884dcc1bdb9a76f
sd x3, 0(x2) # store 0x3884dcc1bdb9a76f in memory
fld f5, 0(x2) # load 0x3884dcc1bdb9a76f from memory into f5
fsgnj.d f8, f31, f5 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x44a8ac93df6b7587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b04ab466a3996f1 # load x3 with value 0x5b04ab466a3996f1
sd x3, 0(x2) # store 0x5b04ab466a3996f1 in memory
fld f22, 0(x2) # load 0x5b04ab466a3996f1 from memory into f22
li x3, 0xcfbf7f200a7f7fb5 # load x3 with value 0xcfbf7f200a7f7fb5
sd x3, 0(x2) # store 0xcfbf7f200a7f7fb5 in memory
fld f16, 0(x2) # load 0xcfbf7f200a7f7fb5 from memory into f16
fsgnj.d f9, f22, f16 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x1bc1ffe34937f020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa411bf056f338bbf # load x3 with value 0xa411bf056f338bbf
sd x3, 0(x2) # store 0xa411bf056f338bbf in memory
fld f26, 0(x2) # load 0xa411bf056f338bbf from memory into f26
li x3, 0xf1b103d705badbdd # load x3 with value 0xf1b103d705badbdd
sd x3, 0(x2) # store 0xf1b103d705badbdd in memory
fld f9, 0(x2) # load 0xf1b103d705badbdd from memory into f9
fsgnj.d f10, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x729d0cbec12feb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0323b01b694b240b # load x3 with value 0x0323b01b694b240b
sd x3, 0(x2) # store 0x0323b01b694b240b in memory
fld f5, 0(x2) # load 0x0323b01b694b240b from memory into f5
li x3, 0x2d5828650c2b307c # load x3 with value 0x2d5828650c2b307c
sd x3, 0(x2) # store 0x2d5828650c2b307c in memory
fld f16, 0(x2) # load 0x2d5828650c2b307c from memory into f16
fsgnj.d f11, f5, f16 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x5c5ad69d54786a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4771f0f88d02a5c # load x3 with value 0xd4771f0f88d02a5c
sd x3, 0(x2) # store 0xd4771f0f88d02a5c in memory
fld f19, 0(x2) # load 0xd4771f0f88d02a5c from memory into f19
li x3, 0xd7660dd56221d933 # load x3 with value 0xd7660dd56221d933
sd x3, 0(x2) # store 0xd7660dd56221d933 in memory
fld f21, 0(x2) # load 0xd7660dd56221d933 from memory into f21
fsgnj.d f12, f19, f21 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x293c9bda92e59163 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1566427189c402c8 # load x3 with value 0x1566427189c402c8
sd x3, 0(x2) # store 0x1566427189c402c8 in memory
fld f28, 0(x2) # load 0x1566427189c402c8 from memory into f28
li x3, 0x185e9d7485045da0 # load x3 with value 0x185e9d7485045da0
sd x3, 0(x2) # store 0x185e9d7485045da0 in memory
fld f8, 0(x2) # load 0x185e9d7485045da0 from memory into f8
fsgnj.d f13, f28, f8 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x42a1913c50efe5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59dbf17402b763f6 # load x3 with value 0x59dbf17402b763f6
sd x3, 0(x2) # store 0x59dbf17402b763f6 in memory
fld f1, 0(x2) # load 0x59dbf17402b763f6 from memory into f1
li x3, 0x1c6da201b88ad2a2 # load x3 with value 0x1c6da201b88ad2a2
sd x3, 0(x2) # store 0x1c6da201b88ad2a2 in memory
fld f24, 0(x2) # load 0x1c6da201b88ad2a2 from memory into f24
fsgnj.d f14, f1, f24 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x28f24734bbe63fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae867187767be7d5 # load x3 with value 0xae867187767be7d5
sd x3, 0(x2) # store 0xae867187767be7d5 in memory
fld f1, 0(x2) # load 0xae867187767be7d5 from memory into f1
li x3, 0x13263e01ed572191 # load x3 with value 0x13263e01ed572191
sd x3, 0(x2) # store 0x13263e01ed572191 in memory
fld f9, 0(x2) # load 0x13263e01ed572191 from memory into f9
fsgnj.d f15, f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb0390b18eb68c6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1052fcb3b2191de5 # load x3 with value 0x1052fcb3b2191de5
sd x3, 0(x2) # store 0x1052fcb3b2191de5 in memory
fld f27, 0(x2) # load 0x1052fcb3b2191de5 from memory into f27
li x3, 0x1cfde5e8f4d5dd21 # load x3 with value 0x1cfde5e8f4d5dd21
sd x3, 0(x2) # store 0x1cfde5e8f4d5dd21 in memory
fld f12, 0(x2) # load 0x1cfde5e8f4d5dd21 from memory into f12
fsgnj.d f16, f27, f12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xea8c8f015aeea0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6094f4359d17eec # load x3 with value 0xd6094f4359d17eec
sd x3, 0(x2) # store 0xd6094f4359d17eec in memory
fld f3, 0(x2) # load 0xd6094f4359d17eec from memory into f3
li x3, 0x58d8e082976fad55 # load x3 with value 0x58d8e082976fad55
sd x3, 0(x2) # store 0x58d8e082976fad55 in memory
fld f7, 0(x2) # load 0x58d8e082976fad55 from memory into f7
fsgnj.d f17, f3, f7 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x16849a600387389a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x305a2851dd0df001 # load x3 with value 0x305a2851dd0df001
sd x3, 0(x2) # store 0x305a2851dd0df001 in memory
fld f8, 0(x2) # load 0x305a2851dd0df001 from memory into f8
li x3, 0x208a0842877422b5 # load x3 with value 0x208a0842877422b5
sd x3, 0(x2) # store 0x208a0842877422b5 in memory
fld f1, 0(x2) # load 0x208a0842877422b5 from memory into f1
fsgnj.d f18, f8, f1 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x0d59d2a72ae802bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7274ca464dbf8c # load x3 with value 0x7f7274ca464dbf8c
sd x3, 0(x2) # store 0x7f7274ca464dbf8c in memory
fld f24, 0(x2) # load 0x7f7274ca464dbf8c from memory into f24
li x3, 0x5fd78d5ac43a18a9 # load x3 with value 0x5fd78d5ac43a18a9
sd x3, 0(x2) # store 0x5fd78d5ac43a18a9 in memory
fld f5, 0(x2) # load 0x5fd78d5ac43a18a9 from memory into f5
fsgnj.d f19, f24, f5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xb18be8600f5ea946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd45bc4e54d2448e2 # load x3 with value 0xd45bc4e54d2448e2
sd x3, 0(x2) # store 0xd45bc4e54d2448e2 in memory
fld f1, 0(x2) # load 0xd45bc4e54d2448e2 from memory into f1
li x3, 0x61529d5f83c54a5e # load x3 with value 0x61529d5f83c54a5e
sd x3, 0(x2) # store 0x61529d5f83c54a5e in memory
fld f19, 0(x2) # load 0x61529d5f83c54a5e from memory into f19
fsgnj.d f20, f1, f19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xb7bf711de5f34c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94780186870e9237 # load x3 with value 0x94780186870e9237
sd x3, 0(x2) # store 0x94780186870e9237 in memory
fld f21, 0(x2) # load 0x94780186870e9237 from memory into f21
li x3, 0x527e5e01098e60f4 # load x3 with value 0x527e5e01098e60f4
sd x3, 0(x2) # store 0x527e5e01098e60f4 in memory
fld f22, 0(x2) # load 0x527e5e01098e60f4 from memory into f22
fsgnj.d f21, f21, f22 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x9b30e3fc58bc2d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28c13b24146e6183 # load x3 with value 0x28c13b24146e6183
sd x3, 0(x2) # store 0x28c13b24146e6183 in memory
fld f17, 0(x2) # load 0x28c13b24146e6183 from memory into f17
li x3, 0xd6a8a45a271e6fa4 # load x3 with value 0xd6a8a45a271e6fa4
sd x3, 0(x2) # store 0xd6a8a45a271e6fa4 in memory
fld f1, 0(x2) # load 0xd6a8a45a271e6fa4 from memory into f1
fsgnj.d f22, f17, f1 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbddf7cce70c49ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2567e3b0aaaa359 # load x3 with value 0xe2567e3b0aaaa359
sd x3, 0(x2) # store 0xe2567e3b0aaaa359 in memory
fld f27, 0(x2) # load 0xe2567e3b0aaaa359 from memory into f27
li x3, 0x8acddd36c8a7d2ce # load x3 with value 0x8acddd36c8a7d2ce
sd x3, 0(x2) # store 0x8acddd36c8a7d2ce in memory
fld f25, 0(x2) # load 0x8acddd36c8a7d2ce from memory into f25
fsgnj.d f23, f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x579a8858f4e89093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c6019f08151044c # load x3 with value 0x2c6019f08151044c
sd x3, 0(x2) # store 0x2c6019f08151044c in memory
fld f8, 0(x2) # load 0x2c6019f08151044c from memory into f8
li x3, 0x94f4d6a69509ec15 # load x3 with value 0x94f4d6a69509ec15
sd x3, 0(x2) # store 0x94f4d6a69509ec15 in memory
fld f10, 0(x2) # load 0x94f4d6a69509ec15 from memory into f10
fsgnj.d f24, f8, f10 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x9cbd996edb3ba4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x307823f66db707b9 # load x3 with value 0x307823f66db707b9
sd x3, 0(x2) # store 0x307823f66db707b9 in memory
fld f10, 0(x2) # load 0x307823f66db707b9 from memory into f10
li x3, 0x5c9a7d37bd852c91 # load x3 with value 0x5c9a7d37bd852c91
sd x3, 0(x2) # store 0x5c9a7d37bd852c91 in memory
fld f21, 0(x2) # load 0x5c9a7d37bd852c91 from memory into f21
fsgnj.d f25, f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbffc7039079c49ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7ab84d7db10941b # load x3 with value 0xc7ab84d7db10941b
sd x3, 0(x2) # store 0xc7ab84d7db10941b in memory
fld f9, 0(x2) # load 0xc7ab84d7db10941b from memory into f9
li x3, 0x8af5e1277f6d37ea # load x3 with value 0x8af5e1277f6d37ea
sd x3, 0(x2) # store 0x8af5e1277f6d37ea in memory
fld f25, 0(x2) # load 0x8af5e1277f6d37ea from memory into f25
fsgnj.d f26, f9, f25 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xadbe57535dca91f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0863f67e9ae5d655 # load x3 with value 0x0863f67e9ae5d655
sd x3, 0(x2) # store 0x0863f67e9ae5d655 in memory
fld f15, 0(x2) # load 0x0863f67e9ae5d655 from memory into f15
li x3, 0x06de51923d1253af # load x3 with value 0x06de51923d1253af
sd x3, 0(x2) # store 0x06de51923d1253af in memory
fld f17, 0(x2) # load 0x06de51923d1253af from memory into f17
fsgnj.d f27, f15, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x0aa4404f60cc486b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40a27b1240aae763 # load x3 with value 0x40a27b1240aae763
sd x3, 0(x2) # store 0x40a27b1240aae763 in memory
fld f25, 0(x2) # load 0x40a27b1240aae763 from memory into f25
li x3, 0x75f4ff43f17f9f16 # load x3 with value 0x75f4ff43f17f9f16
sd x3, 0(x2) # store 0x75f4ff43f17f9f16 in memory
fld f23, 0(x2) # load 0x75f4ff43f17f9f16 from memory into f23
fsgnj.d f28, f25, f23 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xddfe2d65513f0741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccf758aea5e44768 # load x3 with value 0xccf758aea5e44768
sd x3, 0(x2) # store 0xccf758aea5e44768 in memory
fld f13, 0(x2) # load 0xccf758aea5e44768 from memory into f13
li x3, 0x4770cf9fc3cf9fe9 # load x3 with value 0x4770cf9fc3cf9fe9
sd x3, 0(x2) # store 0x4770cf9fc3cf9fe9 in memory
fld f19, 0(x2) # load 0x4770cf9fc3cf9fe9 from memory into f19
fsgnj.d f29, f13, f19 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe46da9ca7f0c0754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f4bb259ff1ba9cd # load x3 with value 0x0f4bb259ff1ba9cd
sd x3, 0(x2) # store 0x0f4bb259ff1ba9cd in memory
fld f10, 0(x2) # load 0x0f4bb259ff1ba9cd from memory into f10
li x3, 0x9b63c34ef9819667 # load x3 with value 0x9b63c34ef9819667
sd x3, 0(x2) # store 0x9b63c34ef9819667 in memory
fld f5, 0(x2) # load 0x9b63c34ef9819667 from memory into f5
fsgnj.d f30, f10, f5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x0922c0782aae9469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf76694fc456cabe5 # load x3 with value 0xf76694fc456cabe5
sd x3, 0(x2) # store 0xf76694fc456cabe5 in memory
fld f23, 0(x2) # load 0xf76694fc456cabe5 from memory into f23
li x3, 0x025e5602722eda18 # load x3 with value 0x025e5602722eda18
sd x3, 0(x2) # store 0x025e5602722eda18 in memory
fld f1, 0(x2) # load 0x025e5602722eda18 from memory into f1
fsgnj.d f31, f23, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x24, 0xf8758ef670f24803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bc3a0bc4726558f # load x3 with value 0x7bc3a0bc4726558f
sd x3, 0(x2) # store 0x7bc3a0bc4726558f in memory
fld f0, 0(x2) # load 0x7bc3a0bc4726558f from memory into f0
li x3, 0xb96a473a9e6f8f64 # load x3 with value 0xb96a473a9e6f8f64
sd x3, 0(x2) # store 0xb96a473a9e6f8f64 in memory
fld f4, 0(x2) # load 0xb96a473a9e6f8f64 from memory into f4
fsgnj.d f24, f0, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x22, 0x0d736bb41cb9b2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3a7a2e13e797372 # load x3 with value 0xa3a7a2e13e797372
sd x3, 0(x2) # store 0xa3a7a2e13e797372 in memory
fld f1, 0(x2) # load 0xa3a7a2e13e797372 from memory into f1
li x3, 0x94f0013780d701f4 # load x3 with value 0x94f0013780d701f4
sd x3, 0(x2) # store 0x94f0013780d701f4 in memory
fld f16, 0(x2) # load 0x94f0013780d701f4 from memory into f16
fsgnj.d f22, f1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x10, 0x00da2061256e08b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fe1aa6aee2488d7 # load x3 with value 0x2fe1aa6aee2488d7
sd x3, 0(x2) # store 0x2fe1aa6aee2488d7 in memory
fld f2, 0(x2) # load 0x2fe1aa6aee2488d7 from memory into f2
li x3, 0x6e0b0f7daad938f6 # load x3 with value 0x6e0b0f7daad938f6
sd x3, 0(x2) # store 0x6e0b0f7daad938f6 in memory
fld f11, 0(x2) # load 0x6e0b0f7daad938f6 from memory into f11
fsgnj.d f10, f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x28, 0x7b2d3655c7c90c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x552438a64587178b # load x3 with value 0x552438a64587178b
sd x3, 0(x2) # store 0x552438a64587178b in memory
fld f3, 0(x2) # load 0x552438a64587178b from memory into f3
li x3, 0xb3433359a9acee4c # load x3 with value 0xb3433359a9acee4c
sd x3, 0(x2) # store 0xb3433359a9acee4c in memory
fld f9, 0(x2) # load 0xb3433359a9acee4c from memory into f9
fsgnj.d f28, f3, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0x664c6642090046f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e6e65a3a8d7f503 # load x3 with value 0x7e6e65a3a8d7f503
sd x3, 0(x2) # store 0x7e6e65a3a8d7f503 in memory
fld f4, 0(x2) # load 0x7e6e65a3a8d7f503 from memory into f4
li x3, 0x66c0f89c32fb4854 # load x3 with value 0x66c0f89c32fb4854
sd x3, 0(x2) # store 0x66c0f89c32fb4854 in memory
fld f21, 0(x2) # load 0x66c0f89c32fb4854 from memory into f21
fsgnj.d f2, f4, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x17, 0x9bdcf834d9f905a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x666d19c457ae86a0 # load x3 with value 0x666d19c457ae86a0
sd x3, 0(x2) # store 0x666d19c457ae86a0 in memory
fld f5, 0(x2) # load 0x666d19c457ae86a0 from memory into f5
li x3, 0xcfa23150be6d24ec # load x3 with value 0xcfa23150be6d24ec
sd x3, 0(x2) # store 0xcfa23150be6d24ec in memory
fld f2, 0(x2) # load 0xcfa23150be6d24ec from memory into f2
fsgnj.d f17, f5, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0xdb7d12f7d53edf73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x763c98c4934b6683 # load x3 with value 0x763c98c4934b6683
sd x3, 0(x2) # store 0x763c98c4934b6683 in memory
fld f6, 0(x2) # load 0x763c98c4934b6683 from memory into f6
li x3, 0xd76d81400a3844ed # load x3 with value 0xd76d81400a3844ed
sd x3, 0(x2) # store 0xd76d81400a3844ed in memory
fld f8, 0(x2) # load 0xd76d81400a3844ed from memory into f8
fsgnj.d f31, f6, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0x2a5a70c9ec74efd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a01942501a3ec55 # load x3 with value 0x2a01942501a3ec55
sd x3, 0(x2) # store 0x2a01942501a3ec55 in memory
fld f7, 0(x2) # load 0x2a01942501a3ec55 from memory into f7
li x3, 0x3491b583950db6f4 # load x3 with value 0x3491b583950db6f4
sd x3, 0(x2) # store 0x3491b583950db6f4 in memory
fld f20, 0(x2) # load 0x3491b583950db6f4 from memory into f20
fsgnj.d f30, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x31, 0xc370ce28c4f76a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97b36693a7f800e2 # load x3 with value 0x97b36693a7f800e2
sd x3, 0(x2) # store 0x97b36693a7f800e2 in memory
fld f8, 0(x2) # load 0x97b36693a7f800e2 from memory into f8
li x3, 0x0740abdcf528bf77 # load x3 with value 0x0740abdcf528bf77
sd x3, 0(x2) # store 0x0740abdcf528bf77 in memory
fld f4, 0(x2) # load 0x0740abdcf528bf77 from memory into f4
fsgnj.d f31, f8, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x3, 0xd99496236c978850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae6b72c98a5ee3b9 # load x3 with value 0xae6b72c98a5ee3b9
sd x3, 0(x2) # store 0xae6b72c98a5ee3b9 in memory
fld f9, 0(x2) # load 0xae6b72c98a5ee3b9 from memory into f9
li x3, 0xf6a8b3309ddb014f # load x3 with value 0xf6a8b3309ddb014f
sd x3, 0(x2) # store 0xf6a8b3309ddb014f in memory
fld f22, 0(x2) # load 0xf6a8b3309ddb014f from memory into f22
fsgnj.d f3, f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x25, 0x358cf919d27dbeec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aaa26146970742a # load x3 with value 0x7aaa26146970742a
sd x3, 0(x2) # store 0x7aaa26146970742a in memory
fld f10, 0(x2) # load 0x7aaa26146970742a from memory into f10
li x3, 0x4f5f3abb8bbcf007 # load x3 with value 0x4f5f3abb8bbcf007
sd x3, 0(x2) # store 0x4f5f3abb8bbcf007 in memory
fld f21, 0(x2) # load 0x4f5f3abb8bbcf007 from memory into f21
fsgnj.d f25, f10, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0x92c070324626f859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00ccb0090c219eff # load x3 with value 0x00ccb0090c219eff
sd x3, 0(x2) # store 0x00ccb0090c219eff in memory
fld f11, 0(x2) # load 0x00ccb0090c219eff from memory into f11
li x3, 0x89a67280195f1dbe # load x3 with value 0x89a67280195f1dbe
sd x3, 0(x2) # store 0x89a67280195f1dbe in memory
fld f14, 0(x2) # load 0x89a67280195f1dbe from memory into f14
fsgnj.d f19, f11, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0xa8cea5f830c6eb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec1fbc1bd9a55fa8 # load x3 with value 0xec1fbc1bd9a55fa8
sd x3, 0(x2) # store 0xec1fbc1bd9a55fa8 in memory
fld f12, 0(x2) # load 0xec1fbc1bd9a55fa8 from memory into f12
li x3, 0xebebc3854b4d839e # load x3 with value 0xebebc3854b4d839e
sd x3, 0(x2) # store 0xebebc3854b4d839e in memory
fld f22, 0(x2) # load 0xebebc3854b4d839e from memory into f22
fsgnj.d f11, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0x09ecd391462a4a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4db0e4710c14091b # load x3 with value 0x4db0e4710c14091b
sd x3, 0(x2) # store 0x4db0e4710c14091b in memory
fld f13, 0(x2) # load 0x4db0e4710c14091b from memory into f13
li x3, 0x0326fc91bad2a190 # load x3 with value 0x0326fc91bad2a190
sd x3, 0(x2) # store 0x0326fc91bad2a190 in memory
fld f16, 0(x2) # load 0x0326fc91bad2a190 from memory into f16
fsgnj.d f20, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x4, 0x08a78bd8b97a19f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78851a383d32e964 # load x3 with value 0x78851a383d32e964
sd x3, 0(x2) # store 0x78851a383d32e964 in memory
fld f14, 0(x2) # load 0x78851a383d32e964 from memory into f14
li x3, 0x4a2ca5c3032e7f25 # load x3 with value 0x4a2ca5c3032e7f25
sd x3, 0(x2) # store 0x4a2ca5c3032e7f25 in memory
fld f28, 0(x2) # load 0x4a2ca5c3032e7f25 from memory into f28
fsgnj.d f4, f14, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x20, 0x33c4935d992d770c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc65d9063674d1967 # load x3 with value 0xc65d9063674d1967
sd x3, 0(x2) # store 0xc65d9063674d1967 in memory
fld f15, 0(x2) # load 0xc65d9063674d1967 from memory into f15
li x3, 0x61c8a56d3d4532f3 # load x3 with value 0x61c8a56d3d4532f3
sd x3, 0(x2) # store 0x61c8a56d3d4532f3 in memory
fld f14, 0(x2) # load 0x61c8a56d3d4532f3 from memory into f14
fsgnj.d f20, f15, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x26, 0xac03edd42de94a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0560925fe7367b72 # load x3 with value 0x0560925fe7367b72
sd x3, 0(x2) # store 0x0560925fe7367b72 in memory
fld f16, 0(x2) # load 0x0560925fe7367b72 from memory into f16
li x3, 0xfb3b39d92660d1c5 # load x3 with value 0xfb3b39d92660d1c5
sd x3, 0(x2) # store 0xfb3b39d92660d1c5 in memory
fld f9, 0(x2) # load 0xfb3b39d92660d1c5 from memory into f9
fsgnj.d f26, f16, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0x27c535d467a68565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bc1e2195e0c1996 # load x3 with value 0x3bc1e2195e0c1996
sd x3, 0(x2) # store 0x3bc1e2195e0c1996 in memory
fld f17, 0(x2) # load 0x3bc1e2195e0c1996 from memory into f17
li x3, 0xccf34453a08a1709 # load x3 with value 0xccf34453a08a1709
sd x3, 0(x2) # store 0xccf34453a08a1709 in memory
fld f28, 0(x2) # load 0xccf34453a08a1709 from memory into f28
fsgnj.d f16, f17, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0x42405af0cae0becc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ae518e473136a64 # load x3 with value 0x7ae518e473136a64
sd x3, 0(x2) # store 0x7ae518e473136a64 in memory
fld f18, 0(x2) # load 0x7ae518e473136a64 from memory into f18
li x3, 0xff5dadf36efd4609 # load x3 with value 0xff5dadf36efd4609
sd x3, 0(x2) # store 0xff5dadf36efd4609 in memory
fld f21, 0(x2) # load 0xff5dadf36efd4609 from memory into f21
fsgnj.d f20, f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x21, 0x8e9b2b5b000b34e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fc31df45559ce69 # load x3 with value 0x2fc31df45559ce69
sd x3, 0(x2) # store 0x2fc31df45559ce69 in memory
fld f19, 0(x2) # load 0x2fc31df45559ce69 from memory into f19
li x3, 0x842e99fe923d3051 # load x3 with value 0x842e99fe923d3051
sd x3, 0(x2) # store 0x842e99fe923d3051 in memory
fld f25, 0(x2) # load 0x842e99fe923d3051 from memory into f25
fsgnj.d f21, f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x29, 0x8105fecda7eca7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5761ccda84d6e006 # load x3 with value 0x5761ccda84d6e006
sd x3, 0(x2) # store 0x5761ccda84d6e006 in memory
fld f20, 0(x2) # load 0x5761ccda84d6e006 from memory into f20
li x3, 0x6a7d8e69912d5c95 # load x3 with value 0x6a7d8e69912d5c95
sd x3, 0(x2) # store 0x6a7d8e69912d5c95 in memory
fld f27, 0(x2) # load 0x6a7d8e69912d5c95 from memory into f27
fsgnj.d f29, f20, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x15, 0xe0781bb02152045b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x364fb9118171c074 # load x3 with value 0x364fb9118171c074
sd x3, 0(x2) # store 0x364fb9118171c074 in memory
fld f21, 0(x2) # load 0x364fb9118171c074 from memory into f21
li x3, 0xec46d84c6b78b217 # load x3 with value 0xec46d84c6b78b217
sd x3, 0(x2) # store 0xec46d84c6b78b217 in memory
fld f18, 0(x2) # load 0xec46d84c6b78b217 from memory into f18
fsgnj.d f15, f21, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x23, 0xfa369e5b6f97e703 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7be6bf071eafa561 # load x3 with value 0x7be6bf071eafa561
sd x3, 0(x2) # store 0x7be6bf071eafa561 in memory
fld f22, 0(x2) # load 0x7be6bf071eafa561 from memory into f22
li x3, 0xc887675bedc96a46 # load x3 with value 0xc887675bedc96a46
sd x3, 0(x2) # store 0xc887675bedc96a46 in memory
fld f9, 0(x2) # load 0xc887675bedc96a46 from memory into f9
fsgnj.d f23, f22, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0xfd73c9d5a5d456bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d1a9a323f021ec6 # load x3 with value 0x8d1a9a323f021ec6
sd x3, 0(x2) # store 0x8d1a9a323f021ec6 in memory
fld f23, 0(x2) # load 0x8d1a9a323f021ec6 from memory into f23
li x3, 0xb300937e59b71128 # load x3 with value 0xb300937e59b71128
sd x3, 0(x2) # store 0xb300937e59b71128 in memory
fld f2, 0(x2) # load 0xb300937e59b71128 from memory into f2
fsgnj.d f26, f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x26, 0x3a89df7746ef53eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf7352be3bd70af5 # load x3 with value 0xdf7352be3bd70af5
sd x3, 0(x2) # store 0xdf7352be3bd70af5 in memory
fld f24, 0(x2) # load 0xdf7352be3bd70af5 from memory into f24
li x3, 0x75d78acb32230086 # load x3 with value 0x75d78acb32230086
sd x3, 0(x2) # store 0x75d78acb32230086 in memory
fld f18, 0(x2) # load 0x75d78acb32230086 from memory into f18
fsgnj.d f26, f24, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x23, 0x184e40453e9664c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf61ee64bc8077102 # load x3 with value 0xf61ee64bc8077102
sd x3, 0(x2) # store 0xf61ee64bc8077102 in memory
fld f25, 0(x2) # load 0xf61ee64bc8077102 from memory into f25
li x3, 0x140b9fb78d6f9c12 # load x3 with value 0x140b9fb78d6f9c12
sd x3, 0(x2) # store 0x140b9fb78d6f9c12 in memory
fld f16, 0(x2) # load 0x140b9fb78d6f9c12 from memory into f16
fsgnj.d f23, f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x31, 0x40379219361a2a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fd8f8c00a9e8f9d # load x3 with value 0x4fd8f8c00a9e8f9d
sd x3, 0(x2) # store 0x4fd8f8c00a9e8f9d in memory
fld f26, 0(x2) # load 0x4fd8f8c00a9e8f9d from memory into f26
li x3, 0xce19711f355d0ec8 # load x3 with value 0xce19711f355d0ec8
sd x3, 0(x2) # store 0xce19711f355d0ec8 in memory
fld f8, 0(x2) # load 0xce19711f355d0ec8 from memory into f8
fsgnj.d f31, f26, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x26, 0x48e29f3c83e858de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b7020303d4e609f # load x3 with value 0x5b7020303d4e609f
sd x3, 0(x2) # store 0x5b7020303d4e609f in memory
fld f27, 0(x2) # load 0x5b7020303d4e609f from memory into f27
li x3, 0x8e2b3abbbb2e315e # load x3 with value 0x8e2b3abbbb2e315e
sd x3, 0(x2) # store 0x8e2b3abbbb2e315e in memory
fld f28, 0(x2) # load 0x8e2b3abbbb2e315e from memory into f28
fsgnj.d f26, f27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x16, 0xe988aad22fe97ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d9a9a454851d2d8 # load x3 with value 0x6d9a9a454851d2d8
sd x3, 0(x2) # store 0x6d9a9a454851d2d8 in memory
fld f28, 0(x2) # load 0x6d9a9a454851d2d8 from memory into f28
li x3, 0xc9640ee3c2d96849 # load x3 with value 0xc9640ee3c2d96849
sd x3, 0(x2) # store 0xc9640ee3c2d96849 in memory
fld f11, 0(x2) # load 0xc9640ee3c2d96849 from memory into f11
fsgnj.d f16, f28, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x11, 0x37add45f4e93148a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ce53f62a7c8e65c # load x3 with value 0x4ce53f62a7c8e65c
sd x3, 0(x2) # store 0x4ce53f62a7c8e65c in memory
fld f29, 0(x2) # load 0x4ce53f62a7c8e65c from memory into f29
li x3, 0x50c732b4e6001446 # load x3 with value 0x50c732b4e6001446
sd x3, 0(x2) # store 0x50c732b4e6001446 in memory
fld f27, 0(x2) # load 0x50c732b4e6001446 from memory into f27
fsgnj.d f11, f29, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x22, 0x752bd4651f23d028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe93aa80fbab7e7f2 # load x3 with value 0xe93aa80fbab7e7f2
sd x3, 0(x2) # store 0xe93aa80fbab7e7f2 in memory
fld f30, 0(x2) # load 0xe93aa80fbab7e7f2 from memory into f30
li x3, 0x7c405268c04509f4 # load x3 with value 0x7c405268c04509f4
sd x3, 0(x2) # store 0x7c405268c04509f4 in memory
fld f25, 0(x2) # load 0x7c405268c04509f4 from memory into f25
fsgnj.d f22, f30, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x6, 0xbefc1e6c2f29fdf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8257a4198cd149c # load x3 with value 0xd8257a4198cd149c
sd x3, 0(x2) # store 0xd8257a4198cd149c in memory
fld f31, 0(x2) # load 0xd8257a4198cd149c from memory into f31
li x3, 0x72c5edfc64837bd7 # load x3 with value 0x72c5edfc64837bd7
sd x3, 0(x2) # store 0x72c5edfc64837bd7 in memory
fld f8, 0(x2) # load 0x72c5edfc64837bd7 from memory into f8
fsgnj.d f6, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x31, 0xb7003cc09313159a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x629d3df4765cff3a # load x3 with value 0x629d3df4765cff3a
sd x3, 0(x2) # store 0x629d3df4765cff3a in memory
fld f22, 0(x2) # load 0x629d3df4765cff3a from memory into f22
li x3, 0x51debf6bd79e5f75 # load x3 with value 0x51debf6bd79e5f75
sd x3, 0(x2) # store 0x51debf6bd79e5f75 in memory
fld f0, 0(x2) # load 0x51debf6bd79e5f75 from memory into f0
fsgnj.d f31, f22, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x4, 0x7764b50649f9216c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e49d49443bc5aa3 # load x3 with value 0x9e49d49443bc5aa3
sd x3, 0(x2) # store 0x9e49d49443bc5aa3 in memory
fld f25, 0(x2) # load 0x9e49d49443bc5aa3 from memory into f25
li x3, 0x265c95d5ef4e97e0 # load x3 with value 0x265c95d5ef4e97e0
sd x3, 0(x2) # store 0x265c95d5ef4e97e0 in memory
fld f1, 0(x2) # load 0x265c95d5ef4e97e0 from memory into f1
fsgnj.d f4, f25, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x10, 0x7ef2501db9ffbf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6285f66f425ae0fc # load x3 with value 0x6285f66f425ae0fc
sd x3, 0(x2) # store 0x6285f66f425ae0fc in memory
fld f18, 0(x2) # load 0x6285f66f425ae0fc from memory into f18
li x3, 0xdcf90c8466c85998 # load x3 with value 0xdcf90c8466c85998
sd x3, 0(x2) # store 0xdcf90c8466c85998 in memory
fld f2, 0(x2) # load 0xdcf90c8466c85998 from memory into f2
fsgnj.d f10, f18, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x31, 0x01ebf9d15520794e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e2c95f0e5e7c4f0 # load x3 with value 0x4e2c95f0e5e7c4f0
sd x3, 0(x2) # store 0x4e2c95f0e5e7c4f0 in memory
fld f5, 0(x2) # load 0x4e2c95f0e5e7c4f0 from memory into f5
li x3, 0x9f8da225ff50e985 # load x3 with value 0x9f8da225ff50e985
sd x3, 0(x2) # store 0x9f8da225ff50e985 in memory
fld f3, 0(x2) # load 0x9f8da225ff50e985 from memory into f3
fsgnj.d f31, f5, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x6, 0x782512bed11cf6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fa6eb005b84526b # load x3 with value 0x5fa6eb005b84526b
sd x3, 0(x2) # store 0x5fa6eb005b84526b in memory
fld f29, 0(x2) # load 0x5fa6eb005b84526b from memory into f29
li x3, 0x9231708c12601982 # load x3 with value 0x9231708c12601982
sd x3, 0(x2) # store 0x9231708c12601982 in memory
fld f4, 0(x2) # load 0x9231708c12601982 from memory into f4
fsgnj.d f6, f29, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x14, 0x136518e7ec8d8014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3acd1513a282364 # load x3 with value 0xf3acd1513a282364
sd x3, 0(x2) # store 0xf3acd1513a282364 in memory
fld f1, 0(x2) # load 0xf3acd1513a282364 from memory into f1
li x3, 0xf4b0fedccbae0ab0 # load x3 with value 0xf4b0fedccbae0ab0
sd x3, 0(x2) # store 0xf4b0fedccbae0ab0 in memory
fld f5, 0(x2) # load 0xf4b0fedccbae0ab0 from memory into f5
fsgnj.d f14, f1, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x11, 0xb0ae4c0ef1f4f8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97bedf8784a2d953 # load x3 with value 0x97bedf8784a2d953
sd x3, 0(x2) # store 0x97bedf8784a2d953 in memory
fld f22, 0(x2) # load 0x97bedf8784a2d953 from memory into f22
li x3, 0xac9665cea15df68c # load x3 with value 0xac9665cea15df68c
sd x3, 0(x2) # store 0xac9665cea15df68c in memory
fld f6, 0(x2) # load 0xac9665cea15df68c from memory into f6
fsgnj.d f11, f22, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x13, 0xa2a3831d3fd4998a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa375abf2daac4e96 # load x3 with value 0xa375abf2daac4e96
sd x3, 0(x2) # store 0xa375abf2daac4e96 in memory
fld f29, 0(x2) # load 0xa375abf2daac4e96 from memory into f29
li x3, 0xd6bffade18601a58 # load x3 with value 0xd6bffade18601a58
sd x3, 0(x2) # store 0xd6bffade18601a58 in memory
fld f7, 0(x2) # load 0xd6bffade18601a58 from memory into f7
fsgnj.d f13, f29, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0xc830e2d97de70948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a8f23be415e41de # load x3 with value 0x4a8f23be415e41de
sd x3, 0(x2) # store 0x4a8f23be415e41de in memory
fld f20, 0(x2) # load 0x4a8f23be415e41de from memory into f20
li x3, 0xa12ace9ecc81ba36 # load x3 with value 0xa12ace9ecc81ba36
sd x3, 0(x2) # store 0xa12ace9ecc81ba36 in memory
fld f8, 0(x2) # load 0xa12ace9ecc81ba36 from memory into f8
fsgnj.d f7, f20, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x28, 0x54ff417ccd7bc6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd225d771666ba910 # load x3 with value 0xd225d771666ba910
sd x3, 0(x2) # store 0xd225d771666ba910 in memory
fld f7, 0(x2) # load 0xd225d771666ba910 from memory into f7
li x3, 0x936c8ca343621cea # load x3 with value 0x936c8ca343621cea
sd x3, 0(x2) # store 0x936c8ca343621cea in memory
fld f9, 0(x2) # load 0x936c8ca343621cea from memory into f9
fsgnj.d f28, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x29, 0x3bd803f700fe716a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60e1bf50cbe57476 # load x3 with value 0x60e1bf50cbe57476
sd x3, 0(x2) # store 0x60e1bf50cbe57476 in memory
fld f21, 0(x2) # load 0x60e1bf50cbe57476 from memory into f21
li x3, 0x6b040c6f2906c092 # load x3 with value 0x6b040c6f2906c092
sd x3, 0(x2) # store 0x6b040c6f2906c092 in memory
fld f10, 0(x2) # load 0x6b040c6f2906c092 from memory into f10
fsgnj.d f29, f21, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0x002d8a6e0ac48826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1baca073ba0503e5 # load x3 with value 0x1baca073ba0503e5
sd x3, 0(x2) # store 0x1baca073ba0503e5 in memory
fld f26, 0(x2) # load 0x1baca073ba0503e5 from memory into f26
li x3, 0xcfd239c072baaca1 # load x3 with value 0xcfd239c072baaca1
sd x3, 0(x2) # store 0xcfd239c072baaca1 in memory
fld f11, 0(x2) # load 0xcfd239c072baaca1 from memory into f11
fsgnj.d f4, f26, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x28, 0x1a186f860b715eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06f646212b5a017e # load x3 with value 0x06f646212b5a017e
sd x3, 0(x2) # store 0x06f646212b5a017e in memory
fld f11, 0(x2) # load 0x06f646212b5a017e from memory into f11
li x3, 0xac913c99f8cf6b79 # load x3 with value 0xac913c99f8cf6b79
sd x3, 0(x2) # store 0xac913c99f8cf6b79 in memory
fld f12, 0(x2) # load 0xac913c99f8cf6b79 from memory into f12
fsgnj.d f28, f11, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x29, 0x48b5c7bb41411069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b91f6c24f7ce122 # load x3 with value 0x6b91f6c24f7ce122
sd x3, 0(x2) # store 0x6b91f6c24f7ce122 in memory
fld f12, 0(x2) # load 0x6b91f6c24f7ce122 from memory into f12
li x3, 0x292eb51a12e66091 # load x3 with value 0x292eb51a12e66091
sd x3, 0(x2) # store 0x292eb51a12e66091 in memory
fld f13, 0(x2) # load 0x292eb51a12e66091 from memory into f13
fsgnj.d f29, f12, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x30, 0x55b1e1893bd67fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cb9c12994046a67 # load x3 with value 0x9cb9c12994046a67
sd x3, 0(x2) # store 0x9cb9c12994046a67 in memory
fld f4, 0(x2) # load 0x9cb9c12994046a67 from memory into f4
li x3, 0xf28f0f959e3c3f54 # load x3 with value 0xf28f0f959e3c3f54
sd x3, 0(x2) # store 0xf28f0f959e3c3f54 in memory
fld f14, 0(x2) # load 0xf28f0f959e3c3f54 from memory into f14
fsgnj.d f30, f4, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x5, 0xd4ccc92b2f771ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b5818bed5809785 # load x3 with value 0x3b5818bed5809785
sd x3, 0(x2) # store 0x3b5818bed5809785 in memory
fld f3, 0(x2) # load 0x3b5818bed5809785 from memory into f3
li x3, 0x81c1bfc727ca0c61 # load x3 with value 0x81c1bfc727ca0c61
sd x3, 0(x2) # store 0x81c1bfc727ca0c61 in memory
fld f15, 0(x2) # load 0x81c1bfc727ca0c61 from memory into f15
fsgnj.d f5, f3, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x17, 0x5289464b860a4297 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05d2d45d6b6f2912 # load x3 with value 0x05d2d45d6b6f2912
sd x3, 0(x2) # store 0x05d2d45d6b6f2912 in memory
fld f1, 0(x2) # load 0x05d2d45d6b6f2912 from memory into f1
li x3, 0x7bb9257ae756cf77 # load x3 with value 0x7bb9257ae756cf77
sd x3, 0(x2) # store 0x7bb9257ae756cf77 in memory
fld f16, 0(x2) # load 0x7bb9257ae756cf77 from memory into f16
fsgnj.d f17, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x7, 0x19dbdf37161f189d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadcba986cbf34ec0 # load x3 with value 0xadcba986cbf34ec0
sd x3, 0(x2) # store 0xadcba986cbf34ec0 in memory
fld f5, 0(x2) # load 0xadcba986cbf34ec0 from memory into f5
li x3, 0x98c737062ac11f61 # load x3 with value 0x98c737062ac11f61
sd x3, 0(x2) # store 0x98c737062ac11f61 in memory
fld f17, 0(x2) # load 0x98c737062ac11f61 from memory into f17
fsgnj.d f7, f5, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x28, 0xb11aa35ade462ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc90b67963eed28cf # load x3 with value 0xc90b67963eed28cf
sd x3, 0(x2) # store 0xc90b67963eed28cf in memory
fld f5, 0(x2) # load 0xc90b67963eed28cf from memory into f5
li x3, 0x9bcfeb6c19cf5a8a # load x3 with value 0x9bcfeb6c19cf5a8a
sd x3, 0(x2) # store 0x9bcfeb6c19cf5a8a in memory
fld f18, 0(x2) # load 0x9bcfeb6c19cf5a8a from memory into f18
fsgnj.d f28, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x26, 0xd296e1bb22eef594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fa51da3940dfd41 # load x3 with value 0x8fa51da3940dfd41
sd x3, 0(x2) # store 0x8fa51da3940dfd41 in memory
fld f10, 0(x2) # load 0x8fa51da3940dfd41 from memory into f10
li x3, 0x7f283898aebd5492 # load x3 with value 0x7f283898aebd5492
sd x3, 0(x2) # store 0x7f283898aebd5492 in memory
fld f19, 0(x2) # load 0x7f283898aebd5492 from memory into f19
fsgnj.d f26, f10, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x26, 0x42818eca8447ec77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe948fdc31a813544 # load x3 with value 0xe948fdc31a813544
sd x3, 0(x2) # store 0xe948fdc31a813544 in memory
fld f8, 0(x2) # load 0xe948fdc31a813544 from memory into f8
li x3, 0xe31b1d84dd34fd54 # load x3 with value 0xe31b1d84dd34fd54
sd x3, 0(x2) # store 0xe31b1d84dd34fd54 in memory
fld f20, 0(x2) # load 0xe31b1d84dd34fd54 from memory into f20
fsgnj.d f26, f8, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x20, 0x3c0efe2e0b827260 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9182a2ffc2341935 # load x3 with value 0x9182a2ffc2341935
sd x3, 0(x2) # store 0x9182a2ffc2341935 in memory
fld f9, 0(x2) # load 0x9182a2ffc2341935 from memory into f9
li x3, 0x15b6ccc2aa4fefb4 # load x3 with value 0x15b6ccc2aa4fefb4
sd x3, 0(x2) # store 0x15b6ccc2aa4fefb4 in memory
fld f21, 0(x2) # load 0x15b6ccc2aa4fefb4 from memory into f21
fsgnj.d f20, f9, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x26, 0x6f73e458aff9b01e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd798b87ea509481 # load x3 with value 0xfd798b87ea509481
sd x3, 0(x2) # store 0xfd798b87ea509481 in memory
fld f1, 0(x2) # load 0xfd798b87ea509481 from memory into f1
li x3, 0xf1e9a3a7e1684521 # load x3 with value 0xf1e9a3a7e1684521
sd x3, 0(x2) # store 0xf1e9a3a7e1684521 in memory
fld f22, 0(x2) # load 0xf1e9a3a7e1684521 from memory into f22
fsgnj.d f26, f1, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x12, 0x977694506825e4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2058fe14d202ee9 # load x3 with value 0xe2058fe14d202ee9
sd x3, 0(x2) # store 0xe2058fe14d202ee9 in memory
fld f14, 0(x2) # load 0xe2058fe14d202ee9 from memory into f14
li x3, 0xb36b73b24b723877 # load x3 with value 0xb36b73b24b723877
sd x3, 0(x2) # store 0xb36b73b24b723877 in memory
fld f23, 0(x2) # load 0xb36b73b24b723877 from memory into f23
fsgnj.d f12, f14, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x28, 0x97e9275b86da2bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c5fab0be2fca15b # load x3 with value 0x8c5fab0be2fca15b
sd x3, 0(x2) # store 0x8c5fab0be2fca15b in memory
fld f2, 0(x2) # load 0x8c5fab0be2fca15b from memory into f2
li x3, 0x90304cd7d10088f4 # load x3 with value 0x90304cd7d10088f4
sd x3, 0(x2) # store 0x90304cd7d10088f4 in memory
fld f24, 0(x2) # load 0x90304cd7d10088f4 from memory into f24
fsgnj.d f28, f2, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x30, 0x396aa4ae75b7d292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a999c0ca6bb11b9 # load x3 with value 0x3a999c0ca6bb11b9
sd x3, 0(x2) # store 0x3a999c0ca6bb11b9 in memory
fld f6, 0(x2) # load 0x3a999c0ca6bb11b9 from memory into f6
li x3, 0x305d87d03190bc04 # load x3 with value 0x305d87d03190bc04
sd x3, 0(x2) # store 0x305d87d03190bc04 in memory
fld f25, 0(x2) # load 0x305d87d03190bc04 from memory into f25
fsgnj.d f30, f6, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x2, 0x6f60371703c1c81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d39f4d4a148d897 # load x3 with value 0x1d39f4d4a148d897
sd x3, 0(x2) # store 0x1d39f4d4a148d897 in memory
fld f22, 0(x2) # load 0x1d39f4d4a148d897 from memory into f22
li x3, 0xd67ba0bcd217a4e5 # load x3 with value 0xd67ba0bcd217a4e5
sd x3, 0(x2) # store 0xd67ba0bcd217a4e5 in memory
fld f26, 0(x2) # load 0xd67ba0bcd217a4e5 from memory into f26
fsgnj.d f2, f22, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x10, 0x4a518f54bd4ea711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3f89d41a9cb9791 # load x3 with value 0xf3f89d41a9cb9791
sd x3, 0(x2) # store 0xf3f89d41a9cb9791 in memory
fld f18, 0(x2) # load 0xf3f89d41a9cb9791 from memory into f18
li x3, 0x0940e2fa22b2ee70 # load x3 with value 0x0940e2fa22b2ee70
sd x3, 0(x2) # store 0x0940e2fa22b2ee70 in memory
fld f27, 0(x2) # load 0x0940e2fa22b2ee70 from memory into f27
fsgnj.d f10, f18, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x19, 0x7547b7178811e50b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84761b22b793343c # load x3 with value 0x84761b22b793343c
sd x3, 0(x2) # store 0x84761b22b793343c in memory
fld f30, 0(x2) # load 0x84761b22b793343c from memory into f30
li x3, 0xa40f6b8ce60b2700 # load x3 with value 0xa40f6b8ce60b2700
sd x3, 0(x2) # store 0xa40f6b8ce60b2700 in memory
fld f28, 0(x2) # load 0xa40f6b8ce60b2700 from memory into f28
fsgnj.d f19, f30, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x18, 0x53520a1e165da181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacb8a3a06afd2372 # load x3 with value 0xacb8a3a06afd2372
sd x3, 0(x2) # store 0xacb8a3a06afd2372 in memory
fld f30, 0(x2) # load 0xacb8a3a06afd2372 from memory into f30
li x3, 0xf014135cbf08f604 # load x3 with value 0xf014135cbf08f604
sd x3, 0(x2) # store 0xf014135cbf08f604 in memory
fld f29, 0(x2) # load 0xf014135cbf08f604 from memory into f29
fsgnj.d f18, f30, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x16, 0x9437c13155e759aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb381a6e0cd1590c # load x3 with value 0xeb381a6e0cd1590c
sd x3, 0(x2) # store 0xeb381a6e0cd1590c in memory
fld f17, 0(x2) # load 0xeb381a6e0cd1590c from memory into f17
li x3, 0xad2a47d13adc5f10 # load x3 with value 0xad2a47d13adc5f10
sd x3, 0(x2) # store 0xad2a47d13adc5f10 in memory
fld f30, 0(x2) # load 0xad2a47d13adc5f10 from memory into f30
fsgnj.d f16, f17, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x26, 0xfcb3b90a3eb17bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43b6f467e279646b # load x3 with value 0x43b6f467e279646b
sd x3, 0(x2) # store 0x43b6f467e279646b in memory
fld f12, 0(x2) # load 0x43b6f467e279646b from memory into f12
li x3, 0x3a58d5c6edcbd942 # load x3 with value 0x3a58d5c6edcbd942
sd x3, 0(x2) # store 0x3a58d5c6edcbd942 in memory
fld f31, 0(x2) # load 0x3a58d5c6edcbd942 from memory into f31
fsgnj.d f26, f12, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
